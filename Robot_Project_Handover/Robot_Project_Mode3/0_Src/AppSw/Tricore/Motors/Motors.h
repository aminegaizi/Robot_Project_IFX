/*
 * Motors.h
 *
 *  Created on: 19.11.2018
 *      Author: Gaizi
 */

#ifndef MOTORS_H__
#define MOTORS_H__

#include "IfxStm.h"
#include "encoders_config.h"
#include "IfxPort_reg.h"
#include "PWM_config.h"
#include "serial.h"
#include "Enslavement.h"

#define M_PI 3.14159265358979323846 //Value of Pi
#define DIAMETER 6.5 //diameter of a wheel in cm



 void STM_INTERRUPT_CORRECTION();
 void timer_compare(Ifx_Priority PRIORITY, IfxStm_CompareConfig CompareConfig, Ifx_STM *stm);
 void Forward_1();
 void Backward_1();
 void Motors_initialization();
 void Motors_stop();
 void Right();
 void Left();



#endif /* MOTORS_H__*/
