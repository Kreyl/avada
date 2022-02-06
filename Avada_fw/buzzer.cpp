/*
 * buzzer.cpp
 *
 *  Created on: 25 џэт. 2014 у.
 *      Author: Kreyl
 */

#include "buzzer.h"
#include "board.h"

Buzz_t Buzzer(BUZZER_PIN);

void BuzzTmrCallback(void *p) {
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
        chVTSetI(&ITmr, MS2ST(BUZZ_DELAY_MS), (vtfunc_t)&BuzzTmrCallback, nullptr);
    }
}

void Buzz_t::BuzzUp() {
    IPeriod = PERIOD_MAX;
    IChnl.SetTopValue(IPeriod);
    IChnl.Set(VOLUME_NORMAL);
    chVTSet(&ITmr, MS2ST(BUZZ_DELAY_MS), (vtfunc_t)&BuzzTmrCallback, nullptr);
}

