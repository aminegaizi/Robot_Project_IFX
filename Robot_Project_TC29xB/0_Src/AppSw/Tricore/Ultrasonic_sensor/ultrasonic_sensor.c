/*
 * ultrasonic_sensor.c
 *
 *  Created on: 10.09.2018
 *      Author: Bourgogn
 */

#include <Port/Io/IfxPort_Io.h>
#include <Stm/Std/IfxStm.h>
#include <Src/std/IfxSrc.h>
#include <IfxSrc_reg.h>
#include <_PinMap/IfxPort_pinMap.h>

#include <Ultrasonic_sensor/ultrasonic_sensor.h>


#define ULTRASONIC_SENSOR_ISR_PRIORITY 27

volatile uint64 t0 = 0;
volatile uint64 tf = 0 ;
volatile boolean bool_risingedge = TRUE;
Ifx_STM *stm_sfr = &MODULE_STM0;


IFX_INTERRUPT(isrGetDistance,0,ULTRASONIC_SENSOR_ISR_PRIORITY);


void configUltrasonicSensor()
{
//CONFIG FOR ULTRASONIC SENSOR
	//++++++++++++++++++++++++++++++++++++++++++++++++

	//in ERS7 and ERU3
	IfxPort_Pin port_pin_input = IfxPort_P20_9;

	//P20.9 equals to input 70
	IfxPort_setPinMode(port_pin_input.port, port_pin_input.pinIndex, IfxPort_InputMode_pullUp);
	//here i=3 because we are on EICR3

	//input 70 is selected, (2*i+1) 0
	//so the value of the register here is 0
	SCU_EICR3.B.EXIS1 = 0x0;


	//INTF is set on a rising edge
	SCU_EICR3.B.REN1 = 1;

//		//a falling edge event will reset INTF
//		SCU_EICR3.B.LDEN1 = 1;

	//trigger event enabled
	SCU_EICR3.B.EIEN1 = 1;

	//event triggered output to OGU3 because we are on ERU3
	SCU_EICR3.B.INP1 = 0x3;

	/*The trigger generation at a change of the
	pattern detection result is enabled
	*/
	SCU_IGCR1.B.GEEN1 = 1;

	/*The detected pattern is considered. IOUT(2j+1) is
	activated if a trigger event occurs while the
	pattern is present
	*/
	SCU_IGCR1.B.IGP1 = 0x1;

//++++++++++++++++++++++++++++++++++++++++++++++++
	IfxSrc_init(&(SRC_SCU_SCU_ERU3),0,ULTRASONIC_SENSOR_ISR_PRIORITY);
	IfxSrc_enable(&(SRC_SCU_SCU_ERU3));

}

void sendTrig(IfxPort_Pin port_pin_output)
{
	uint32 tick_10us = 0;
	tick_10us = IfxStm_getTicksFromMicroseconds(stm_sfr, 10);

	//set the output pin to high for 10 us, to activate trigger of the sensor
	IfxPort_setPinMode(port_pin_output.port,port_pin_output.pinIndex,IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinHigh(port_pin_output.port,port_pin_output.pinIndex);
	IfxStm_waitTicks(stm_sfr,tick_10us);
	IfxPort_setPinLow(port_pin_output.port,port_pin_output.pinIndex);
}

void isrGetDistance()
{
	//allow to change the edge detected
	SCU_EICR3.B.REN1 ^= 1;
	SCU_EICR3.B.FEN1 ^= 1;

	//get the time of start of the rising edge
	if(bool_risingedge == TRUE)
	{
		t0 = IfxStm_get(stm_sfr);
		bool_risingedge = FALSE;
	}
	//get the time of start of the falling edge
	else
	{
		tf = IfxStm_get(stm_sfr);
		bool_risingedge = TRUE;
	}
}

float64 returnDistance()
{
	//return the distance, divide by 1000 to get it cm
	return (tf - t0)*17/100;
}


