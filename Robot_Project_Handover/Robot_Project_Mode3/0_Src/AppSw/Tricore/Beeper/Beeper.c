/*
 * Beeper.c
 *
 *  Created on: 18.12.2018
 *      Author: Gaizi
 */

#include "Beeper.h"

extern PWM_Timers Timers;
extern char object_detect;
extern boolean BEEP_ENA;
extern int position;
/*
 * void beep()
 * function that uses the application kit's piezo beeper
 * This function should be called in an interrupt, it will generate a beep between two calls of the interrupt routine
 * A specific (in terms of frequency) been is generated everytime a number is detected, the message on the screen is updated
 *
 * By default, the handling of the actual sonor beep is commented (to avoid annoying colleagues while testing), only the message is refreshed on the screen
 *
 * Change the Value of the frequency for a different sound, the duty cycle is proportional to the volume of the beep
 */
void beep()
{
	uint16 Freq_beep = 0; //Frequency of the beep
	uint8 Duty_Cycle = 25;	//the biggest the duty cycle value, the loudest the beep is

	char Target[20] = "";
	if(BEEP_ENA)
	{	switch(object_detect){
			case 'S':
				Freq_beep = 110;
				snprintf(Target, 20,  "Letter '%c' detected", object_detect); //Creating the string that will be diplayed on the screen
			    GLCD_displayStringLn(LINE6, Target); //Diplay the message: "Letter S detected" on the screen
				object_detect = '0'; //Reset object detect, if you are using the beeps, this prevents having multiple beeps for one detection
				position = 0; //Position is a variable used in Save_Object_Position() in Cpu0_main.c. The idea is to have the 1st symbol's position in the first slot of the array etc.
				break;
			case '1':
				Freq_beep = 220;
				snprintf(Target, 20,  "Number '%c' detected", object_detect);
			    GLCD_displayStringLn(LINE6, Target);
				object_detect = '0';
				position = 1;
			break;
			case '2':
				Freq_beep = 330;
				snprintf(Target, 20,  "Number '%c' detected", object_detect);
			    GLCD_displayStringLn(LINE6, Target);
				object_detect = '0';
				position = 2;
				break;
			case '3':
				Freq_beep = 440;
				snprintf(Target, 20,  "Number '%c' detected", object_detect);
			    GLCD_displayStringLn(LINE6, Target);
				object_detect = '0';
				position = 3;
				break;
			case '4':
				Freq_beep = 550;
				snprintf(Target, 20,  "Number '%c' detected", object_detect);
			    GLCD_displayStringLn(LINE6, Target);
				object_detect = '0';
				position = 4;
				break;
			case '5':
				Freq_beep = 660;
				snprintf(Target, 20,  "Number '%c' detected", object_detect);
			    GLCD_displayStringLn(LINE6, Target);
				object_detect = '0';
				position = 5;
				break;
			case 'E':
				Freq_beep = 770;
				snprintf(Target, 20,  "Letter '%c' detected", object_detect);
			    GLCD_displayStringLn(LINE6, Target);
				object_detect = '0';
				position = 6;
				break;
			default:
				Duty_Cycle = 0;
				object_detect = '0';

				break;
		}

//		PWM_init(PWM_BEEPER, &Timers.Beeper, Freq_beep); //Uncomment the PWM related functions to generate a sound
//		PWM_setDuty(Timers.Beeper, Duty_Cycle);
		BEEP_ENA = FALSE; //The BEEP_ENA is set when the raspberry sends the information that it has detected a number, look at Raspberry_rcv function in Cpu0_main.c
	}

	else if(!BEEP_ENA)
	{
//		PWM_init(PWM_BEEPER, &Timers.Beeper, 0); //Uncomment the PWM and Timer related functions to stop the sound (Note: A PWM init and set duty is required because stopping the PWM without launching it before causes a debug trap)
//		PWM_setDuty(Timers.Beeper, 0);
//		IfxGtm_Tom_Timer_stop(&Timers.Beeper);
	}
}
