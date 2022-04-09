/*
 * buzzer.h
 *
 *  Created on: 25 ���. 2014 �.
 *      Author: Kreyl
 */

#pragma once
#include "kl_lib.h"

// Sound
#define BUZZ_DELAY_MS       5
#define PERIOD_MAX          3600    // Lowest frequency
#define PERIOD_MIN          405     // Highest frequency
// Sound volume
#define VOLUME_NORMAL       15
#define VOLUME_MAX          153

class Buzz_t {
private:
    virtual_timer_t ITmr;
    const PinOutputPWM_t IChnl;
public:
    Buzz_t(GPIO_TypeDef *PGpio, uint16_t Pin,
            TIM_TypeDef *PTimer, uint32_t TimerChnl,
            Inverted_t Inverted, PinOutMode_t OutputType,
            uint32_t TopValue) :
                IChnl(PGpio, Pin, PTimer, TimerChnl, Inverted, OutputType, TopValue), IPeriod(0) {}
    uint16_t IPeriod;
    void Init() {
        IChnl.Init();
        IChnl.SetTmrClkFreq(4000000); // 4 MHz input freq
        IChnl.Set(0);
    }
    void BuzzUp();
    void SetVolume(uint16_t AVolume) { IChnl.Set(AVolume); }
    void Off() {
        chVTReset(&ITmr);
        IChnl.Set(0);
    }
    bool IsOnTop() { return (IPeriod <= PERIOD_MIN); }
    Buzz_t(const PwmSetup_t APinSetup) : IChnl(APinSetup), IPeriod(0) {}
    // Inner use
    void ITmrCallback();
};

extern Buzz_t Buzzer;
