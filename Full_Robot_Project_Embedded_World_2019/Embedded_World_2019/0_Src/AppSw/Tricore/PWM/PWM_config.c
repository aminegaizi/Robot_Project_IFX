/*
 * PWM_config.c
 *
 *  Created on: 28.08.2018
 *      Author: Gaizi
 */

#include "PWM_config.h"


PWM_Timers Timers;

Ifx_GTM *gtm = &MODULE_GTM;

/*
 * Configuration of a Generic Timer Module (GTM) Timer Ouput Module (TOM) PWM signal
 * This function takes in parameter
 * 		- the output pin in which you want the signal
 * 		- the timer used
 * 		- the frequency of your signal
 *
 * You can use any TOM and Tom channels
 */
void PWM_init(IfxGtm_Tom_ToutMap Output, IfxGtm_Tom_Timer *Timer, float32 frequency)
{

	IfxGtm_Tom_Timer_Config TimerCfg;

	IfxGtm_Tom_Timer_initConfig(&TimerCfg, gtm);
	TimerCfg.tom = Output.tom;
	TimerCfg.timerChannel = Output.channel;
	//TimerCfg.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
	TimerCfg.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2;
	TimerCfg.irqModeTimer = IfxGtm_IrqMode_pulse;
	TimerCfg.irqModeTrigger = IfxGtm_IrqMode_pulse;

	TimerCfg.triggerOut = &Output;
	TimerCfg.base.frequency = frequency; //Change the frequency of your signal here
	TimerCfg.base.minResolution = 0;
	TimerCfg.base.trigger.enabled = TRUE;
	TimerCfg.base.trigger.outputEnabled = TRUE;
	TimerCfg.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
	TimerCfg.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
	TimerCfg.base.trigger.triggerPoint = 0xffff;
	TimerCfg.base.trigger.risingEdgeAtPeriod = TRUE;
	TimerCfg.base.isrPriority = 0;

	IfxGtm_Tom_Timer_init(Timer, &TimerCfg);
    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *)&Timer->tom->TGC0_GLB_CTRL, 1 << Output.channel, 0);

    IfxGtm_Tom_Timer_run(Timer);
}

/*
 * Function used to set the duty cycle of the PWM
 * this function has to be called after the PWM_init function to have an output signal
 */
void PWM_setDuty(IfxGtm_Tom_Timer Timer, uint8 DutyCycle)
{
	IfxGtm_Tom_Timer_setTrigger(&Timer, (DutyCycle * (Timer.base.period)) / 100); //This function allows you to trigger the PWM and adjust the duty cycle}
}

/*
 * This function configures the clocks needed for the PWM config
 */
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


