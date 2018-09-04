/*
 * PWM_config.c
 *
 *  Created on: 28.08.2018
 *      Author: Gaizi
 */

#include "PWM_config.h"


IfxGtm_Tom_Timer Timer1;
IfxGtm_Tom_Timer Timer2;

IfxGtm_Tom_Timer_Config TimerConfig;
IfxGtm_Tom_Timer_Config Timer2Config;

Ifx_GTM *gtm = &MODULE_GTM;

void PWM_config(IfxGtm_Tom_ToutMap Output)
{
	IfxGtm_Tom_Timer_initConfig(&TimerConfig, gtm);

	TimerConfig.tom = Output.tom;
	TimerConfig.timerChannel = Output.channel;
	TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
	TimerConfig.irqModeTimer = IfxGtm_IrqMode_pulse;
	TimerConfig.irqModeTrigger = IfxGtm_IrqMode_pulse;

	TimerConfig.triggerOut = &Output;

	TimerConfig.base.frequency = 20000;
	TimerConfig.base.minResolution = 0;
	TimerConfig.base.trigger.enabled = TRUE;
	TimerConfig.base.trigger.outputEnabled = TRUE;
	TimerConfig.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
	TimerConfig.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
	TimerConfig.base.trigger.triggerPoint = 0xffff;
	TimerConfig.base.trigger.risingEdgeAtPeriod = TRUE;

	TimerConfig.base.isrPriority = 0;

	IfxGtm_Tom_Timer_init(&Timer1, &TimerConfig);
    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *) &Timer1.tom->TGC0_GLB_CTRL, 1 << IfxGtm_TOM0_0_TOUT85_P14_5_OUT.channel, 0);

    IfxGtm_Tom_Timer_run(&Timer1);

    //IfxGtm_Tom_Timer_setTrigger(&Timer1, ((100-50) * Timer1.base.period) / 100);

}

void PWM2_config(IfxGtm_Tom_ToutMap Output)
{
	IfxGtm_Tom_Timer_initConfig(&Timer2Config, gtm);
	Timer2Config.tom = Output.tom;
	Timer2Config.timerChannel = Output.channel;
	TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
	Timer2Config.irqModeTimer = IfxGtm_IrqMode_pulse;
	Timer2Config.irqModeTrigger = IfxGtm_IrqMode_pulse;

	Timer2Config.triggerOut = &Output;

	Timer2Config.base.frequency = 1000;
	Timer2Config.base.minResolution = 0;
	Timer2Config.base.trigger.enabled = TRUE;
	Timer2Config.base.trigger.outputEnabled = TRUE;
	Timer2Config.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
	Timer2Config.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
	TimerConfig.base.trigger.triggerPoint = 0xffff;
	Timer2Config.base.trigger.risingEdgeAtPeriod = TRUE;
	Timer2Config.base.isrPriority = 0;

	IfxGtm_Tom_Timer_init(&Timer2, &Timer2Config);
    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *) &Timer2.tom->TGC0_GLB_CTRL, 1 << Output.channel, 0);

    IfxGtm_Tom_Timer_run(&Timer2);

    //IfxGtm_Tom_Timer_setTrigger(&Timer2, ((100-50) * Timer2.base.period) / 100);

}

void ClockConfig()
{
	IfxGtm_enable(&MODULE_GTM);
	// we set the global clock to 100MHz
	IfxGtm_Cmu_setGclkFrequency(&MODULE_GTM, 100000000.0f);
	// set CMU0 frequency
	IfxGtm_Cmu_setClkFrequency(&MODULE_GTM, IfxGtm_Cmu_Clk_0, 100000000.0f);
	// enable CMU0 clock
	IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_CLK0);
	// enable FX clock
	IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_FXCLK);
}


