/*
 * PWM_config.h
 *
 *  Created on: 28.08.2018
 *      Author: Gaizi
 */


#ifndef PWM_CONFIG_H
#define PWM_CONFIG_H

//#include "IfxGtm_Cmu.h"
#include "IfxGtm_Tom_Pwm.h"
//#include "IfxGtm_Tom_PwmHl.h"
#include "IfxGtm_Tom_Timer.h"
//#include "IfxGtm_PinMap.h"
#include "Config_PWM.h"
#include <_Impl/IfxSrc_cfg.h>



void ClockConfig();


void PWM_init(IfxGtm_Tom_ToutMap Output, IfxGtm_Tom_Timer *Timer, float32 frequency);
void PWM_setDuty(IfxGtm_Tom_Timer Timer, uint8 DutyCycle);

typedef struct
{
    IfxGtm_Tom_Timer PWM1_Bridge;
    IfxGtm_Tom_Timer PWM2_Bridge;
    IfxGtm_Tom_Timer PWM1_Servo;
    IfxGtm_Tom_Timer PWM2_Servo;
    IfxGtm_Tom_Timer Beeper;
}PWM_Timers;

#endif /*PWM_CONFIG_H*/
