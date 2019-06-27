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

#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"

#include "IfxCpu_Irq.h"
#include <Port/Io/IfxPort_Io.h>
#include <_Reg\IfxPort_regdef.h>
#include <Src/std/IfxSrc.h>
#include "IfxSrc_reg.h"

#include <Scu/Std/IfxScuEru.h>
#include "IfxStm.h"
#include "Motors.h"
#include "PWM_config.h"
#include "Encoders_config.h"
#include "servomotor.h"

#include "serial.h"
#include "serial_Raspberry.h"
#include <Stm/Std/IfxStm.h>
#include <_PinMap/IfxPort_pinMap.h>
#include "ultrasonic_sensor.h"

#include "Cpu0_Main.h"

IfxCpu_syncEvent cpuSyncEvent= 0;

//extern IfxGtm_Tom_Timer Timer1;
//extern IfxGtm_Tom_Timer Timer2;

//extern volatile uint32 interruptRight_counter;
//extern volatile uint32 interruptLeft_counter;
volatile float64 distance_obstacle = 0;
char object_detect = '0';

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

	Motors_initialization();
	Encoders_config();
	serial_config();
    serial_config_Raspberry(); //Configuration of the UART between the Aurix Master and the Raspberry
	ClockConfig();

	//ultrasonic sensor config
	configUltrasonicSensor();
	sendTrig(IfxPort_P14_4);

	//servomotor config
	config_servomotor();
	sweep_servo_config();
	
	move_servo(45);

    while (1)
    {
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
			//Left(25);
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
	switch(recv){
		case 'S': //Case START
			object_detect = 'S';
			break;
		case '1':
			object_detect = '1';
			break;
		case '2':
			object_detect = '2';
			break;
		case '3':
			object_detect = '3';
			break;
		case '4':
			object_detect = '4';
			break;
		case '5':
			object_detect = '5';
			break;
		case 'E': //Case END
			object_detect = 'E';
			break;
		default: //Case nothing
			object_detect = '0';
			break;
	}
}

