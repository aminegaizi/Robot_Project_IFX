/*
 * Motors.c
 *
 *  Created on: 19.11.2018
 *      Author: Gaizi
 */

#include "Motors.h"

IFX_INTERRUPT(STM_INTERRUPT_CORRECTION, 0, PRIORITY_ISR_ENSLAVEMENT); //Interrupt for the Proportional correction

extern volatile uint32 interruptLeft_counter;
extern volatile uint32 interruptRight_counter;

IfxStm_CompareConfig CompareCorrection;
Ifx_STM *stm2 = &MODULE_STM2;

volatile uint32 frequency = 0;


volatile int Encoders_Error = 2; //Difference between the two encoders gives information about the position error, initialized at 5 to compensate the lack of correction at the beginning
volatile uint8 Left_duty_cycle = 0; //Duty cycle sent to the left wheel
volatile uint8 Right_duty_cycle = 0; //Duty cycle sent to the right wheel
volatile float ticks = 0;


extern IfxGtm_Tom_Timer Timer1; //GTM Tom Timer for Left Wheel PWM
extern IfxGtm_Tom_Timer Timer2; //GTM Tom Timer for Right Wheel PWM

volatile uint8 commande_movement = 0; //Trigger Flag for movement enslavement
volatile int Flag = 0;
//Structure for the Proportional correction coefficients

P_coefficient Forward_correction = {-9.0,-9.375,-3.0}; //Forward Proportional correction factors
P_coefficient Backward_correction = {-9.0,-10.75,-4.0}; //Backward Proportional correction factors
P_coefficient Right_correction = {0.0,-10.75,0.0}; //Backward Proportional correction factors
P_coefficient Left_correction = {0.0,-10.75,0.0}; //Backward Proportional correction factors

 void Forward_1()
 {
	Left_duty_cycle = 37;
 	Right_duty_cycle = 25;

 	/*Configuration of the General Purpose Outputs for the H-Bridge*/
 	P00_IOCR4.B.PC4 = 0x10; //In2
 	P00_IOCR4.B.PC6 = 0x10; //EnA
 	P33_IOCR0.B.PC2 = 0x10; //In4
 	P33_IOCR4.B.PC4 = 0x10; //EnB


 	PWM_config(IfxGtm_TOM0_3_TOUT21_P00_12_OUT); //In1 PWM signal configuration
 	IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty1

 	PWM2_config(IfxGtm_TOM0_2_TOUT28_P33_6_OUT); //In3 PWM signal configuration
 	IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty2

 	//--Motors On
	P00_OUT.B.P6 = 1; //EnA = 1
	P00_OUT.B.P4 = 0; //In2 = 0

	P33_OUT.B.P4 = 1; //EnB = 1
	P33_OUT.B.P2 = 0; //In4 = 0

	commande_movement = 1;
 }

 void Backward_1()
 {

 	Left_duty_cycle = 40;//35
 	Right_duty_cycle = 25;//15

 	/*Config of the General Purpose Outputs for the H-Bridge*/
 	P00_IOCR12.B.PC12 = 0x10;
 	P00_IOCR4.B.PC6 = 0x10;
 	P33_IOCR4.B.PC6 = 0x10;
 	P33_IOCR4.B.PC4 = 0x10;

 	PWM_config(IfxGtm_TOM1_3_TOUT13_P00_4_OUT); //In2 PWM signal configuration
 	IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty cycle

 	PWM2_config(IfxGtm_TOM0_6_TOUT24_P33_2_OUT);//In4 PWM signal configuration
 	IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of duty cycle

	P00_OUT.B.P6 = 1; //EnA = 1
	P00_OUT.B.P12 = 0; //In1 = 0
	P33_OUT.B.P4 = 1; //EnB = 1
	P33_OUT.B.P6 = 0; //In3 = 0

	commande_movement = 2;

 }

 void Right()
 {
	Left_duty_cycle = 20;
	Right_duty_cycle = 20;//

  	/*Configuration of the General Purpose Outputs for the H-Bridge*/
  	P00_IOCR12.B.PC12 = 0x10; //In1
  	P00_IOCR4.B.PC6 = 0x10; //EnA
  	P33_IOCR0.B.PC2 = 0x10; //In4
  	P33_IOCR4.B.PC4 = 0x10; //EnB

 	PWM_config(IfxGtm_TOM1_3_TOUT13_P00_4_OUT); //In2 PWM signal configuration
 	PWM2_config(IfxGtm_TOM0_2_TOUT28_P33_6_OUT); //In3 PWM signal configuration

 	IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100);
  	IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100);

  	//--Motors On
 	P00_OUT.B.P6 = 1; //EnA = 1
 	P00_OUT.B.P12 = 0; //In1 = 0

 	P33_OUT.B.P4 = 1; //EnB = 1
 	P33_OUT.B.P2 = 0; //In4 = 0

 	commande_movement = 3; //Flag for turning Right
 }

 void Left()
 {
	Left_duty_cycle = 25;
	Right_duty_cycle = 25;

 	/*Config of the General Purpose Outputs for the H-Bridge*/
  	P00_IOCR4.B.PC4 = 0x10; //In2
  	P00_IOCR4.B.PC6 = 0x10; //EnA
  	P33_IOCR4.B.PC6 = 0x10; //In3
  	P33_IOCR4.B.PC4 = 0x10; //EnB

 	PWM_config(IfxGtm_TOM1_3_TOUT21_P00_12_OUT); //In1 PWM signal configuration
 	PWM2_config(IfxGtm_TOM0_6_TOUT24_P33_2_OUT); //In4 PWM signal configuration

 	IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100);
  	IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100);

  	//--Motors On
 	P00_OUT.B.P6 = 1; //EnA = 1
 	P00_OUT.B.P4 = 0; //In2 = 0

 	P33_OUT.B.P4 = 1; //EnB = 1
 	P33_OUT.B.P6 = 0; //In3 = 0

 	//commande_movement = 4; //Flag for Forward Acceleration
 }

