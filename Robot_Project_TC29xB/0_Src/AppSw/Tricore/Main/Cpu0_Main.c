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
#include "Motors_func.h"
#include "PWM_config.h"
#include "Encoders_config.h"

#include <Stm/Std/IfxStm.h>
#include <_PinMap/IfxPort_pinMap.h>
#include <Ultrasonic_sensor/ultrasonic_sensor.h>


IfxCpu_syncEvent cpuSyncEvent= 0;

//extern IfxGtm_Tom_Timer Timer1;
//extern IfxGtm_Tom_Timer Timer2;

extern Ifx_STM *stm0;

//extern volatile uint32 interruptRight_counter;
//extern volatile uint32 interruptLeft_counter;

volatile float64 distance_obstacle = 0;

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

	Encoders_config();

	ClockConfig();

	uint32 DownTicks = IfxStm_getTicksFromMilliseconds(stm0, 1000);
	Forward(100);
//	IfxStm_waitTicks(stm0, DownTicks);
//	Right(90);
//	IfxStm_waitTicks(stm0, DownTicks);
//	Forward(100);
//	IfxStm_waitTicks(stm0, DownTicks);
//	Backward(100);
//	IfxStm_waitTicks(stm0, DownTicks);
	Left(90);
//	IfxStm_waitTicks(stm0, DownTicks);
//	Backward(100);

	//ultrasonic sensor config

	uint32 UpTicks = IfxStm_getTicksFromMilliseconds(stm0, 1000);
	IfxPort_setPinModeOutput(&MODULE_P33, 6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);

	IfxPort_setPinLow(&MODULE_P33, 6);
	IfxStm_waitTicks(stm0,UpTicks);
	IfxPort_setPinHigh(&MODULE_P33, 6);
	IfxStm_waitTicks(stm0,UpTicks);
	IfxPort_setPinLow(&MODULE_P33, 6);

	configUltrasonicSensor();
	sendTrig(IfxPort_P14_4);


    while (1)
    {
    	temp = returnDistance();
		//check for absurd results
		if(temp < 1e+06)
		{
			distance_obstacle = temp ;
		}
		//wait 1 ms so that the results are more accurate
		IfxStm_waitTicks(stm_sfr,IfxStm_getTicksFromMilliseconds(stm_sfr, 1));
		//next detection
		sendTrig(IfxPort_P14_4);
    }
    return (1);
}



