/*
 * Encoders_config.c
 *
 *  Created on: 05.09.2018
 *      Author: Gaizi
 */

#include "Encoders_config.h"

//extern IfxGtm_Tom_Timer Timer1;
//extern IfxGtm_Tom_Timer Timer2;

IFX_INTERRUPT(ISR_ENCODER_L, 0, 1);
IFX_INTERRUPT(ISR_ENCODER_R, 0, 2);

volatile uint32 interruptLeft_counter = 0;
volatile uint32 interruptRight_counter = 0;

/*
 * This function configures an external interrupt using the External Request Unit(ERU)
 * Whenever a high state is sent to the input pin(s) configured, ISR_ENCODER_L() and/or ISR_ENCODER_R() are triggered
 */
void Encoders_config()
{
	volatile Ifx_SRC_SRCR *src;
	volatile Ifx_SRC_SRCR *src1;

	/*First Interrupt configuration, Port 10 pin 7 is used as input*/
	src = &MODULE_SRC.SCU.SCU.ERU[0];
	//We setup the ERU0 interrupt
	IfxSrc_init(src, IfxCpu_Irq_getTos(IfxCpu_getCoreId()), 1);
	IfxSrc_enable(src);
	//Initialization of ERU + Rising edge and Falling Edge detection config
	IfxScuEru_initReqPin(&IfxScu_REQ4_P10_7_IN, IfxPort_InputMode_noPullDevice);
	IfxScuEru_enableRisingEdgeDetection((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId);
	IfxScuEru_enableFallingEdgeDetection((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId);
	//We use the OGU0
	IfxScuEru_connectTrigger((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId, IfxScuEru_InputNodePointer_0);
	IfxScuEru_enableTriggerPulse((IfxScuEru_InputChannel) IfxScu_REQ4_P10_7_IN.channelId);
	IfxScuEru_setInterruptGatingPattern(IfxScuEru_OutputChannel_0, IfxScuEru_InterruptGatingPattern_alwaysActive);

	/*Second Interrupt configuration, Port 15 pin 5 is used as input*/
	src1 = &MODULE_SRC.SCU.SCU.ERU[1];
	//We setup the ERU1 interrupt
	IfxSrc_init(src1, IfxCpu_Irq_getTos(IfxCpu_getCoreId()), 2);
	IfxSrc_enable(src1);
	//Initialization of ERU + Rising edge and Falling Edge detection config
	IfxScuEru_initReqPin(&IfxScu_REQ13_P15_5_IN, IfxPort_InputMode_noPullDevice);
	IfxScuEru_enableRisingEdgeDetection((IfxScuEru_InputChannel) IfxScu_REQ13_P15_5_IN.channelId);
	IfxScuEru_enableFallingEdgeDetection((IfxScuEru_InputChannel) IfxScu_REQ13_P15_5_IN.channelId);
	//We use the OGU1
	IfxScuEru_connectTrigger((IfxScuEru_InputChannel) IfxScu_REQ13_P15_5_IN.channelId, IfxScuEru_InputNodePointer_1);
	IfxScuEru_enableTriggerPulse((IfxScuEru_InputChannel) IfxScu_REQ13_P15_5_IN.channelId);
	IfxScuEru_setInterruptGatingPattern(IfxScuEru_OutputChannel_1, IfxScuEru_InterruptGatingPattern_alwaysActive);

}

void ISR_ENCODER_L()
{
	interruptLeft_counter++;

}

void ISR_ENCODER_R()
{
	interruptRight_counter++;
}
