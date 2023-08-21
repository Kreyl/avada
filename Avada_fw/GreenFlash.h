/*
 * GreenFlash.h
 *
 *  Created on: 12 апр. 2022 г.
 *      Author: layst
 */

#pragma once

#include "ch.h"

//#define LED_DAC_START   1800U

namespace GreenFlash {
    void Init();
    void OnDelayEnd();
    void OnBtnPress();
    void OnFlashEnd();
}
