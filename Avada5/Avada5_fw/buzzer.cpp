/*
 * buzzer.cpp
 *
 *  Created on: 25-xx-2014
 *  Author: Kreyl
 */

#include "buzzer.h"
#include "board.h"
#include "Settings.h"
#include "MsgQ.h"

Buzz_t Buzzer(BUZZER_PIN);

// Convert delay, s to repeat delay in ms
static const uint32_t DurationTbl[] = {
      // 0 1 2 3 4 5 6 7  8  9
         2,2,3,4,5,6,8,9,10,12
};

void BuzzTmrCallback(virtual_timer_t *vtp, void *p) {
    chSysLockFromISR();
    Buzzer.ITmrCallbackI();
    chSysUnlockFromISR();
}

void Buzz_t::ITmrCallbackI() {
    uint32_t Diff;
    if(IPeriod > 2700) Diff = 18;
    else Diff = 18000UL / (N * 14UL + 1000UL);
    if(Diff < 1) Diff = 1;
    N++;
    IPeriod -= Diff;
    IChnl.SetTopValue(IPeriod);
    if(IPeriod >= PERIOD_MIN) {
        chVTSetI(&ITmr, Delay_st, (vtfunc_t)&BuzzTmrCallback, nullptr);
    }
    // Set volume at end
    else {
        IChnl.Set(Settings.SoundVolumeReady.Value * 2);
        EvtQMain.SendNowOrExitI(EvtMsg_t(evtIdDelayEnd));
    }
}

void Buzz_t::BuzzUp() {
    IPeriod = PERIOD_MAX;
    N=0;
    Delay_st = TIME_MS2I(DurationTbl[Settings.Delay.Start2Ready.Value]);
    IChnl.SetTopValue(IPeriod);
    IChnl.Set(Settings.SoundVolumeCharging.Value * 2);
    chVTSet(&ITmr, Delay_st, (vtfunc_t)&BuzzTmrCallback, nullptr);
}

void Buzz_t::BeReady() {
    chVTReset(&ITmr);
    IChnl.SetTopValue(PERIOD_MIN);
    IChnl.Set(Settings.SoundVolumeReady.Value * 2);
}
