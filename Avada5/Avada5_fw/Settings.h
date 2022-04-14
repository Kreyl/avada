/*
 * Settings.h
 *
 *  Created on: 11 апр. 2022 г.
 *      Author: layst
 */

#pragma once

#include <inttypes.h>
#include "shell.h"
#include "kl_fs_utils.h"

#define SETTINGS_FILENAME   "Settings.ini"

class ValueU32_t {
public:
    uint32_t Value;
    const uint32_t Min, Max;
    const char *Name, *Section;
    ValueU32_t(const char* AName, const char* ASection, uint32_t AMin, uint32_t AMax, uint32_t AValue) :
        Value(AValue), Min(AMin), Max(AMax), Name(AName), Section(ASection) {}
    void CheckAndCorrect() {
        if(Value > Max) Value = Max;
        else if(Value < Min) Value = Min;
    }
    void Print() { Printf("%S = %u\r", Name, Value); }
};

class Settings_t {
private:
    uint8_t LoadValue(ValueU32_t &val) {
        if(ini::Read<uint32_t>(SETTINGS_FILENAME, val.Section, val.Name, &val.Value) == retvOk) {
            val.CheckAndCorrect();
            val.Print();
        }
        else {
            Printf("%S read fail\r", val.Name);
            return retvFail;
        }
        return retvOk;
    }
public:
    ValueU32_t FlashDuration_ms    {"FlashDuration",       "Common", 27, 999, 207};
    ValueU32_t SoundVolumeCharging {"SoundVolumeCharging", "Common",  0, 100,  12};
    ValueU32_t SoundVolumeReady    {"SoundVolumeReady",    "Common",  0, 100,  18};
    // Mode after fire: 0 is restart, 1 is ready
    ValueU32_t ModeAfterFire{"ModeAfterFire", "Common", 0, 1, 0};
    // Delays in seconds
    struct {
        ValueU32_t Start2Ready   {"Start2Ready",   "Delay", 0, 9, 4};
        ValueU32_t Ready2Press   {"Ready2Press",   "Delay", 0, 9, 0};
        ValueU32_t BeforeFlash   {"BeforeFlash",   "Delay", 0, 9, 0};
        ValueU32_t OffIfNotFired {"OffIfNotFired", "Delay", 0, 9, 0};
        ValueU32_t BeforeRestart {"BeforeRestart", "Delay", 0, 9, 0};
    } Delay;

    uint8_t Load() {
        uint8_t rslt = retvOk;
        if(LoadValue(FlashDuration_ms) != retvOk) rslt = retvFail;
        if(LoadValue(SoundVolumeCharging) != retvOk) rslt = retvFail;
        if(LoadValue(SoundVolumeReady) != retvOk) rslt = retvFail;
        if(LoadValue(ModeAfterFire) != retvOk) rslt = retvFail;
        if(LoadValue(Delay.Start2Ready) != retvOk) rslt = retvFail;
        if(LoadValue(Delay.Ready2Press) != retvOk) rslt = retvFail;
        if(LoadValue(Delay.BeforeFlash) != retvOk) rslt = retvFail;
        if(LoadValue(Delay.OffIfNotFired) != retvOk) rslt = retvFail;
        if(LoadValue(Delay.BeforeRestart) != retvOk) rslt = retvFail;

        return rslt;
    }
};

extern Settings_t Settings;
