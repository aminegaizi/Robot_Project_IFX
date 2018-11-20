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

#define PRIO_SERVO 6
//if modification are needed here put duty that is >
#define DUTY_MIN 3.5
//if modification are needed here put duty that is <
#define DUTY_MAX 13.25
//to modify if smoother but slower movement needed
#define STEP 0.125


/*	input: none
	output: none
	function: configure 2 PMWs for the servos
	one on P33.10 and the other on P33.5
*/
void config_servomotor(void);



/*	input: angle, value of the angle, should be between 0 and 180 if not angle is 90
	output: none
	function: generates a PWM for the servo that is locked in position
*/
//void move_servo(float duty_position);
void move_servo(unsigned char angle);



/*	input: none
	output: none
	function: configure the global values for the duties in the sweep servo function
	and the step
	It also defines  SWEEP_SERVO to allow the definition of the IFX_INTERRUPT,
	 sweep_servo(), STM_INTERRUPT() and timer_compare_config()
*/
void sweep_servo_config(void);



/*	input: none
	output: none
	function: generates the PWM for the sweeping servo
	checks if the extreme duty are reached and if not the PWM is generated
*/
void sweep_servo(void);



/*	input: none
	output: none
	function: configure the timer that will be used to calibrate the sending of each PWM
	for the sweep function
*/
void timer_compare_config(void);



/*	input: none
	output: none
	function: interrupt routine executed every period of the aforementioned timer
	changes value of the duty and the direction of the servo motion
*/
void STM_INTERRUPT(void);
