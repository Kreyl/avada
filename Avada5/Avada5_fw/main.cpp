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
public:
    void LedOn() { DAC->DHR12R1 = LED_DAC_VALUE; }
    void LedOn(uint16_t v) { DAC->DHR12R1 = v; }
    void Fire() {
        LedOn();
        Buzzer.Off();
        chVTSet(&ITmr, TIME_MS2I(FLASH_DURATION), FlashCallback, nullptr);
    }
    void Restart() {
//        Buzzer.BuzzUp();
    }
    bool IsReady() { return Buzzer.IsOnTop(); }
    void LedOff() {
//        PinSetHi(LED_PIN);
        DAC->DHR12R1 = 0;
    }
    void Init() {
        PinSetupAnalog(GREEN_LED);
        // Init DAC
        rccEnableDAC1(FALSE);
        DAC->CR = DAC_CR_EN1;
        DAC->DHR12R1 = 0;
    }
} GreenFlash;

void FlashCallback(void *p) { GreenFlash.LedOff(); }
#endif

void OnAdcDoneI() {
//    PrintfI("CR=0x%X CFGR=0x%X\r", ADC1->CR, ADC1->CFGR1);
    PinToggle(GPIOB, 14);
//    AdcBuf_t &FBuf = Adc.GetBuf();
//    PrintfI("%d %d\r", FBuf[0], FBuf[1]);
}

const AdcSetup_t AdcSetup = {
        .SampleTime = ast55d5Cycles,
//        .SampleTime = ast239d5Cycles,
        .DoneCallback = OnAdcDoneI,
        .Channels = {
                {LED_CURR_PIN},
                {nullptr, 0, ADC_VREFINT_CHNL}
        }
};

int main(void) {
    // ==== Init Clock system ====
//    Clk.SetupBusDividers(ahbDiv2, apbDiv1);
//    if(Clk.EnableHSI48() == retvOk) {
//
//    }
//    Clk.SelectUSBClock_HSI48();
//    Clk.SwitchToHsi48();
//    Clk.SwitchTo(csHSI48);
    Clk.UpdateFreqValues();

    // === Init OS ===
    halInit();
    chSysInit();

//    Clk.SwitchToHsi48();
//    Clk.UpdateFreqValues();

    // ==== Init hardware ====
    EvtQMain.Init();
    Uart.Init();
    Printf("\r%S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
    Clk.PrintFreqs();

    SimpleSensors::Init();
//    InfoLed.Init();
//    InfoLed.StartOrRestart(lbsqBlink3);
    PinSetupOut(GPIOB, 14, omPushPull);

    Buzzer.Init();
    GreenFlash.Init();
    GreenFlash.Restart();

    // Adc
    Adc.Init(AdcSetup);
    Adc.StartPeriodicMeasurement(1000);

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

    else if(PCmd->NameIs("On")) {
        uint16_t v;
        if(PCmd->GetNext<uint16_t>(&v) == retvOk) GreenFlash.LedOn(v);
        PShell->Ok();
    }
    else if(PCmd->NameIs("Off")) {
        GreenFlash.LedOff();
        PShell->Ok();
    }

    else if(PCmd->NameIs("adc")) {
        Printf("  CR=0x%X CFGR=0x%X ISR=0x%X\r", ADC1->CR, ADC1->CFGR1, ADC1->ISR);
    }

    else PShell->CmdUnknown();
}
