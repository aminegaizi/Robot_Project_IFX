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

#include "SysSe/Bsp/Bsp.h"

#include "Motors_func.h"
#include "IfxGtm_Tom_Pwm.h"
#include "IfxGtm_Tom_PwmHl.h"
#include "IfxGtm_Tom_Timer.h"

/*------Global Variables------*/
IfxCpu_syncEvent cpuSyncEvent= 0;



IfxGtm_Tom_Timer_Config TimerConfig;
IfxGtm_Tom_Timer Timer;

IfxGtm_Tom_PwmHl_Config PwmConfig;
IfxGtm_Tom_PwmHl Pwm;
//IfxGtm_Tom_Pwm_Driver

Ifx_GTM *gtm = &MODULE_GTM;
Ifx_P *OutputPort;
uint8 OutputPin;

float32 gtmFreq = 0;
float32 gtmGclkFreq = 0;
float32 gtmCmuClk0Freq = 0;
//GtmTomPwmHl_State state;
Ifx_TickTime stateDeadline;

Ifx_TimerValue    tOn[1];

int core0_main (void)
{
    IfxCpu_enableInterrupts();
    /*
     * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdog in the demo if it is required and also service the watchdog periodically
     * */
    unsigned int a = 0;
    IfxScuWdt_disableCpuWatchdog (IfxScuWdt_getCpuWatchdogPassword ());
    IfxScuWdt_disableSafetyWatchdog (IfxScuWdt_getSafetyWatchdogPassword ());

    /* Cpu sync event wait*/
    IfxCpu_emitEvent(&cpuSyncEvent);
    IfxCpu_waitEvent(&cpuSyncEvent, 1);

    gtmFreq = IfxGtm_Cmu_getModuleFrequency(gtm);
    IfxGtm_enable(gtm);

    IfxGtm_Cmu_setGclkFrequency(gtm, gtmFreq);
    gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency(gtm);
    IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_0, gtmGclkFreq);
    gtmCmuClk0Freq = IfxGtm_Cmu_getClkFrequency(gtm, IfxGtm_Cmu_Clk_0, TRUE);

    stateDeadline  = now();

    IfxGtm_Tom_Timer_initConfig(&TimerConfig, gtm);
    TimerConfig.base.frequency = 10000;
    //TimerConfig.base.isrPriority = ;
    //TimerConfig.base.isrProvider = ;
    TimerConfig.base.minResolution = (1.0 / TimerConfig.base.frequency) / 1000;
    TimerConfig.base.trigger.enabled = FALSE;
    TimerConfig.tom = IfxGtm_Tom_1;
    TimerConfig.timerChannel = IfxGtm_Tom_Ch_0;
    TimerConfig.clock = IfxGtm_Cmu_Clk_0;

    TimerConfig.triggerOut = &IfxGtm_TOM1_0_TOUT9_P00_0_OUT;
    TimerConfig.base.trigger.outputEnabled = TRUE;
    TimerConfig.base.trigger.enabled = TRUE;
    TimerConfig.base.trigger.triggerPoint = TRUE;
    TimerConfig.base.trigger.risingEdgeAtPeriod = TRUE;

    IfxGtm_Tom_Timer_init(&Timer, &TimerConfig);

    IfxGtm_Tom_PwmHl_initConfig(&PwmConfig);
    IfxGtm_Tom_ToutMapP ccx[1] = {&IfxGtm_TOM1_1_TOUT10_P00_1_OUT};
    IfxGtm_Tom_ToutMapP coutx[1] = {&IfxGtm_TOM1_2_TOUT12_P00_3_OUT};
    PwmConfig.timer = &Timer;
    PwmConfig.tom = TimerConfig.tom;
    PwmConfig.base.deadtime = 2e-6;
    PwmConfig.base.minPulse         = 1e-6;
    PwmConfig.base.channelCount     = 1;
    PwmConfig.base.emergencyEnabled = FALSE;
    PwmConfig.base.outputMode       = IfxPort_OutputMode_pushPull;
    PwmConfig.base.outputDriver     = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    PwmConfig.base.ccxActiveState   = Ifx_ActiveState_high;
    PwmConfig.base.coutxActiveState = Ifx_ActiveState_high;
    PwmConfig.ccx                   = ccx;
    PwmConfig.coutx                 = coutx;

    IfxGtm_Tom_PwmHl_init(&Pwm, &PwmConfig);
    IfxGtm_Tom_Timer_run(&Timer);

    IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK0);

    tOn[0] = IfxGtm_Tom_Timer_getPeriod(&Timer) / 2;
    IfxGtm_Tom_Timer_disableUpdate(&Timer);
    IfxGtm_Tom_PwmHl_setOnTime(&Pwm, &tOn[0]);
    IfxGtm_Tom_Timer_applyUpdate(&Timer);

    //GoAhead(3000);

    while (1)
    {

    }
    return (1);
}

