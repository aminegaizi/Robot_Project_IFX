/*
 * ultrasonic_sensor.c
 *
 *  Created on: 10.09.2018
 *      Author: Bourgogn
 */
#include "ultrasonic_sensor.h"


volatile uint64 t0 = 0;
volatile uint64 tf = 0 ;
volatile boolean bool_risingedge = TRUE;
Ifx_STM *stm_sfr = &MODULE_STM0;

IFX_INTERRUPT(isrGetDistance,0,PRIORITY_ISR_ULTRASONIC);

/*
 * Ultrasonic sensor configuration: External Request Unit that interrupts at each rising and falling edge
 */
void configUltrasonicSensor()
{
	IfxPort_Pin port_pin_input = IfxPort_P20_9; //in ERS7 and ERU3
	IfxPort_setPinMode(port_pin_input.port, port_pin_input.pinIndex, IfxPort_InputMode_pullUp); //P20.9 equals to input 70

	SCU_EICR3.B.EXIS1 = 0x0;  //here i=3 because we are on EICR3, input 70 is selected, (2*i+1) 0, so the value of the register here is 0
	SCU_EICR3.B.REN1 = 1; 	//INTF is set on a rising edge

	SCU_EICR3.B.EIEN1 = 1; //a falling edge event will reset INTF SCU_EICR3.B.LDEN1 = 1; trigger event enabled
	SCU_EICR3.B.INP1 = 0x3; //event triggered output to OGU3 because we are on ERU3
	SCU_IGCR1.B.GEEN1 = 1; 	//The trigger generation at a change of the pattern detection result is enabled

	SCU_IGCR1.B.IGP1 = 0x1; //The detected pattern is considered. IOUT(2j+1) is activated if a trigger event occurs while the pattern is present

	IfxSrc_init(&(SRC_SCU_SCU_ERU3),0,PRIORITY_ISR_ULTRASONIC);
	IfxSrc_enable(&(SRC_SCU_SCU_ERU3));
}

/*
 * Function that sends triggers: 10 rising edges each 10us to generate the Ultrasonic Waves
 */
void sendTrig(IfxPort_Pin port_pin_output)
{
	//set the output pin to high for 10 us, to activate trigger of the sensor
	IfxPort_setPinMode(port_pin_output.port,port_pin_output.pinIndex,IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinHigh(port_pin_output.port,port_pin_output.pinIndex);
	waitTime(TimeConst_10us);
	IfxPort_setPinLow(port_pin_output.port,port_pin_output.pinIndex);

}

/*
 * Function that processes the values given by the Ultrasonic sensor
 */
void isrGetDistance()
{
	//allow to change the edge detected
	SCU_EICR3.B.REN1 ^= 1;
	SCU_EICR3.B.FEN1 ^= 1;

	if(bool_risingedge == TRUE) //get the time of start of the rising edge
	{
		t0 = IfxStm_get(stm_sfr);
		bool_risingedge = FALSE;
	}
	else //get the time of start of the falling edge
	{
		tf = IfxStm_get(stm_sfr);
		bool_risingedge = TRUE;
	}
}

/*
 * Calculates the value of the distance
 */
float64 returnDistance()
{
	return (tf - t0)*17/1000; //return the distance, divide by 1000 to get it cm
}

