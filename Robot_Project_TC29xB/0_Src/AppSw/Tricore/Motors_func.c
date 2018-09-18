/*#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include <Stm/Std/IfxStm.h>*/
#include "Motors_func.h"
#include "IfxPort.h"
#include "PWM_config.h"

/*---System Timer Declaration---*/
volatile Ifx_STM_TIM0 *TIM0 = &STM0_TIM0;
Ifx_STM *stm0 = &MODULE_STM0;
//Fsys = IfxStm_getFrequency(stm0);

extern IfxGtm_Tom_Timer Timer1;
extern IfxGtm_Tom_Timer Timer2;

extern volatile uint32 interruptRight_counter;
extern volatile uint32 interruptLeft_counter;


/*---Port and Pin Declaration---*/
Ifx_P *port13 = &MODULE_P13;
Ifx_P *port2 = &MODULE_P02;
Ifx_P *port0 = &MODULE_P00;
Ifx_P *port14 = &MODULE_P14;
Ifx_P *port33 = &MODULE_P33;
uint8 pin0 = 0;
uint8 pin1 = 1;
uint8 pin2 = 2;
uint8 pin3 = 3;
uint8 pin4 = 4;
uint8 pin6 = 6;


void StartRightMotor()	//Sets the H Bridge and activates right motor
{

	/*H Bridge configuration
	High state on A Enable Port 02 pin 0*/
    //P02_IOCR0.B.PC0 = 0x10; // P02.0 as general purpose output
    //P02_OUT.B.P0 = 1; ; //High state on P02.0
	//IfxPort_setPinModeOutput(port2, pin0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    //IfxPort_setPinHigh(port2, pin0);

	//High state on IN1 on Port 00 pin 0
    //P00_IOCR0.B.PC0 = 0x10; // P00.0 as general purpose output
    //P00_OUT.B.P0 = 1; // High state on P00.0
	IfxPort_setPinModeOutput(port0, pin6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port0, pin6);

	//Low state on IN2 on Port 00 pin 1
    //P00_IOCR0.B.PC1 = 0x10;	// P00.1 as general purpose output
    //P00_OUT.B.P1 = 0; //Low state on P00.1
    IfxPort_setPinModeOutput(port0, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin4);
}

void StartLeftMotor()	//Sets the H Bridge and activates left motor
{
	/*H Bridge configuration
	High state on B Enable Port 2 pin 1*/
    //P02_IOCR0.B.PC1 = 0x10; // P02.1 as general purpose output
    //P02_OUT.B.P1 = 1; ; //High state on P02.1
	//IfxPort_setPinModeOutput(port2, pin1, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    //IfxPort_setPinHigh(port2, pin1);


	//High state on IN3 on Port 00 pin 2
    //P00_IOCR0.B.PC2 = 0x10; // P00.2 as general purpose output
    //P00_OUT.B.P2 = 1; ; //High state on P00.2
	IfxPort_setPinModeOutput(port33, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port33, pin4);

	//Low state on IN4 on Port 00 pin 3
    //P00_IOCR0.B.PC3 = 0x10;	//P00.3 as general purpose output
    //P00_OUT.B.P3 = 0x00; //Low state on P00.3
	IfxPort_setPinModeOutput(port33, pin2, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port33, pin2);
}

void StopRightMotor()	//Sets the H Bridge and turns off right motor
{

	/*H Bridge configuration
	Low state on A Enable Port 02 pin 0*/
    //P02_IOCR0.B.PC0 = 0x10; // P02.0 as general purpose output
    //P02_OUT.B.P0 = 0; ; //Low state on P02.0
	IfxPort_setPinModeOutput(port0, pin6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin6);

    //P00_IOCR0.B.PC0 = 0x10; // P00.0 as general purpose output
    //P00_OUT.B.P0 = 0; // Low state on P00.0
	IfxPort_setPinModeOutput(port0, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin4);
}

void StopLeftMotor()	//Sets the H Bridge and turns off left motor
{
	/*H Bridge configuration
	High state on B Enable Port 2 pin 1*/
    //P02_IOCR0.B.PC1 = 0x10; // P02.1 as general purpose output
    //P02_OUT.B.P1 = 0; ; //Low state on P02.1
	IfxPort_setPinModeOutput(port33, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port33, pin4);

    //P00_IOCR0.B.PC2 = 0x10; // P00.2 as general purpose output
    //P00_OUT.B.P2 = 0; ; //Low state on P00.2
	IfxPort_setPinModeOutput(port33, pin2, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port33, pin2);

}

/*
 * Input parameter distance in cm
 * This function make the robot go forward (The little white direction wheel is at the back of the robot)
 */
void Forward(float distance)
{
	/*Reset the Value of the encoder interrupt counter*/
	interruptLeft_counter = 0;
	interruptRight_counter = 0;

	float ticks = (20*distance)/22.9; //Wheels diameter is 22.9cm and a full rotation of the wheel is 20 ticks
	uint8 duty1 = 46;
	uint8 duty2 = 80;

	/*Config of the General Purpose Outputs for the H-Bridge*/
	IfxPort_setPinModeOutput(port0, pin6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port0, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, pin2, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);

	PWM_config(IfxGtm_TOM0_3_TOUT21_P00_12_OUT); //In1 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer1, (duty1 * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty1

	PWM2_config(IfxGtm_TOM2_12_TOUT34_P33_12_OUT); //In3 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer2, (duty2 * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty2
	do
	{
	    IfxPort_setPinHigh(port0, pin6); //EnA = 1;
	    IfxPort_setPinLow(port0, pin4);  //In2 = 0;

	    IfxPort_setPinHigh(port33, pin4); //EnB = 1;
	    IfxPort_setPinLow(port33, pin2);  //In4 = 0;

	}while(interruptLeft_counter <= ticks && interruptRight_counter <= ticks);

    IfxPort_setPinLow(port0, pin6); //EN A = 0;
    IfxPort_setPinLow(port33, pin4); //EN B = 0;


	IfxGtm_Tom_Timer_stop(&Timer1); //Stops Timer1 PWM signal (In1 = 0)
	IfxGtm_Tom_Timer_stop(&Timer2); //Stops Timer1 PWM signal (In3 = 0)
}
/*
 * Input parameter distance in cm
 * This function make the robot go backward (The little white direction wheel is at the back of the robot)
 */
