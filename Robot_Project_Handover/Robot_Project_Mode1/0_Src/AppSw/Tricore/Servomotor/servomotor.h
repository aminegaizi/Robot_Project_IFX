/*
 * servomotor.h
 *
 *  Created on: 18.10.2018
 *      Author: Bourgogn
 */
//
//#ifndef 0_SRC_APPSW_TRICORE_SERVOMOTOR_SERVOMOTOR_H_
//#define 0_SRC_APPSW_TRICORE_SERVOMOTOR_SERVOMOTOR_H_
//
//
//
//
//
//#endif /* 0_SRC_APPSW_TRICORE_SERVOMOTOR_SERVOMOTOR_H_ */

#include <Port/Io/IfxPort_Io.h>
#include <_PinMap/IfxPort_pinMap.h>
#include "PWM_config.h"
#include "IfxPort.h"
#include "Config_ISR.h"
#include <Stm/Std/IfxStm.h>

#define DUTY_MIN 3.5
#define DUTY_MAX 13.25
#define STEP 0.125



void config_servomotor(void);




//void move_servo(float duty_position);
void move_servo(unsigned char angle);




void sweep_servo_config(void);




void sweep_servo(void);




void timer_compare_config(void);




void STM_INTERRUPT_SERVO(void);
