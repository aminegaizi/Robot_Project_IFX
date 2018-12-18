/*
 * servomotor.c
 *
 *  Created on: 18.10.2018
 *      Author: Bourgogn
 */

#include "servomotor.h"

extern Ifx_STM *stm_sfr;
extern IfxGtm_Tom_Timer Timer3;
extern IfxGtm_Tom_Timer Timer4;

IfxStm_CompareConfig config_servo;

volatile float duty3 = 0;
volatile float global_duty_start;
volatile float global_duty_end;
volatile float global_step;
volatile float frequency_servo;
volatile boolean flag_limit = FALSE;

extern PWM_Timers Timers;

void config_servomotor()
{
	//set P33.10 as output for the PWM
	IfxPort_setPinModeOutput(&MODULE_P33, 10, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	//look up in IfxGtm_PinMap.h to find which IfxGtm to use depending on the port used
	PWM_init(PWM1_SERVOMOTOR, &Timers.PWM1_Servo, 50);

	IfxPort_setPinModeOutput(&MODULE_P33, 5, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	PWM_init(PWM2_SERVOMOTOR, &Timers.PWM2_Servo, 50);
}


void move_servo(unsigned char angle)
{

	float duty_position;
	if(angle>180)
		angle =90;
	duty_position = angle * (9.75/ 180)+ DUTY_MIN;

	//generation of the PWM of duty cycle equal to duty_position
	//IfxGtm_Tom_Timer_setTrigger(&Timers.PWM2_Servo, (duty_position * Timers.PWM2_Servo.base.period) / 100);
	PWM_setDuty(Timers.PWM2_Servo, duty_position);
}


void sweep_servo_config()
{
	global_duty_start = DUTY_MIN;
	global_duty_end = DUTY_MAX;
	global_step = STEP;

	duty3 = global_duty_start;
	#define SWEEP_SERVO
//	duty3 = global_duty_end;
}

void sweep_servo()
{
	//if the limit is reached just increment the timer and reset the flag
	if(flag_limit)
	{
		IfxStm_waitTicks(stm_sfr,IfxStm_getTicksFromMilliseconds(stm_sfr,100));
		flag_limit = FALSE;
	}

	//generates PWM in other cases
	else
	{
		//IfxGtm_Tom_Timer_setTrigger(&Timer3, (duty3 * Timer3.base.period) / 100);
		PWM_setDuty(Timers.PWM1_Servo, duty3);
	}
}

#ifdef SWEEP_SERVO
IFX_INTERRUPT(STM_INTERRUPT_SERVO, 0, PRIORITY_ISR_SERVOMOTOR);

void STM_INTERRUPT_SERVO()
{
	//reset the timer for the PWM
	IfxStm_clearCompareFlag(stm_sfr, config_servo.comparator);
	//incrementing the value of the duty used for sweep_servo
	duty3+= global_step;
	//reset of the flag
	flag_limit = FALSE;

	//check if duty is equal to its upper limit
	if(duty3 > global_duty_end)
	{
		//reset of the value of the duty for max value
		duty3 = DUTY_MAX;
		//now duty will decrement
		global_step *= -1;
		duty3+= global_step;
		//indicates that we reached a limit for the duty
		flag_limit = TRUE;
	}

	//check if duty is equal to its lower limit
	else if(duty3 < global_duty_start)
	{
		//reset of the value of the duty for min value
		duty3 = DUTY_MIN;
		//now duty will increment
		global_step *= -1;
		duty3+= global_step;
		//indicates that we reached a limit for the duty
		flag_limit= TRUE;
	}
	//increment the timer
	IfxStm_increaseCompare(stm_sfr, config_servo.comparator, frequency_servo);
}

void timer_compare_config()
{
       frequency_servo = IfxStm_getFrequency(stm_sfr)/4;
       boolean interruptState = IfxCpu_disableInterrupts();

       IfxStm_initCompareConfig(&config_servo);
       config_servo.triggerPriority = PRIORITY_ISR_SERVOMOTOR;
       config_servo.typeOfService = IfxSrc_Tos_cpu0;
       //interrupt every 1/4s
       //change value of frequency to change frequency
       config_servo.ticks = frequency_servo;
       IfxStm_initCompare(stm_sfr, &config_servo);
       IfxStm_enableComparatorInterrupt(stm_sfr, config_servo.comparator);
       IfxCpu_restoreInterrupts(interruptState);
}
#endif
