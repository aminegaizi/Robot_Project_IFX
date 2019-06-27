/*
 * Reset_reason.c
 *
 * \copyright Copyright (c) 2017 Infineon Technologies AG. All rights reserved.
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
#include "IfxCpu_Intrinsics.h"
#include "IfxScuWdt.h"
#include "Ifx_reg.h"
#include "Reset_reason.h"

char* reset_reason_char;

const char* reset_reasons[8]= {"Stdby_WDT", "Cold_PORST", "Warm_PORST", "STM", "SMU", "Software", "ESR", "WRONG!"};

/*
 *  void get_Reset_Reason(void)
 *  This functions gives the reason of the last reset of the microcontroller
 *  It is very useful to understand why the microcontroller crashed, look for 'reset_reason' in the debugger's watchview
 */
void get_Reset_Reason(void)
{

	reset_reason_type reset_reason = wrong;
	Ifx_SCU_RSTSTAT scu_stat_register;
	scu_stat_register.U = SCU_RSTSTAT.U;


	if(scu_stat_register.B.SWD || scu_stat_register.B.EVR33 || scu_stat_register.B.EVR13)
		reset_reason = Cold_PORST;
	else if(scu_stat_register.B.STBYR)
		reset_reason = Standby_Reg;
	else if(scu_stat_register.B.CB0 || scu_stat_register.B.CB1 || scu_stat_register.B.CB3 || scu_stat_register.B.PORST)
		reset_reason = Warm_PORST;
	else if(scu_stat_register.B.STM0 || scu_stat_register.B.STM1 || scu_stat_register.B.STM2)
		reset_reason = STM;
	else if(scu_stat_register.B.SMU)
		reset_reason = SMU;
	else if(scu_stat_register.B.SW)
		reset_reason = Software;
	else if(scu_stat_register.B.ESR0 || scu_stat_register.B.ESR1)
		reset_reason = ESR;
	else
		;


	switch (reset_reason)
	{
		case Standby_Reg:
			reset_reason_char = (char*)reset_reasons[0];
			break;
		case Cold_PORST:
			reset_reason_char = (char*)reset_reasons[1];
			break;
		case Warm_PORST:
			reset_reason_char = (char*)reset_reasons[2];
			break;
		case STM:
			reset_reason_char = (char*)reset_reasons[3];
			break;
		case SMU:
			reset_reason_char = (char*)reset_reasons[4];
			break;
		case Software:
			reset_reason_char = (char*)reset_reasons[5];
			break;
		case ESR:
			reset_reason_char = (char*)reset_reasons[6];
			break;
		default:
			reset_reason_char = (char*)reset_reasons[7];
			break;

	}

}

/*
 * void reset_Stat(void)
 * Sets SCU_RSTCON2 CLRC bit
 */
void reset_Stat(void)
{
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
	SCU_RSTCON2.B.CLRC = 1;
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

}
