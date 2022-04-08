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
//#include "kl_adc.h"

#if 1 // ======================== Variables and defines ========================
// Forever
EvtMsgQ_t<EvtMsg_t, MAIN_EVT_Q_LEN> EvtQMain;
static const UartParams_t CmdUartParams(115200, CMD_UART_PARAMS);
CmdUart_t Uart{CmdUartParams};
void OnCmd(Shell_t *PShell);
void ITask();

LedBlinker_t InfoLed{INFO_LED};
#endif

#if 1 // ==== Flash ====
#define FLASH_DURATION  45
#define LED_DAC_VALUE   1600    // 1A

void FlashCallback(virtual_timer_t *vtp, void *p);

class GreenFlash_t {
private:
    virtual_timer_t ITmr;
    void LedOn() {
//        PinSetLo(LED_PIN);
        DAC->DHR12R1 = LED_DAC_VALUE;
    }
public:
    void Fire() {
        LedOn();
        Buzzer.Off();
        chVTSet(&ITmr, TIME_MS2I(FLASH_DURATION), FlashCallback, nullptr);
    }
    void Restart() { Buzzer.BuzzUp(); }
    bool IsReady() { return Buzzer.IsOnTop(); }
    void LedOff() {
//        PinSetHi(LED_PIN);
        DAC->DHR12R1 = 0;
    }
    void Init() {
//        PinSetupOut(LED_PIN, omOpenDrain);
//        PinSetHi(LED_PIN);
        PinSetupAnalog(LED_PIN);
        // Init DAC
        rccEnableDAC1(FALSE);
        DAC->CR = DAC_CR_EN1;
        DAC->DHR12R1 = 0;
    }
} GreenFlash;

void FlashCallback(void *p) {
    GreenFlash.LedOff();
}
#endif

int main(void) {
    // ==== Init Clock system ====
    Clk.UpdateFreqValues();

    // === Init OS ===
    halInit();
    chSysInit();

    // ==== Init hardware ====
    EvtQMain.Init();
    Uart.Init();
    Printf("\r%S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
    Clk.PrintFreqs();

    SimpleSensors::Init();
    InfoLed.Init();
    InfoLed.StartOrRestart(lbsqBlink3);


    // Adc
//    PinSetupAnalog(LUM_MEAS_PIN);
//    Adc.Init();
//    Adc.EnableVRef();

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

            case evtIdEverySecond:
                break;

//            case evtIdAdcRslt: {
//                CurrentLum = Msg.Value / 10;
//                if(CurrentLum > 99) CurrentLum = 99;
////                Printf("Lum: %u\r", Msg.Value);
//                Interface.DisplayLum(CurrentLum);
//                } break;

            case evtIdButtons:
                Printf("Btn %u\r", Msg.BtnEvtInfo.Type);
                break;

            default: break;
        } // switch
    } // while true
}

void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
//    Printf("%S\r", PCmd->Name);
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ok();

    else PShell->CmdUnknown();
}
