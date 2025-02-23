/*
 * PWM_config.c
 *
 *  Created on: 28.08.2018
 *      Author: Gaizi
 */

#include "PWM_config.h"


//IfxGtm_Tom_Timer Timer1;
//IfxGtm_Tom_Timer Timer2;
//IfxGtm_Tom_Timer Timer3;
//IfxGtm_Tom_Timer Timer4;

IfxGtm_Tom_Timer_Config TimerConfig;
IfxGtm_Tom_Timer_Config Timer2Config;
IfxGtm_Tom_Timer_Config Timer3Config;
IfxGtm_Tom_Timer_Config Timer4Config;

Ifx_GTM *gtm = &MODULE_GTM;



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
	//IfxGtm_TOM0_0_TOUT85_P14_5_OUT
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
    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *)&Timer->tom->TGC0_GLB_CTRL, 1 << Output.channel, 0); //(Ifx_GTM_TOM_TGC *)

    IfxGtm_Tom_Timer_run(Timer);
    uint8 DutyCycle = 10;
    IfxGtm_Tom_Timer_setTrigger(Timer, (DutyCycle * (Timer->base.period)) / 100); //This function allows you to trigger the PWM and adjust the duty cycle
 //   PWM_setDuty(Timer1, 50);PWM_setDuty(Timer1, 50);
}


void PWM_setDuty(IfxGtm_Tom_Timer Timer, uint8 DutyCycle)
{

	IfxGtm_Tom_Timer_setTrigger(&Timer, (DutyCycle * (Timer.base.period)) / 100); //This function allows you to trigger the PWM and adjust the duty cycle}
}

/*
 * Configuration of a Generic Timer Module (GTM) Timer Ouput Module (TOM) PWM signal
 * This function takes in parameter the output pin in which you want the signal
 * the type of the output pin is IfxGtm_Tom_ToutMap
 * Here is an example of this function being called PWM_config(IfxGtm_TOM0_3_TOUT21_P00_12_OUT);
 * You can use any TOM and Tom channels
 */
