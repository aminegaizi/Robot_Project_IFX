/*
 * PWM_config.h
 *
 *  Created on: 28.08.2018
 *      Author: Gaizi
 */

//#include "IfxGtm_Cmu.h"
#include "IfxGtm_Tom_Pwm.h"
//#include "IfxGtm_Tom_PwmHl.h"
#include "IfxGtm_Tom_Timer.h"
//#include "IfxGtm_PinMap.h"

#include <_Impl/IfxSrc_cfg.h>
#include "Config_PWM.h"

void ClockConfig();

void PWM_init(IfxGtm_Tom_ToutMap Output, IfxGtm_Tom_Timer *Timer, float32 frequency);
void PWM_setDuty(IfxGtm_Tom_Timer Timer, uint8 DutyCycle);


