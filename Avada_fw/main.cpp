#include <uart.h>
#include "ch.h"
#include "hal.h"
#include "MsgQ.h"
#include "shell.h"
#include "kl_lib.h"
#include "SimpleSensors.h"
#include "buttons.h"
#include "led.h"
#include "Sequences.h"
#include "buzzer.h"
#include "adcF072.h"
#include "usb_msd.h"
#include "Settings.h"
#include "GreenFlash.h"
#include "kl_fs_utils.h"

#if 1 // ======================== Variables and defines ========================
// Forever
EvtMsgQ_t<EvtMsg_t, MAIN_EVT_Q_LEN> EvtQMain;
static const UartParams_t CmdUartParams(115200, CMD_UART_PARAMS);
CmdUart_t Uart{CmdUartParams};
void OnCmd(Shell_t *PShell);
void ITask();

FATFS FlashFS;
Settings_t Settings;
bool UsbIsConnected = false, IsCharging = false;
LedSmooth_t Lumos(LUMOS_PIN);

// ==== Button ====
void ButtonIrqHandlerI();

class InputIrq_t : public PinIrq_t {
private:
    systime_t IFrontTime = 0;
    const sysinterval_t IDeadtime = 0;
public:
    InputIrq_t(GPIO_TypeDef *APGpio, uint16_t APinN, PinPullUpDown_t APullUpDown,
            const sysinterval_t ADeadtime) :
        PinIrq_t(APGpio, APinN, APullUpDown, ButtonIrqHandlerI), IDeadtime(ADeadtime) {}
    void Init(ExtiTrigType_t ATriggerType) {
        PinIrq_t::Init(ATriggerType);
        CleanIrqFlag();
        EnableIrq(IRQ_PRIO_LOW);
    }
    bool CheckIfProcessI() { return chVTTimeElapsedSinceX(IFrontTime) >= IDeadtime; }
};

InputIrq_t Btn{BTN_PIN, TIME_MS2I(99)};

void ButtonIrqHandlerI() {
    uint32_t Flags = EXTI->PR;
    if(Btn.CheckIfProcessI()) EvtQMain.SendNowOrExitI(EvtMsg_t(evtIdButtons));
}
#endif

void main() {
    // ==== Init Clock system ====
    Clk.EnablePrefetch();
    Clk.UpdateFreqValues();

    // === Init OS ===
    halInit();
    chSysInit();

    // ==== Init hardware ====
    EvtQMain.Init();
    Uart.Init();
    Printf("\r%S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
    Clk.PrintFreqs();

    Lumos.Init();

    // Init filesystem
    if(f_mount(&FlashFS, "", 0) == FR_OK and Settings.Load() == retvOk) Lumos.StartOrRestart(lsqSmoothStart);
    else Lumos.StartOrRestart(lsqBlink3);
    Settings.Print();

    Buzzer.Init();
    GreenFlash::Init();
    Btn.Init(ttRising);

    UsbMsd.Init();
    SimpleSensors::Init();

    // Main cycle
    ITask();
}

__noreturn
void ITask() {
    while(true) {
        EvtMsg_t Msg = EvtQMain.Fetch(TIME_INFINITE);
        switch(Msg.ID) {
            case evtIdShellCmdRcvd:
                while(((CmdUart_t*)Msg.Ptr)->TryParseRxBuff() == retvOk) OnCmd((Shell_t*)((CmdUart_t*)Msg.Ptr));
                break;

            case evtIdButtons:  GreenFlash::OnBtnPress(); break;
            case evtIdDelayEnd: GreenFlash::OnDelayEnd(); break;

#if 1       // ======= USB =======
            case evtIdUsbConnect:
                Printf("USB connect\r");
                // Enable HSI48
                chSysLock();
                Clk.SetupFlashLatency(48000000);
                while(Clk.SwitchTo(csHSI48) != retvOk) {
                    PrintfI("Hsi48 Fail\r");
                    chThdSleepS(TIME_MS2I(207));
                }
                Clk.UpdateFreqValues();
                chSysUnlock();
                Clk.PrintFreqs();
                Clk.SelectUSBClock_HSI48();
                Clk.EnableCRS();
                UsbMsd.Connect();
                break;

            case evtIdUsbDisconnect: {
                UsbMsd.Disconnect();
                chSysLock();
                uint8_t r = Clk.SwitchTo(csHSI);
                Clk.UpdateFreqValues();
                chSysUnlock();
                Clk.PrintFreqs();
                if(r == retvOk) {
                    Clk.DisableCRS();
                    Clk.DisableHSI48();
                    Clk.SetupFlashLatency(8000000);
                }
                else Printf("Hsi Fail\r");
                Printf("USB disconnect\r");
                if(Settings.Load() == retvOk) Lumos.StartOrRestart(lsqSmoothStart);
                else Lumos.StartOrRestart(lsqBlink3);
            } break;

            case evtIdUsbReady:
                Printf("USB ready\r");
                break;
#endif

            default: break;
        } // switch
    } // while true
}

void ProcessUsbDetect(PinSnsState_t *PState, uint32_t Len) {
    if((*PState == pssRising or *PState == pssHi) and !UsbIsConnected) {
        UsbIsConnected = true;
        EvtQMain.SendNowOrExit(EvtMsg_t(evtIdUsbConnect));
    }
    else if((*PState == pssFalling or *PState == pssLo) and UsbIsConnected) {
        UsbIsConnected = false;
        EvtQMain.SendNowOrExit(EvtMsg_t(evtIdUsbDisconnect));
    }
}

void ProcessCharging(PinSnsState_t *PState, uint32_t Len) {
    if(*PState == pssLo and !IsCharging) {
        IsCharging = true;
        Lumos.StartOrRestart(lsqCharging);
    }
    else if(*PState == pssHi and IsCharging) { // Charge stopped
        IsCharging = false;
        if(UsbIsConnected) Lumos.StartOrRestart(lsqChargingDone);
    }
}

void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
//    Printf("%S\r", PCmd->Name);
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ok();
    else if(PCmd->NameIs("Version")) PShell->Print("Version: %S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));

    else if(PCmd->NameIs("Btn")) {
        EvtQMain.SendNowOrExit(EvtMsg_t(evtIdButtons));
        PShell->Ok();
    }
//    else if(PCmd->NameIs("Off")) {
//        GreenFlash.LedOff();
//        PShell->Ok();
//    }

    else PShell->CmdUnknown();
}
