/*
 * buzzer.cpp
 *
 *  Created on: 25 ���. 2014 �.
 *      Author: Kreyl
 */

#include "buzzer.h"
#include "board.h"

Buzz_t Buzzer(BUZZER_PIN);

void BuzzTmrCallback(virtual_timer_t *vtp, void *p) {
    chSysLockFromISR();
    Buzzer.ITmrCallback();
    chSysUnlockFromISR();
}

void Buzz_t::ITmrCallback() {
    if     (IPeriod > 2700) IPeriod -= 18;
    else if(IPeriod > 1800) IPeriod -= 7;
    else if(IPeriod > 1350) IPeriod -= 4;
    else if(IPeriod > 900 ) IPeriod -= 3;
    else if(IPeriod > 603 ) IPeriod -= 2;
    else                    IPeriod -= 1;
    IChnl.SetTopValue(IPeriod);
    if(IPeriod >= PERIOD_MIN) {
        chVTSetI(&ITmr, TIME_MS2I(BUZZ_DELAY_MS), (vtfunc_t)&BuzzTmrCallback, nullptr);
    }
}

void Buzz_t::BuzzUp() {
    IPeriod = PERIOD_MAX;
    IChnl.SetTopValue(IPeriod);
    IChnl.Set(VOLUME_NORMAL);
    chVTSet(&ITmr, TIME_MS2I(BUZZ_DELAY_MS), (vtfunc_t)&BuzzTmrCallback, nullptr);
}

