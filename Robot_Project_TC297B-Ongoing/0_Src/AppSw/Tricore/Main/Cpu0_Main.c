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

//extern IfxGtm_Tom_Timer Timer1;
//extern IfxGtm_Tom_Timer Timer2;

//extern volatile uint32 interruptRight_counter;
//extern volatile uint32 interruptLeft_counter;
volatile float64 distance_obstacle = 0;
char object_detect;
int state_machine,enable_flag=0;
char angle[10];
char distance[10];
int i,A,D;

int core0_main (void)
{
	float64 temp = 0;
	Ifx_STM *stm_sfr = &MODULE_STM0;

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

	ClockConfig();
	//beep();

	Motors_initialization();
	Init_gyro(); //Uncomment MPU init
	Encoders_config();
	serial_config();
	serial_config_Raspberry();


	//ultrasonic sensor config
	configUltrasonicSensor();
	sendTrig(IfxPort_P14_4);
	serial_config_Raspberry();
	//servomotor config
	config_servomotor();
	sweep_servo_config();
	
	move_servo(45);

    while (1)
    {
    	if(D<30)
    	{
        	beep();
    	}
		sweep_servo();

    	temp = returnDistance();
		//check for absurd results
		if(temp < 1e+06)
		{
			distance_obstacle = temp;
		}
		//wait 1 ms so that the results are more accurate
		IfxStm_waitTicks(stm_sfr,IfxStm_getTicksFromMilliseconds(stm_sfr, 1));
		//next detection
		sendTrig(IfxPort_P14_4);
    }
    return (1);
}

void command(char recv)
{
	serial_send(recv);
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

void Raspberry_rcv(char recv)
{
	switch(state_machine){
		case 0:
			if(recv == '+'){ //START bit
				enable_flag = 1;
			}
			if(recv == '!'){
				state_machine = 1;
			}
			break;
		case 1:
			if(enable_flag == 1){
				if(recv == '!'){
					state_machine = 2;
				}
				else{
					object_detect = recv;//Which object is detected ? [S,E or numbers from 1 to 5]
				}
			}
			break;
		case 2:
			if(enable_flag == 1){
				if(recv == '!'){
					state_machine = 3;
					i=0;
				}
				else{
					angle[i] =  recv; //Angle of detection
					i++;
				}
			}
			break;
		case 3:
			if(enable_flag == 1){
				if(recv == '!'){
					state_machine = 4;
					i=0;
				}
				else{
					distance[i] =  recv; //Range of detection
					i++;
				}
			}
			break;
		case 4:
			if(recv == '-' && enable_flag == 1){ //STOP bit
				enable_flag = 0;
			}
			if(recv == '!'){
				state_machine = 0;
				A = atoi(angle);
				D = atoi(distance);
			}
			break;
		default: //Case nothing
			enable_flag = 0;
			state_machine = 0;
			break;
	}
}


