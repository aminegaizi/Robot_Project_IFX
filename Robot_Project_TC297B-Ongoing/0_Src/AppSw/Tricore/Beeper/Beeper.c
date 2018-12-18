/*
 * Beeper.c
 *
 *  Created on: 18.12.2018
 *      Author: Gaizi
 */

#include "Beeper.h"

extern PWM_Timers Timers;

void beep()
{
	uint8 i=0;
	initTime();
	uint16 fr[6] = {440, 0, 440, 0, 440, 0};
	sint32 Fsys = IfxStm_getFrequency(BSP_DEFAULT_TIMER);

	PWM_init(PWM_BEEPER, &Timers.Beeper, 440);
	for (i=0;i<6;i++)
	{
		//IfxGtm_Tom_Timer_run(&timer);
		PWM_init(PWM_BEEPER, &Timers.Beeper, fr[i]);
		PWM_setDuty(Timers.Beeper, 15);

		waitTime(Fsys/5);

	}
	IfxGtm_Tom_Timer_stop(&Timers.Beeper);

}