void STM_INTERRUPT_CORRECTION()
{
	IfxStm_clearCompareFlag(stm2,CompareCorrection.comparator); //Clear interrupt Flag
	Flag += 1;
	Encoders_Error = interruptRight_counter - interruptLeft_counter; //Calculate the value of the error (in encoder ticks) between the two wheels
	if (commande_movement == 1) //Moving Forward
	{
			Right_duty_cycle = 35;
			Left_duty_cycle = Right_duty_cycle - (Forward_correction.stable * Encoders_Error);

			IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Right_duty_cycle
			IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Left_duty_cycle

	}
	if (commande_movement == 2) //Moving Backward
	{

		Right_duty_cycle = 35;
		Left_duty_cycle = Right_duty_cycle - (Backward_correction.stable * Encoders_Error);

		IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Right_duty_cycle
		IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Left_duty_cycle

	}
	if (commande_movement == 3) //Turning right
	{
		Right_duty_cycle = 20;
		Left_duty_cycle = Right_duty_cycle - (Right_correction.stable * Encoders_Error);

		IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Right_duty_cycle
		IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Left_duty_cycle

	}
	if (commande_movement == 4) //Turning Left
	{
			Right_duty_cycle = 25;
			Left_duty_cycle = Right_duty_cycle - (Left_correction.stable * Encoders_Error);

			IfxGtm_Tom_Timer_setTrigger(&Timer1, (Right_duty_cycle * Timer1.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Right_duty_cycle
			IfxGtm_Tom_Timer_setTrigger(&Timer2, (Left_duty_cycle * Timer2.base.period) / 100); //Triggers PWM; Change to duty cycle by changing the value of Left_duty_cycle

	}
	IfxStm_increaseCompare(stm2, CompareCorrection.comparator, frequency/100); //set the interrupt to happen in 10ms
}


void timer_compare(Ifx_Priority PRIORITY, IfxStm_CompareConfig CompareConfig, Ifx_STM *stm)
{
       frequency = IfxStm_getFrequency(stm); //Get the frequency at which the System Timer used for the interrupt is running
       boolean interruptState = IfxCpu_disableInterrupts();

       //	---Interrupt Config---
       IfxStm_initCompareConfig(&CompareConfig);
       CompareConfig.triggerPriority = PRIORITY;
       CompareConfig.typeOfService = IfxSrc_Tos_cpu0; //Interrupt in Cpu0
       CompareConfig.ticks = frequency/100; //Interrupt starts at 10ms
       IfxStm_initCompare(stm, &CompareConfig);

       IfxStm_enableComparatorInterrupt(stm, CompareConfig.comparator);
       IfxCpu_restoreInterrupts(interruptState);
}

void Motors_initialization()
{

	timer_compare(PRIORITY_ISR_ENSLAVEMENT, CompareCorrection, stm2); //Configuration of the enslavement interrupt
	IfxStm_enableComparatorInterrupt(stm2, CompareCorrection.comparator); //Enable STM interrupt
}

void Motors_stop()
{
	//Disable the H-Bridge
	P00_OUT.B.P6 = 0; //EnA = 0
	P33_OUT.B.P4 = 0; //EnB = 0

	//Stop the PWM signals
 	IfxGtm_Tom_Timer_stop(&Timer1); //Stops Timer1 PWM signal (In1 = 0)
 	IfxGtm_Tom_Timer_stop(&Timer2); //Stops Timer2 PWM signal (In3 = 0)
}

