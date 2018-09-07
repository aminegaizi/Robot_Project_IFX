/*
 * Encoders_config.c
 *
 *  Created on: 05.09.2018
 *      Author: Gaizi
 */

#include "Encoders_config.h"

extern IfxGtm_Tom_Timer Timer1;
extern IfxGtm_Tom_Timer Timer2;

IFX_INTERRUPT(ISR_ENCODER_L, 0, 1);
IFX_INTERRUPT(ISR_ENCODER_R, 0, 2);

volatile uint32 interrupt2_counter = 0;
volatile uint32 interrupt3_counter = 0;

void Encoders_config()
{
	volatile Ifx_SRC_SRCR *src;
	volatile Ifx_SRC_SRCR *src1;

	src = &MODULE_SRC.SCU.SCU.ERU[0];
	// we setup the ERU0 interrupt
	IfxSrc_init(src, IfxCpu_Irq_getTos(IfxCpu_getCoreId()), 1);
	IfxSrc_enable(src);
	//Initialisation of ERU
	IfxScuEru_initReqPin(&IfxScu_REQ4_P10_7_IN, IfxPort_InputMode_noPullDevice);
	IfxScuEru_enableRisingEdgeDetection((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId);
	// we use the OGU0
	IfxScuEru_connectTrigger((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId, IfxScuEru_InputNodePointer_0);
	IfxScuEru_enableTriggerPulse((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId);
	IfxScuEru_setInterruptGatingPattern(IfxScuEru_OutputChannel_0, IfxScuEru_InterruptGatingPattern_alwaysActive);

	src1 = &MODULE_SRC.SCU.SCU.ERU[1];
	// we setup the ERU1 interrupt
	IfxSrc_init(src1, IfxCpu_Irq_getTos(IfxCpu_getCoreId()), 2);
	IfxSrc_enable(src1);
	// initialization of ERU
	IfxScuEru_initReqPin(&IfxScu_REQ11_P20_9_IN, IfxPort_InputMode_noPullDevice);
	IfxScuEru_enableRisingEdgeDetection((IfxScuEru_InputChannel) IfxScu_REQ11_P20_9_IN.channelId);
	// we use the OGU1
	IfxScuEru_connectTrigger((IfxScuEru_InputChannel) IfxScu_REQ11_P20_9_IN.channelId, IfxScuEru_InputNodePointer_1);
	IfxScuEru_enableTriggerPulse((IfxScuEru_InputChannel) IfxScu_REQ11_P20_9_IN.channelId);
	IfxScuEru_setInterruptGatingPattern(IfxScuEru_OutputChannel_1, IfxScuEru_InterruptGatingPattern_alwaysActive);

}

void ISR_ENCODER_L()
{
	interrupt2_counter++;
//	if (interrupt2_counter == 150)
//	{
//		IfxGtm_Tom_Timer_stop(&Timer1);
//	}

}

void ISR_ENCODER_R()
{
	interrupt3_counter++;
//	if (interrupt3_counter == 150)
//	{
//		IfxGtm_Tom_Timer_stop(&Timer2);
//	}
}