void Backward (float distance)
{
	/*Reset the Value of the encoder interrupt counter*/
	interruptLeft_counter = 0;
	interruptRight_counter = 0;

	float ticks = (20*distance)/22.9; //Wheels diameter is 22.9cm and a full rotation of the wheel is 20 ticks
	uint8 duty1 = 45;
	uint8 duty2 = 66;

	/*Config of the General Purpose Outputs for the H-Bridge*/
	IfxPort_setPinModeOutput(port0, pin6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port0, 12, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, 12, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);

	PWM_config(IfxGtm_TOM1_3_TOUT13_P00_4_OUT); //In2 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer1, (duty1 * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty1

	PWM2_config(IfxGtm_TOM0_6_TOUT24_P33_2_OUT);//In4 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer2, (duty2 * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty2
	do
	{
	    IfxPort_setPinHigh(port0, pin6);//EnA = 1
	    IfxPort_setPinLow(port0, 12);//In1 = 0

	    IfxPort_setPinHigh(port33, pin4);//EnB = 1
	    IfxPort_setPinLow(port33, 12);//In4 = 0

	}while(interruptLeft_counter <= ticks && interruptRight_counter <= ticks);

    IfxPort_setPinLow(port0, pin6); //EnA = 0
    IfxPort_setPinLow(port33, pin4); //EnB = 0

	IfxGtm_Tom_Timer_stop(&Timer1); //Stops Timer1 PWM signal (In2 = 0)
	IfxGtm_Tom_Timer_stop(&Timer2); //Stops Timer1 PWM signal (In4 = 0)
}
/*
 * Input parameter angle in degrees
 * this function makes one wheel go forward and the other one go backward so the robot turns to the specified angle
 */
void Right (float angle)
{
	/*Reset the Value of the encoder interrupt counter*/
	interruptLeft_counter = 0;
	interruptRight_counter = 0;

	float TurningDistance = (2*3.14*22.9)/(360/angle);
	float TicksDistance = (TurningDistance*20)/229;
	float ticks = (TicksDistance*angle)/360; //Distance a wheel travel for a 90 degree angle is equal to 32 ticks
	uint8 duty1 = 25;
	uint8 duty2 = 25;
	/*Config of the General Purpose Outputs for the H-Bridge*/
	IfxPort_setPinModeOutput(port0, pin6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port0, 12, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, 2, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);

	PWM_config(IfxGtm_TOM1_3_TOUT13_P00_4_OUT); //In2 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer1, (duty1 * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty1

	PWM2_config(IfxGtm_TOM2_12_TOUT34_P33_12_OUT); //In3 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer2, (duty2 * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty2
	do
	{
	    IfxPort_setPinHigh(port0, pin6);//EnA = 1
	    IfxPort_setPinHigh(port33, pin4);//EnB= 1
	    IfxPort_setPinLow(port0, 12);//In1 = 0
	    IfxPort_setPinLow(port33, 2);//In4 = 0

	}while(interruptLeft_counter <= ticks && interruptRight_counter <= ticks);

    IfxPort_setPinLow(port0, pin6); //EnA = 0
    IfxPort_setPinLow(port33, pin4); //EnB = 0

    IfxGtm_Tom_Timer_stop(&Timer1);//Stops Timer1 PWM signal (In2 = 0)
	IfxGtm_Tom_Timer_stop(&Timer2);//Stops Timer1 PWM signal (In3 = 0)

}
/*
 * Input parameter angle in degrees
 * this function makes one wheel go forward and the other one go backward so the robot turns to the specified angle
 */
void Left (float angle)
{
	/*Reset the Value of the encoder interrupt counter*/
	interruptLeft_counter = 0;
	interruptRight_counter = 0;

	float ticks = (32*angle)/360; //Wheels diameter is 22.9cm and a full rotation of the wheel is 20 ticks
	uint8 duty1 = 25;
	uint8 duty2 = 25;
	/*Config of the General Purpose Outputs for the H-Bridge*/
	IfxPort_setPinModeOutput(port0, pin6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port0, pin4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(port33, 12, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);


	PWM_config(IfxGtm_TOM1_3_TOUT21_P00_12_OUT); //In1 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer1, (duty1 * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty1

	PWM2_config(IfxGtm_TOM0_6_TOUT24_P33_2_OUT); //In4 PWM signal configuration
	IfxGtm_Tom_Timer_setTrigger(&Timer2, (duty2 * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty2
	do
	{
	    IfxPort_setPinHigh(port0, pin6);//EnA = 1
	    IfxPort_setPinHigh(port33, pin4);//EnB = 1
	    IfxPort_setPinLow(port0, pin4);//In2 = 0
	    IfxPort_setPinLow(port33, 12);//In3 = 0

	}while(interruptLeft_counter <= ticks && interruptRight_counter <= ticks);

    IfxPort_setPinLow(port0, pin6); //EnA = 0
    IfxPort_setPinLow(port33, pin4); //EnB = 0

    IfxGtm_Tom_Timer_stop(&Timer1); //Stops Timer1 PWM signal (In1 = 0)
	IfxGtm_Tom_Timer_stop(&Timer2); //Stops Timer1 PWM signal (In4 = 0)
}
