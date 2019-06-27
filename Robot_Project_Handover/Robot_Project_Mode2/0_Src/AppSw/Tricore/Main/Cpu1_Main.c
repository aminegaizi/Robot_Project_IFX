/**
 * \file Cpu1_Main.c
 * \brief Main function definition for Cpu core 1 .
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

#include "GTM_ISR.h"
extern IfxCpu_syncEvent cpuSyncEvent;

//void Config_ISR_Gyro(void);
//void ISR_Gyro(void);
//void timer_compare2();
//IfxStm_CompareConfig config2;
//
//Ifx_STM *stm1 = &MODULE_STM1;


//IfxGtm_Atom_Timer timerGyro;
//uint32 Flag_isr = 0;

//IFX_INTERRUPT(ISR_Gyro, 0, PRIORITY_ISR_GYRO);

int core1_main (void)
{
    IfxCpu_enableInterrupts();
    /*
     * !!WATCHDOG1 IS DISABLED HERE!!
     * Enable the watchdog in the demo if it is required and also service the watchdog periodically
     * */
    IfxScuWdt_disableCpuWatchdog (IfxScuWdt_getCpuWatchdogPassword ());

    /* Cpu sync event wait*/
    IfxCpu_emitEvent(&cpuSyncEvent);
    IfxCpu_waitEvent(&cpuSyncEvent, 1);
	//Config_ISR_Gyro();
	//timer_compare2();
    while (1)
    {
    }
    return (1);
}

//void Config_ISR_Gyro(void)
//{
//       /* GTM TOM configuration */
//        IfxGtm_Atom_Timer_Config timerConfig;
//        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
//        timerConfig.base.frequency       = 10;
//        timerConfig.base.isrPriority     = PRIORITY_ISR_GYRO;
//        timerConfig.base.isrProvider     = IfxSrc_Tos_cpu1;
//        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
//        timerConfig.base.trigger.enabled = FALSE;
//        timerConfig.atom                 = IfxGtm_Atom_3;
//        timerConfig.timerChannel         = IfxGtm_Atom_Ch_0;
//        timerConfig.clock                = IfxGtm_Cmu_Clk_0;
//        IfxGtm_Atom_Timer_init(&timerGyro, &timerConfig);
//
//        IfxGtm_Atom_Timer_run(&timerGyro);
//}
//
//void ISR_Gyro(void)
//{
//    //IfxCpu_enableInterrupts();
//	IfxStm_clearCompareFlag(stm1, config2.comparator);
//	GetYawPitchRoll();
//    Flag_isr++;
//    //IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerGyro);
//	IfxStm_increaseCompare(stm1, config2.comparator, IfxStm_getFrequency(&MODULE_STM1)/10);
//}
//
//void timer_compare2()
//{
//	boolean interruptState = IfxCpu_disableInterrupts();
//	IfxStm_initCompareConfig(&config2);
//	config2.triggerPriority = PRIORITY_ISR_GYRO;
//	config2.typeOfService = IfxSrc_Tos_cpu1;
//	config2.ticks = IfxStm_getFrequency(&MODULE_STM1)/10;
//	IfxStm_initCompare(stm1, &config2);
//	IfxStm_enableComparatorInterrupt(stm1, config2.comparator);
//	IfxCpu_restoreInterrupts(interruptState);
//}
