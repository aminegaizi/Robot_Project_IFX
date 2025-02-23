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
int ModeSelector = 0; //Value the Mode selected, used in serial.c

volatile float64 distance_obstacle = 0;
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


	//ultrasonic sensor config
	configUltrasonicSensor();
	sendTrig(IfxPort_P14_4);

	//servomotor config
	config_servomotor();
	sweep_servo_config();
	SERVO_ISR_CONFIG();
	
	move_servo(45);
	serial_config();
	ISR_SensorFeedBack_Config();

	VadcAutoScanDemo_init();

    while (1)
    {

    	sweep_servo();

    }
    return (1);
}

/*
 * void command(char recv)
 * Handling received messages for Mode 1
 */
void command(char recv)
{
	serial_send(recv);
	switch(recv){
		case 'w':
			Forward_1(); //go forward
			break;
		case 's':
			Backward_1(); //go backward
			break;
		case 'a':
			Left(); //turn left
			break;
		case 'd':
			Right(); //turn right
			break;
		case 'q':
			Motors_stop(); //stop
			break;
		case 'r':
			F_RightCurb(); //Forward Right Curb: Left wheel is going faster than the right wheel
			break;
		case 'e':
			F_LeftCurb(); //Forward Left Curb: Right wheel is going faster than the Left wheel
			break;
		case 'f':
			B_RightCurb(); //Backward Right Curb: Left wheel is going faster than the right wheel
			break;
		case 'g':
			B_LeftCurb(); //Backward Left Curb: Right wheel is going faster than the Left wheel
			break;
		default:
			break;
		}
}
/*
 * void command_Mode2(char recv)
 * Handling received messages for Mode 2
 */
void command_Mode2(char recv)
{
	serial_send(recv);
	switch(recv){
		case 'q': //Stop Mode 2
			IfxGtm_Atom_Timer_stop(&timerObstacleAvoidance); //Stop the Timer interrupt in charge of the Obstacle Avoidance
			Servo_Enable = 0; //Toggle the flag used in servomotor STM interrupt, here stop sweeping the servomotr
			Motors_stop();
			GLCD_displayStringLn(LINE5, "Mode 2 : OFF        ");
			break;
		case 'v': //Start Mode 2
			ISR_ObstacleAvoidance_Config(); //Config and launch the Obstacle Avoidance interrupt
			IfxStm_enableComparatorInterrupt(stm_sfr, config_servo.comparator);//Enable the servomotor STM interrupt
			Servo_Enable = 1; //Enable the sweeping of the servomotr
			GLCD_displayStringLn(LINE5, "Mode 2 : ON         ");
			break;
		default:
			break;
		}
}

/*
 * void Tft_screen_config()
 * Configuration of the Tft screen
 * Initialize the screen and display Title + Infineon logo
 */
void Tft_screen_config()
{
    GLCD_init(); //Init the Tft screen
    GLCD_clear(COLOR_WHITE); //Backgound is white
    GLCD_displayStringLn(LINE0, "       AURIX        ");
    GLCD_displayStringLn(LINE1, "  Autonomous Robot  ");
//	GLCD_displayStringLn(LINE5, "No target detected");
    GLCD_bitmap(100, 16, IFXLOGO_WIDTH, IFXLOGO_HEIGHT, ifxlogo); //display Infineon's Logo at the (100,16) position
}
