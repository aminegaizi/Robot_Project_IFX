/*
 * Beeper.c
 *
 *  Created on: 18.12.2018
 *      Author: Gaizi
 */

#include "Beeper.h"

extern PWM_Timers Timers;
extern char object_detect;


void beep()
{
	uint8 i=0;
	initTime();
	uint16 Freq_beep = 0;
	uint8 Duty_Cycle = 25;
	sint32 Fsys = IfxStm_getFrequency(BSP_DEFAULT_TIMER);

	switch(object_detect){
		case 'S':
			Freq_beep = 110;
			object_detect = '0';
			break;
		case '1':
			Freq_beep = 220;//go backward
			object_detect = '0';
			break;
		case '2':
			Freq_beep = 330;//turn left
			object_detect = '0';
			break;
		case '3':
			Freq_beep = 440;//turn right
			object_detect = '0';
			break;
		case '4':
			Freq_beep = 550;
			object_detect = '0';
			break;
		case '5':
			Freq_beep = 660;
			object_detect = '0';
			break;
		case 'E':
			Freq_beep = 770;
			object_detect = '0';
			break;
		default:
			Duty_Cycle = 0;
			object_detect = '0';
			break;
		}


	PWM_init(PWM_BEEPER, &Timers.Beeper, Freq_beep);
	PWM_setDuty(Timers.Beeper, Duty_Cycle);
	waitTime(Fsys/10);
	PWM_setDuty(Timers.Beeper, 0);

	IfxGtm_Tom_Timer_stop(&Timers.Beeper);

}
