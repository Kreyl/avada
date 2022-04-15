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
    uint8_t Load() {
        if(ini::Read<uint32_t>(SETTINGS_FILENAME, Section, Name, &Value) == retvOk) {
            CheckAndCorrect();
//            Print();
        }
        else {
            Printf("%S %S read fail\r", Section, Name);
            return retvFail;
        }
        return retvOk;
    }
};

class Settings_t {
private:

public:
    ValueU32_t FlashDuration_ms    {"FlashDuration",       "Common", 27, 999, 207};
    // Mode after fire: 0 is restart, 1 is ready
    ValueU32_t ModeAfterFire{"ModeAfterFire", "Common", 0, 1, 0};
    // Sound Volumes
    struct {
        ValueU32_t Charging      {"Charging",      "Volume",  0, 100,  12};
        ValueU32_t Ready         {"Ready",         "Volume",  0, 100,  18};
        ValueU32_t WaitingBtn    {"WaitingBtn",    "Volume",  0, 100,  27};
        ValueU32_t BeforeFlash   {"BeforeFlash",   "Volume",  0, 100,  36};
        ValueU32_t BeforeRestart {"BeforeRestart", "Volume",  0, 100,  9};
    } Volume;
    // Delays in seconds
    struct {
        ValueU32_t Start2Ready   {"Charging",      "Delay", 0, 9, 4};
        ValueU32_t Ready2Press   {"Ready2Press",   "Delay", 0, 9, 0};
        ValueU32_t BeforeFlash   {"BeforeFlash",   "Delay", 0, 9, 0};
        ValueU32_t OffIfNotFired {"OffIfNotFired", "Delay", 0, 9, 0};
        ValueU32_t BeforeRestart {"BeforeRestart", "Delay", 0, 9, 0};
    } Delay;

    uint8_t Load() {
        uint8_t rslt = retvOk;
        if(FlashDuration_ms.Load()!= retvOk) rslt = retvFail;
        if(ModeAfterFire.Load()!= retvOk) rslt = retvFail;

        if(Volume.Charging.Load()!= retvOk) rslt = retvFail;
        if(Volume.Ready.Load()!= retvOk) rslt = retvFail;
        if(Volume.WaitingBtn.Load()!= retvOk) rslt = retvFail;
        if(Volume.BeforeFlash.Load()!= retvOk) rslt = retvFail;
        if(Volume.BeforeRestart.Load()!= retvOk) rslt = retvFail;

        if(Delay.Start2Ready.Load()!= retvOk) rslt = retvFail;
        if(Delay.Ready2Press.Load()!= retvOk) rslt = retvFail;
        if(Delay.BeforeFlash.Load()!= retvOk) rslt = retvFail;
        if(Delay.OffIfNotFired.Load()!= retvOk) rslt = retvFail;
        if(Delay.BeforeRestart.Load()!= retvOk) rslt = retvFail;

        return rslt;
    }
};

extern Settings_t Settings;
