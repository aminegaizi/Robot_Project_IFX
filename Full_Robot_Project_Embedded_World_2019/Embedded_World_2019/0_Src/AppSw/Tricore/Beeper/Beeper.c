/*
 * Beeper.c
 *
 *  Created on: 18.12.2018
 *      Author: Gaizi
 */

#include "Beeper.h"

extern PWM_Timers Timers;

/*
 * function beep
 * Generates a PWM that triggers the beeper of the application kit at a chosen frequency
 */
void beep()
{
	initTime();
	uint16 Freq_beep = 1000; //Frequency of the beep
	uint8 Duty_Cycle = 25;	//the biggest the duty cycle value, the loudest the beep is
	sint32 Fsys = IfxStm_getFrequency(BSP_DEFAULT_TIMER);

	PWM_init(PWM_BEEPER, &Timers.Beeper, Freq_beep);
	PWM_setDuty(Timers.Beeper, Duty_Cycle);
	waitTime(Fsys/10); //Delay
	PWM_setDuty(Timers.Beeper, 0);
	IfxGtm_Tom_Timer_stop(&Timers.Beeper);
}
