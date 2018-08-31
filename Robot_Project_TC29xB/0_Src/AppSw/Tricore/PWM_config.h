/*
 * PWM_config.h
 *
 *  Created on: 28.08.2018
 *      Author: Gaizi
 */

#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxPort.h"

#include "IfxGtm_Cmu.h"
#include "IfxGtm_Tom_Pwm.h"
#include "IfxGtm_Tom_PwmHl.h"
#include "IfxGtm_Tom_Timer.h"
#include "IfxGtm_PinMap.h"

#include <Src/std/IfxSrc.h>
#include <_Impl/IfxSrc_cfg.h>


void PWM_config(IfxGtm_Tom_ToutMap Output);
void ClockConfig();
