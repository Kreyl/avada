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
    const uint32_t Default, Min, Max;
    const char *const Name, *const Section;

    void SetToDefault() { Value = Default; }

    ValueU32_t(const char* AName, const char* ASection, uint32_t AMin, uint32_t AMax, uint32_t ADefault) :
        Value(ADefault), Default(ADefault), Min(AMin), Max(AMax), Name(AName), Section(ASection) {}

    operator uint32_t() const { return Value; }

    uint8_t CheckAndSetIfOk(uint32_t AValue) {
        if(AValue < Min or AValue > (Max + 1)) return retvBadValue;
        Value = AValue;
        return retvOk;
    }

    uint8_t Load() {
        uint32_t NewValue;
        if(ini::ReadUint32(&CommonFile, Section, Name, &NewValue) == retvOk)
            return CheckAndSetIfOk(NewValue);
        else {
            Printf("%S %S read fail\r", Section, Name);
            return retvFail;
        }
    }

    void Print() {
        Printf("%*S %*S = %3u; Min = %3u; Max = %3u; Default = %3u\r\n",
            14, Section, 13, Name, Value, Min, Max, Default);
    }
};

#define V_NAME(name)    # name
#define XVNAME(name)    V_NAME(name)

#define VALUE(name, section_name, min, max, defval) \
        ValueU32_t name {XVNAME(name), XVNAME(section_name), min, max, defval}

#define STATE(Name, DurDef, VolumeDef) \
    struct { \
        VALUE(Duration, Name, 0,   9, DurDef); \
        VALUE(Volume,   Name, 0, 100, VolumeDef); \
    } Name

// Delays in seconds
class Settings_t {
public:
    VALUE(FlashDurtn_ms, Common, 27, 999, 153);
    VALUE(SleepTimeout,  Common, 0, 999999, 0);
    // States: Name, DurDef, VolumeDef
    STATE(Charging,       4, 12);
    STATE(IgnoringBtn,    0, 18);
    STATE(WaitingBtn,     0, 27);
    STATE(WaitingFlash,   0, 45);
    STATE(WaitingRestart, 0,  9);

    uint8_t Load() {
        if(ini::OpenFile(SETTINGS_FILENAME, &CommonFile) != retvOk) return retvFail;
        uint8_t rslt = retvOk;
        ValueU32_t *Arr = (ValueU32_t*)this;
        uint32_t Cnt = (sizeof(Settings_t) / sizeof(ValueU32_t));
        for(uint32_t i=0; i<Cnt; i++, Arr++) {
            if(Arr->Load()!= retvOk) {
                rslt = retvFail;
                break;
            }
        }
        ini::CloseFile(&CommonFile);
        return rslt;
    }

    void SetAllToDefault() {
        ValueU32_t *Arr = (ValueU32_t*)this;
        uint32_t Cnt = (sizeof(Settings_t) / sizeof(ValueU32_t));
        for(uint32_t i=0; i<Cnt; i++) Arr[i].Value = Arr[i].Default;
    }

    void Print() {
        ValueU32_t *Arr = (ValueU32_t*)this;
        uint32_t Cnt = (sizeof(Settings_t) / sizeof(ValueU32_t));
        for(uint32_t i=0; i<Cnt; i++, Arr++) Arr->Print();
    }
};

extern Settings_t Settings;
