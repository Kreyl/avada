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

namespace GreenFlash {
    void Init();
    void OnDelayEnd();
    void OnBtnPress();
    void OnFlashEnd();
    void AdjustCurrent(uint32_t ILed);
}
