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
#define FLASH_DURATION  207U
#define LED_DAC_START   1800U    // ?? A
#define ILED_TARGET_mA  1500U
#define DAC_ADJ_STEP    45U

void FlashCallback(virtual_timer_t *vtp, void *p);

class GreenFlash_t {
private:
    virtual_timer_t ITmr;
    uint16_t DacValue;
    bool IsOn = false;
    uint32_t IMax;
public:
    void Init() {
        PinSetupAnalog(GREEN_LED);
        // Init DAC
        rccEnableDAC1(FALSE);
        DAC->CR = DAC_CR_EN1;
        DAC->DHR12R1 = 0;
    }

    void SetDac(uint16_t v) { DAC->DHR12R1 = v; }

    void Fire() {
        IMax=0;
        DacValue = LED_DAC_START;
        Adc.StartPeriodicMeasurement(2000);
        SetDac(DacValue);
        IsOn = true;
        Buzzer.Off();
        chVTSet(&ITmr, TIME_MS2I(FLASH_DURATION), FlashCallback, nullptr);
    }

    void Stop() {
        IsOn = false;
        SetDac(0);
        Adc.Stop();
        PrintfI("IMax: %u\r", IMax);
    }

    void Restart() {
        Buzzer.BuzzUp();
    }
    bool IsReady() { return Buzzer.IsOnTop(); }

    void AdjustCurrent(uint32_t ILed) {
        if(IsOn) {
            if(ILed > ILED_TARGET_mA and DacValue >= DAC_ADJ_STEP) DacValue -= DAC_ADJ_STEP;
            else if(DacValue < (4095U - DAC_ADJ_STEP)) DacValue += DAC_ADJ_STEP;
            SetDac(DacValue);
            if(ILed > IMax) IMax = ILed;
//            PrintfI("%u %u %u\r", Cnt++, ILed, DacValue);
        }
    }
} GreenFlash;

void FlashCallback(virtual_timer_t *vtp, void *p) { GreenFlash.Stop(); }
#endif

void OnAdcDoneI() {
//    PrintfI("CR=0x%X CFGR=0x%X\r", ADC1->CR, ADC1->CFGR1);
//    PinToggle(GPIOB, 14);
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
    GreenFlash.AdjustCurrent(ILed);
    PinSetLo(GPIOB, 14);
}

const AdcSetup_t AdcSetup = {
        .SampleTime = ast55d5Cycles,
        .Oversampling = AdcSetup_t::oversmp16,
        .DoneCallback = OnAdcDoneI,
        .Channels = {
                {LED_CURR_PIN},
                {nullptr, 0, ADC_VREFINT_CHNL}
        }
};

int main(void) {
    // ==== Init Clock system ====
//    Clk.SetupBusDividers(ahbDiv2, apbDiv1);
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
    Adc.Init();
//    Adc.StartPeriodicMeasurement(100);

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

            case evtIdButtons:
                Printf("Btn\r");
                if(GreenFlash.IsReady()) {
                    GreenFlash.Fire();
                    GreenFlash.Restart();
                }
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
        GreenFlash.Fire();
        PShell->Ok();
    }
    else if(PCmd->NameIs("Off")) {
//        GreenFlash.LedOff();
//        Adc.Stop();
        PShell->Ok();
    }


    else PShell->CmdUnknown();
}
