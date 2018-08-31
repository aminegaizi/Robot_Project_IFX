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

#include "Motors_func.h"
#include "PWM_config.h"

IfxCpu_syncEvent cpuSyncEvent= 0;

extern IfxGtm_Tom_Timer Timer1;


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


    IfxPort_setPinMode(&MODULE_P15, 4, IfxPort_InputMode_pullUp);

    //input 0 is selected
    SCU_EICR0.B.EXIS0 = 0x0;

    //INTF is set on a rising edge
    SCU_EICR0.B.REN0 = 1;

    //a falling edge event will reset INTF
    SCU_EICR0.B.LDEN0 = 1;

    //trigger event enabled
    SCU_EICR0.B.EIEN0 = 1;

    //event triggered output to OGU0
    SCU_EICR0.B.INP0 = 0x0;

    /*The trigger generation at a change of the
    pattern detection result is enabled
    */
    SCU_IGCR0.B.GEEN0 = 1;

    /*The detected pattern is considered. IOUT(2j) is
	activated if a trigger event occurs while the
	pattern is present
     */
    SCU_IGCR0.B.IGP0 = 0x1;

    IfxSrc_init(&(SRC_SCU_SCU_ERU0),0,25);
	IfxSrc_enable(&(SRC_SCU_SCU_ERU0));

	// ++++++++++++++++++++++++++++++++++++++++++++++++++++++

	StopLeftMotor();
	StopRightMotor();

	//GoAhead(500);

	ClockConfig();

	PWM_config(IfxGtm_TOM0_0_TOUT18_P00_9_OUT); //Only ports IfxGtm_TOMi_0_TOUT_etc ---> it has to be 0  after TOMi
	//IfxGtm_TOM0_0_TOUT18_P00_9_OUT -- IfxGtm_TOM0_0_TOUT76_P15_5_OUT -- IfxGtm_TOM0_0_TOUT53_P21_2_OUT -- IfxGtm_TOM0_0_TOUT77_P15_6_OUT
	//IfxGtm_TOM1_0_TOUT18_P00_9_OUT -- IfxGtm_TOM1_0_TOUT76_P15_5_OUT -- IfxGtm_TOM1_0_TOUT26_P33_4_OUT
	//IfxGtm_TOM2_0_TOUT48_P22_1_OUT
//	IfxGtm_TOM2_5_TOUT91_P13_0_OUT -----> This is the LED D107
//	IfxGtm_TOM0_0_TOUT85_P14_5_OUT
//	PWM_config(IfxGtm_TOM2_14_TOUT66_P20_10_OUT);
	uint8 duty1 = 50;
	IfxGtm_Tom_Timer_setTrigger(&Timer1, ((100-duty1) * Timer1.base.period) / 100); //Change to duty cycle by changing the value of duty
	uint8 duty2 = 80;
	/*PWM_config(IfxGtm_TOM2_0_TOUT48_P22_1_OUT);
	IfxGtm_Tom_Timer_setTrigger(&Timer1, ((100-duty2) * Timer1.base.period) / 100); //Change to duty cycle by changing the value of duty*/
	/*IfxPort_setPinModeOutput(&MODULE_P13, 0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinLow(&MODULE_P13, 0);*/
    while (1)
    {
    }
    return (1);
}


IFX_INTERRUPT(TEST,0,25)
{
	interrupt_counter++;
}
