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

#include <Stm/Std/IfxStm.h>
#include <_PinMap/IfxPort_pinMap.h>
#include "ultrasonic_sensor.h"

#include "Cpu0_Main.h"

IfxCpu_syncEvent cpuSyncEvent= 0;

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

	Motors_initialization(); //Launch Timer Interrupt handling the movement enslavement
	Encoders_config(); //Config of external interrupt for both encoders
	serial_config(); //Config UART communication with bluetooth module

	ClockConfig();

	//ultrasonic sensor config
//	configUltrasonicSensor();
//	sendTrig(IfxPort_P14_4);

	//servomotor config
//	config_servomotor();
//	sweep_servo_config();
//
//	move_servo(45);

    while (1)
    {
//		sweep_servo();
//    	temp = returnDistance();
//
//		if(temp < 1e+06)		//check for absurd results
//		{distance_obstacle = temp;}
//
//		IfxStm_waitTicks(stm_sfr,IfxStm_getTicksFromMilliseconds(stm_sfr, 1));	//wait 1 ms so that the results are more accurate
//
//		sendTrig(IfxPort_P14_4);	//next detection
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

