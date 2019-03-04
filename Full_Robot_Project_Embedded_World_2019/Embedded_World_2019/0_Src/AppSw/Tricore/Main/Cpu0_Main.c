/**
 * \file Cpu0_Main.c
 * \brief Main function definition for Cpu core 0 .
 *
 * \copyright Copyright (c) 2018 Infineon Technologies AG. All rights reserved.
 *
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

#include "Cpu0_Main.h"

IfxCpu_syncEvent cpuSyncEvent= 0;


extern IfxGtm_Atom_Timer timerObstacleAvoidance;

int D = 31;
int i;


volatile int obstacle_FSM = 0;
volatile int enable_obstacle_FSM = 0;
int ModeSelector = 0;
volatile int flagg=0;
volatile uint8 iterator_s = 0;


volatile uint64 distance_obstacle = 0;
extern IfxStm_CompareConfig config_servo;
extern Ifx_STM *stm_sfr;
sint32 Fsys = 0;
extern int Servo_Enable;


int core0_main (void)
{
    IfxCpu_enableInterrupts();
    /*
     * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdog in the demo if it is required and also service the watchdog periodically
     * */
    IfxScuWdt_disableCpuWatchdog (IfxScuWdt_getCpuWatchdogPassword ());
    IfxScuWdt_disableSafetyWatchdog (IfxScuWdt_getSafetyWatchdogPassword ());

    /* Cpu sync event wait*/
	IfxCpu_emitEvent(&cpuSyncEvent);
	IfxCpu_waitEvent(&cpuSyncEvent, 1);

	get_Reset_Reason();
	reset_Stat();

	initTime();
	ClockConfig();

	Tft_screen_config();
	Motors_initialization();
	Encoders_config();


	config_servomotor();
	sweep_servo_config();
	SERVO_ISR_CONFIG();

	VadcAutoScanDemo_init();

	serial_config();
	ISR_CurrentMeasurement_Config();


	configUltrasonicSensor();

    while (1)
    {

    }
    return (1);
}

/*
 * function: command
 * Lists and manages the possible instructions that can be sent to the robot only when Mode 1 is selected
 */
void command(char recv)
{
	switch(recv){
		case 'w':
			Forward_1();//go forward
			break;
		case 's':
			Backward_1();//go backward
			break;
		case 'a':
			Left();//turn left
			break;
		case 'd':
			Right();//turn right
			break;
		case 'q':
			Motors_stop();//stop
			break;
		case 'r':
			F_RightCurb();//Curb going forward towards the right
			break;
		case 'e':
			F_LeftCurb();//Curb going forward towards the left
			break;
		case 'f':
			B_RightCurb();//Curb going backward towards the right
			break;
		case 'g':
			B_LeftCurb();//Curb going backward towards the left
			break;
		default:
			break;
		}
}

/*
 * function: command_Mode2
 * Lists and manages the possible instructions that can be sent to the robot only when Mode 2 is selected
 */
void command_Mode2(char recv)
{
	switch(recv){
		case 'q':
			IfxGtm_Atom_Timer_stop(&timerObstacleAvoidance);
			Servo_Enable = 0;
			Motors_stop();//stop
			GLCD_displayStringLn(LINE5, "Mode 2 : OFF        ");
			break;
		case 'v':
			ISR_ObstacleAvoidance_Config();
			IfxStm_enableComparatorInterrupt(stm_sfr, config_servo.comparator);
			Servo_Enable = 1;
			GLCD_displayStringLn(LINE5, "Mode 2 : ON         ");
			break;
		default:
			break;
		}
}

/*
 * function: Tft_screen_config
 * Initialization of the LCD screen
 */
void Tft_screen_config()
{
    GLCD_init();
    GLCD_clear(COLOR_WHITE);
    GLCD_displayStringLn(LINE0, "       AURIX        ");
    GLCD_displayStringLn(LINE1, "  Autonomous Robot  ");
    GLCD_bitmap(100, 16, IFXLOGO_WIDTH, IFXLOGO_HEIGHT, ifxlogo);
}
