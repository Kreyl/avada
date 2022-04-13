/*
 * GreenFlash.h
 *
 *  Created on: 12 апр. 2022 г.
 *      Author: layst
 */

#pragma once

#include "ch.h"

#define LED_DAC_START   1800U
#define ILED_TARGET_mA  1500U
#define DAC_ADJ_STEP    45U

class GreenFlash_t {
private:
    virtual_timer_t ITmr;
    uint16_t DacValue;
    bool IsOn = false;
    uint32_t IMax;
    enum {staOff, staCharging, staReady, staCooling} State;
    void SetDac(uint16_t v) { DAC->DHR12R1 = v; }
    void Fire();
    bool IsReady();
public:
    void Init();
    void Restart();
    void OnBtnPress();
    void AdjustCurrent(uint32_t ILed);
    void Stop();
};

extern GreenFlash_t GreenFlash;