//void PWM_config(IfxGtm_Tom_ToutMap Output)
//{
//	IfxGtm_Tom_Timer_initConfig(&TimerConfig, gtm);
//	TimerConfig.tom = Output.tom;
//	TimerConfig.timerChannel = Output.channel;
//	//TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
//	TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2;
//	TimerConfig.irqModeTimer = IfxGtm_IrqMode_pulse;
//	TimerConfig.irqModeTrigger = IfxGtm_IrqMode_pulse;
//
//	TimerConfig.triggerOut = &Output;
//	//IfxGtm_TOM0_0_TOUT85_P14_5_OUT
//	TimerConfig.base.frequency = 800; //Change the frequency of your signal here
//	TimerConfig.base.minResolution = 0;
//	TimerConfig.base.trigger.enabled = TRUE;
//	TimerConfig.base.trigger.outputEnabled = TRUE;
//	TimerConfig.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
//	TimerConfig.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
//	TimerConfig.base.trigger.triggerPoint = 0xffff;
//	TimerConfig.base.trigger.risingEdgeAtPeriod = TRUE;
//	TimerConfig.base.isrPriority = 0;
//
//	IfxGtm_Tom_Timer_init(&Timer1, &TimerConfig);
//    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *) &Timer1.tom->TGC0_GLB_CTRL, 1 << Output.channel, 0);
//
//    IfxGtm_Tom_Timer_run(&Timer1);
//    uint8 DutyCycle = 50;
//    IfxGtm_Tom_Timer_setTrigger(&Timer1, (DutyCycle * Timer1.base.period) / 100); //This function allows you to trigger the PWM and adjust the duty cycle
//
//}
//
///*
// * Configuration of a Generic Timer Module (GTM) Timer Ouput Module (TOM) PWM signal
// * This function takes in parameter the output pin in which you want the signal
// * the type of the output pin is IfxGtm_Tom_ToutMap
// * Here is an example of this function being called PWM2_config(IfxGtm_TOM2_12_TOUT34_P33_12_OUT);
// * You can use any TOM and Tom channels
// */
//void PWM2_config(IfxGtm_Tom_ToutMap Output)
//{
//	IfxGtm_Tom_Timer_initConfig(&Timer2Config, gtm);
//	Timer2Config.tom = Output.tom;
//	Timer2Config.timerChannel = Output.channel;
//	//TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
//	Timer2Config.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2;
//	Timer2Config.irqModeTimer = IfxGtm_IrqMode_pulse;
//	Timer2Config.irqModeTrigger = IfxGtm_IrqMode_pulse;
//
//	Timer2Config.triggerOut = &Output;
//	Timer2Config.base.frequency = 800;
//	Timer2Config.base.minResolution = 0;
//	Timer2Config.base.trigger.enabled = TRUE;
//	Timer2Config.base.trigger.outputEnabled = TRUE;
//	Timer2Config.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
//	Timer2Config.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
//	Timer2Config.base.trigger.triggerPoint = 0xffff;
//	Timer2Config.base.trigger.risingEdgeAtPeriod = TRUE;
//
//	Timer2Config.base.isrPriority = 0;
//
//	IfxGtm_Tom_Timer_init(&Timer2, &Timer2Config);
//    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *) &Timer2.tom->TGC0_GLB_CTRL, 1 << Output.channel, 0);
//
//    IfxGtm_Tom_Timer_run(&Timer2);
//    //uint8 DutyCycle = 50;
//    //IfxGtm_Tom_Timer_setTrigger(&Timer1, (DutyCycle * Timer1.base.period) / 100); //This function allows you to trigger the PWM and adjust the duty cycle
//
//}
//
//void PWM3_config(IfxGtm_Tom_ToutMap Output)
//{
//	IfxGtm_Tom_Timer_initConfig(&Timer3Config, gtm);
//	Timer3Config.tom = Output.tom;
//	Timer3Config.timerChannel = Output.channel;
//	//TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
//	Timer3Config.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2;
//	Timer3Config.irqModeTimer = IfxGtm_IrqMode_pulse;
//	Timer3Config.irqModeTrigger = IfxGtm_IrqMode_pulse;
//
//	Timer3Config.triggerOut = &Output;
//	Timer3Config.base.frequency = 50;
//	Timer3Config.base.minResolution = 0;
//	Timer3Config.base.trigger.enabled = TRUE;
//	Timer3Config.base.trigger.outputEnabled = TRUE;
//	Timer3Config.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
//	Timer3Config.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
//	Timer3Config.base.trigger.triggerPoint = 0xff;
//	Timer3Config.base.trigger.risingEdgeAtPeriod = TRUE;
//
//	Timer3Config.base.isrPriority = 0;
//
//	IfxGtm_Tom_Timer_init(&Timer3, &Timer3Config);
//    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *) &Timer3.tom->TGC0_GLB_CTRL, 1 << Output.channel, 0);
//
//    IfxGtm_Tom_Timer_run(&Timer3);
//    //uint8 DutyCycle = 50;
//    //IfxGtm_Tom_Timer_setTrigger(&Timer1, (DutyCycle * Timer1.base.period) / 100); //This function allows you to trigger the PWM and adjust the duty cycle
//
//}
//
//void PWM4_config(IfxGtm_Tom_ToutMap Output)
//{
//	IfxGtm_Tom_Timer_initConfig(&Timer4Config, gtm);
//	Timer4Config.tom = Output.tom;
//	Timer4Config.timerChannel = Output.channel;
//	//TimerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0; //divided by 1
//	Timer4Config.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2;
//	Timer4Config.irqModeTimer = IfxGtm_IrqMode_pulse;
//	Timer4Config.irqModeTrigger = IfxGtm_IrqMode_pulse;
//
//	Timer4Config.triggerOut = &Output;
//	Timer4Config.base.frequency = 50;
//	Timer4Config.base.minResolution = 0;
//	Timer4Config.base.trigger.enabled = TRUE;
//	Timer4Config.base.trigger.outputEnabled = TRUE;
//	Timer4Config.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
//	Timer4Config.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
//	Timer4Config.base.trigger.triggerPoint = 0xff;
//	Timer4Config.base.trigger.risingEdgeAtPeriod = TRUE;
//
//	Timer4Config.base.isrPriority = 0;
//
//	IfxGtm_Tom_Timer_init(&Timer4, &Timer4Config);
//    IfxGtm_Tom_Tgc_enableChannelsUpdate((Ifx_GTM_TOM_TGC *) &Timer4.tom->TGC0_GLB_CTRL, 1 << Output.channel, 0);
//
//    IfxGtm_Tom_Timer_run(&Timer4);
//    //uint8 DutyCycle = 50;
//    //IfxGtm_Tom_Timer_setTrigger(&Timer1, (DutyCycle * Timer1.base.period) / 100); //This function allows you to trigger the PWM and adjust the duty cycle
//
//}

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


