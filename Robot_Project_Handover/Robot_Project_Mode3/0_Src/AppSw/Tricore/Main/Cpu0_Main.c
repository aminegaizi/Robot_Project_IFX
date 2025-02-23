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
int ModeSelector = 0;


/***********************************************************************/
//---------------------Servomotor Related variables---------------------/
/***********************************************************************/
volatile uint64 distance_obstacle = 0;
extern IfxStm_CompareConfig config_servo;
extern Ifx_STM *stm_sfr;
extern int Servo_Enable;
//----------------------------------------------------------------------/

/***********************************************************************/
//---------CNN and Raspberry Pi communication Related variables---------/
/***********************************************************************/
char object_detect = '0';
int x_coord_target = 0;
int y_coord_target = 0;
float Objects_Positions_X [7] = {0};
float Objects_Positions_Y [7] = {0};
int Objects_Positions_Zones[7] = {0};
boolean enable_read = TRUE;
boolean BEEP_ENA = FALSE;
enum{
	Raspberry_State_WAIT,
	Raspberry_State_LABEL_temp,
	Raspberry_State_LABEL,
	Raspberry_State_DISTANCEx_temp,
	Raspberry_State_DISTANCEx,
	Raspberry_State_DISTANCEy_temp,
	Raspberry_State_DISTANCEy,
	Raspberry_State_LOAD,
};

uint32 FSM_RaspberrySTATE = Raspberry_State_WAIT;
char x_target[4];
char y_target[4];
int i = 0;
//----------------------------------------------------------------------/

/***********************************************************************/
//--------Positioning, enslavement and mapping Related variables--------/
/***********************************************************************/
extern uint32 FSM_AurixSTATE;
extern boolean Gyro_stable;
extern desired_position Desired_position;
extern current_position Current_position;
int position = 0;
//----------------------------------------------------------------------/


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

	Init_gyro();

	Tft_screen_config();
	Motors_initialization();
	Encoders_config();

	config_servomotor();
	sweep_servo_config();
	SERVO_ISR_CONFIG();
	configUltrasonicSensor();

	serial_config();
	serial_config_Raspberry();

	ISR_CurrentMeasurement_Config();
	ISR_Gyro_Config();

	VadcAutoScanDemo_init();



    while (1)
    {

    }

    return (1);
}

/*
 * void command(char recv)
 * Handling received messages for Mode 1
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
 * void Tft_screen_config()
 * Configuration of the Tft screen
 * Initialize the screen and display Title + Infineon logo
 */
void Tft_screen_config()
{
    GLCD_init();//Init the Tft screen
    GLCD_clear(COLOR_WHITE);//Backgound is white
    GLCD_displayStringLn(LINE0, "       AURIX        ");
    GLCD_displayStringLn(LINE1, "  Autonomous Robot  ");
    GLCD_bitmap(100, 16, IFXLOGO_WIDTH, IFXLOGO_HEIGHT, ifxlogo);//display Infineon's Logo at the (100,16) position
}

/*
 * void Raspberry_rcv(char recv)
 * In charge of receving and saving the values sent by the raspberry
 */
void Raspberry_rcv(char recv)
{
	switch(recv){
			case 'c': // HEADER for the target class
				FSM_RaspberrySTATE = Raspberry_State_LABEL_temp; //Go into a temporary state of the state machine
				break;
			case 'x': // HEADER for the x coordinate of the target
				i = 0;
				FSM_RaspberrySTATE = Raspberry_State_DISTANCEx_temp; //Go into a temporary state of the state machine
				break;
			case 'y': // HEADER for the y coordinate of the target
				i = 0;
				FSM_RaspberrySTATE = Raspberry_State_DISTANCEy_temp; //Go into a temporary state of the state machine
				break;
			case 'w': // HEADER for the end of the packet
				FSM_RaspberrySTATE = Raspberry_State_LOAD; //Go into a temporary state of the state machine
				break;
			default: //Case nothing
				break;
		}

	switch(FSM_RaspberrySTATE){
			case Raspberry_State_LABEL_temp:
				FSM_RaspberrySTATE = Raspberry_State_LABEL;
				break;
			case Raspberry_State_LABEL:
				object_detect = recv; // Store the target class
				BEEP_ENA = TRUE;
				break;

			case Raspberry_State_DISTANCEx_temp:
				FSM_RaspberrySTATE = Raspberry_State_DISTANCEx;
				break;
			case Raspberry_State_DISTANCEx:
				x_target[i] =  recv; //x coordinate of the target
				i++;
				break;

			case Raspberry_State_DISTANCEy_temp:
				FSM_RaspberrySTATE = Raspberry_State_DISTANCEy;
				break;
			case Raspberry_State_DISTANCEy:
				y_target[i] =  recv;  //y coordinate of the target
				i++;
				break;

			case Raspberry_State_LOAD:
				x_coord_target = atoi(x_target);
				y_coord_target = atoi(y_target);

				if(enable_read && Gyro_stable){
					//Save_Object_Position(); // Save the coordinate of the target detected

					Update_Object_Position(); // Update the next position that the robot must go

					enable_read = FALSE;
					FSM_AurixSTATE = Aurix_State_ROTATION;
				}

				memset(x_target,0,sizeof(x_target));
				memset(y_target,0,sizeof(y_target));
				break;

			default: //Case nothing
				FSM_RaspberrySTATE = Raspberry_State_WAIT;
				break;
		}
}

/*
 * void Update_Object_Position()
 *
 * This function updates the desired position the robot should go to everytime the raspberry sends coordinates of a symbol
 * The "+15" is the offset between the position of the camera and the position of the wheels.
 */
void Update_Object_Position(){

	if(x_coord_target > 30)
	{
		Desired_position.x = x_coord_target + 15; // Robot offset [We would like to stop the robot exactly on the target]
	}
	else {
		Desired_position.x = x_coord_target + 10;
	}
	Desired_position.y = y_coord_target;
}

/*
 * void Save_Object_Position()
 *
 * In progress, not fully functional
 *
 * This function saves the position of the robot
 * Currently, this function does not work properly due to the enslavement, the Current_position values are reset at the end of every movement
 * The idea is to save the absolute position of a symbol (when we reached its position) to then apply the mapping algorithm (look at mapping.c, and comments in enslavement.c)
 */
void Save_Object_Position()
{
	Objects_Positions_X[position] = Current_position.x;
	Objects_Positions_Y[position] = Current_position.y;
	Objects_Positions_Zones[position] = ZoneDivider();
}
