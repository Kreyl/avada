/*
 * GreenFlash.cpp
 *
 *  Created on: 12 апр. 2022 г.
 *      Author: layst
 */

#include "GreenFlash.h"
#include "Settings.h"
#include "buzzer.h"
#include "kl_lib.h"
#include "adcF072.h"
#include "shell.h"

GreenFlash_t GreenFlash;

void FlashCallback(virtual_timer_t *vtp, void *p) { GreenFlash.Stop(); }

void GreenFlash_t::Init() {
    State = staOff;
    PinSetupAnalog(GREEN_LED);
    // Init DAC
    rccEnableDAC1(FALSE);
    DAC->CR = DAC_CR_EN1;
    DAC->DHR12R1 = 0;
}

void GreenFlash_t::Restart() {
    State = staCharging;
    Buzzer.BuzzUp();
}

void GreenFlash_t::OnBtnPress() {

}

void GreenFlash_t::Fire() {
    IMax=0;
    DacValue = LED_DAC_START;
    Adc.StartPeriodicMeasurement(2000);
    SetDac(DacValue);
    IsOn = true;
    Buzzer.Off();
    chVTSet(&ITmr, TIME_MS2I(Settings.FlashDuration_ms.Value), FlashCallback, nullptr);
}

void GreenFlash_t::Stop() {
    IsOn = false;
    SetDac(0);
    Adc.Stop();
    PrintfI("IMax: %u\r", IMax);
}


bool GreenFlash_t::IsReady() { return Buzzer.IsOnTop(); }

void GreenFlash_t::AdjustCurrent(uint32_t ILed) {
    if(IsOn) {
        if(ILed > ILED_TARGET_mA and DacValue >= DAC_ADJ_STEP) DacValue -= DAC_ADJ_STEP;
        else if(DacValue < (4095U - DAC_ADJ_STEP)) DacValue += DAC_ADJ_STEP;
        SetDac(DacValue);
        if(ILed > IMax) IMax = ILed;
//            PrintfI("%u %u\r", ILed, DacValue);
    }
}
