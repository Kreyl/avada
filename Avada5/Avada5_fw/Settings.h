/*
 * Settings.h
 *
 *  Created on: 11 апр. 2022 г.
 *      Author: layst
 */

#pragma once

#include <inttypes.h>

class ValueU32_t {
public:
    uint32_t Value;
    const uint32_t Min, Max;
    const char* Name;
    ValueU32_t(const char* AName, uint32_t AMin, uint32_t AMax, uint32_t AValue) :
        Value(AValue), Min(AMin), Max(AMax), Name(AName) {}
//    void Set
};

struct Settings_t {
    ValueU32_t FlashDuration_ms {"FlashDuration_ms", 27, 999, 207};
    ValueU32_t SoundVolumeStart {"SoundVolumeStart",  0, 100,  12};
    ValueU32_t SoundVolumeReady {"SoundVolumeReady",  0, 100,  18};
    // Mode after fire: 0 is restart, 1 is ready
    ValueU32_t ModeAfterFire{"ModeAfterFire", 0, 1, 0};
    // Delays in seconds
    struct {
        ValueU32_t Start2Ready   {"Start2Ready",   0, 9, 4};
        ValueU32_t Ready2Press   {"Ready2Press",   0, 9, 0};
        ValueU32_t Press2Fire    {"Press2Fire",    0, 9, 0};
        ValueU32_t OffIfNotFired {"OffIfNotFired", 0, 9, 0};
        ValueU32_t AfterFire     {"AfterFire",     0, 9, 0};
    } Delay;
};

extern Settings_t Settings;
