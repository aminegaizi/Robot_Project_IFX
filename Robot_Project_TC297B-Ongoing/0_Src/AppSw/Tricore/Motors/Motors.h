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
#include "position.h"
#include "serial.h"
#include "Gyroscope_i2c.h"

#define M_PI 3.14159265358979323846 //Value of Pi
#define DIAMETER 6.5 //diameter of a wheel in cm


/*
 * Interrupt Service Routine function used to realize the Proportional Correction of the robot
 * The interrupt is set to happen every 10ms
 */
 void STM_INTERRUPT_CORRECTION();

 /*
  * Function used to initialize the System Timer Module interrupt
  * It uses the Compare Match Unit of the module, when the STM counts to a particular value, it goes through the ISR
  * The frequency of the module gives the value to which it has to count for 1 second
  */
 void timer_compare(Ifx_Priority PRIORITY, IfxStm_CompareConfig CompareConfig, Ifx_STM *stm);

 /*
  * Function used to set the H-Bridge and PWM pins for going Forward and then sets a flag to make the robot move forward
  */
 void Forward_1();

 /*
  * Function used to set the H-Bridge and PWM pins for going Backwards and then sets a flag to make the robot move backwards
  */
 void Backward_1();

/*
 * Function that calls the interrupts configuration functions
 */
 void Motors_initialization();

 /*
  * Function that will stop the robot's movement by stopping the H-Bridge from supplying the motors
  */
 void Motors_stop();

 /*
  * Function used to set the H-Bridge and PWM pins for the left wheel going Forward and Right wheel going Backward
  * this makes the robot turn to the right
  */
 void Right();

 /*
  * Function used to set the H-Bridge and PWM pins for the Right wheel going Forward and Left wheel going Backward
  * this makes the robot turn to the left
  */
 void Left();

 //void get_position();

 typedef struct
 {
	 float acceleration;
	 float stable;
	 float deceleration;
 }P_coefficient;
//Structure for the Proportional correction coefficients

#endif /* MOTORS_H__*/
