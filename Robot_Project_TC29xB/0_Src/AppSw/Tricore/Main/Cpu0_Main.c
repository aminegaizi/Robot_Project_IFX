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

#include <Port/Io/IfxPort_Io.h>
#include <_Reg\IfxPort_regdef.h>
#include <Src/std/IfxSrc.h>
#include "IfxSrc_reg.h"

#include "Motors_func.h"
#include "PWM_config.h"
#include "Encoders_config.h"

IfxCpu_syncEvent cpuSyncEvent= 0;

extern IfxGtm_Tom_Timer Timer1;
extern IfxGtm_Tom_Timer Timer2;

volatile uint32 interrupt_counter = 0;

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


	StopLeftMotor();
	StopRightMotor();
	Encoders_config();
	//GoAhead(500);

	ClockConfig();

	PWM_config(IfxGtm_TOM0_3_TOUT21_P00_12_OUT); //Only ports IfxGtm_TOMi_0_TOUT_etc ---> it has to be 0  after TOMi

	uint8 duty1 = 50;
	IfxGtm_Tom_Timer_setTrigger(&Timer1, (duty1 * Timer1.base.period) / 100); //Change to duty cycle by changing the value of duty
	uint8 duty2 = 73;
	PWM2_config(IfxGtm_TOM2_12_TOUT34_P33_12_OUT);
	IfxGtm_Tom_Timer_setTrigger(&Timer2, (duty2 * Timer2.base.period) / 100); //Change to duty cycle by changing the value of duty*/

    while (1)
    {
    }
    return (1);
}



