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

LedBlinker_t InfoLed{INFO_LED};
FATFS FlashFS;
bool UsbIsConnected = false;
bool IsCharging = false;
Settings_t Settings;
#endif

#if 1 // ==== ADC ====
void OnAdcDoneI() {
    AdcBuf_t &FBuf = Adc.GetBuf();
    // Calculate averaged value
    uint32_t N = FBuf.size() / 2; // As 2 channels used
    uint32_t VRef=0, VRAdc=0;
    uint16_t *p = FBuf.data();
    for(uint32_t i=0; i<N; i++) {
        VRef += *p++;
        VRAdc += *p++;
    }
    VRef = VRef >> 4;
    VRAdc = VRAdc >> 4;
    // Calc current
    uint32_t ILed = (((10 * ADC_VREFINT_CAL_mV * (uint32_t)ADC_VREFINT_CAL) / ADC_MAX_VALUE) * VRAdc) / VRef;
    GreenFlash::AdjustCurrent(ILed);
}

const AdcSetup_t AdcSetup = {
        .SampleTime = ast55d5Cycles,
        .Oversampling = AdcSetup_t::oversmp8,
        .DoneCallback = OnAdcDoneI,
        .Channels = {
                {LED_CURR_PIN},
                {nullptr, 0, ADC_VREFINT_CHNL}
        }
};
#endif

int main(void) {
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

    InfoLed.Init();

    // Init filesystem
    if(f_mount(&FlashFS, "", 0) == FR_OK) {
        if(Settings.Load() == retvOk) InfoLed.StartOrRestart(lbsqOk);
        else InfoLed.StartOrRestart(lbsqBlink3);
    }
    else Printf("FS error\r");

    Buzzer.Init();
    Adc.Init();
    GreenFlash::Init();

    UsbMsd.Init();
    SimpleSensors::Init();

    // Main cycle
    ITask();
}

__noreturn
void ITask() {
    while(true) {
        EvtMsg_t Msg = EvtQMain.Fetch(TIME_INFINITE);
//        Printf("%u\r", Msg.ID);
        switch(Msg.ID) {
            case evtIdShellCmdRcvd:
                while(((CmdUart_t*)Msg.Ptr)->TryParseRxBuff() == retvOk) OnCmd((Shell_t*)((CmdUart_t*)Msg.Ptr));
                break;

            case evtIdButtons:  GreenFlash::OnBtnPress(); break;
            case evtIdDelayEnd: GreenFlash::OnDelayEnd(); break;
            case evtIdFlashEnd: GreenFlash::OnFlashEnd(); break;

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
                if(Settings.Load() == retvOk) InfoLed.StartOrRestart(lbsqOk);
                else InfoLed.StartOrRestart(lbsqBlink3);
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
    if(*PState == pssLo) {
        InfoLed.StartOrContinue(lbsqCharging);
    }
    else if(*PState == pssRising) { // Charge stopped
        InfoLed.StartOrContinue(lbsqOk);
    }
}

void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
//    Printf("%S\r", PCmd->Name);
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ok();

    else if(PCmd->NameIs("Btn")) {
        EvtQMain.SendNowOrExit(EvtMsg_t(evtIdButtons));
        PShell->Ok();
    }
    else if(PCmd->NameIs("Off")) {
//        GreenFlash.LedOff();
//        Adc.Stop();
        PShell->Ok();
    }

    else PShell->CmdUnknown();
}
