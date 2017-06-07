/*
 * buzzer.h
 *
 *  Created on: 25 џэт. 2014 у.
 *      Author: Kreyl
 */

#pragma once
#include "kl_lib.h"

// Sound
#define BUZZ_DELAY_MS       5
#define PERIOD_MAX          3600    // Lowest frequency
#define PERIOD_MIN          315     // Highest frequency
// Sound volume
#define VOLUME_NORMAL       15
#define VOLUME_MAX          153

class Buzz_t {
private:
    virtual_timer_t ITmr;
    const PinOutputPWM_t IChnl;
public:
    uint16_t IPeriod;
    void Init() {
        IChnl.Init();
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
