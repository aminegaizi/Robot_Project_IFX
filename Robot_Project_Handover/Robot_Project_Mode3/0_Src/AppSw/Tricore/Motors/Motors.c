/*
 * Motors.c
 *
 *  Created on: 19.11.2018
 *      Author: Gaizi
 */

#include "Motors.h"

IFX_INTERRUPT(STM_INTERRUPT_CORRECTION, 0, PRIORITY_ISR_ENSLAVEMENT); //Interrupt for the Proportional correction

IfxStm_CompareConfig CompareCorrection;
Ifx_STM *stm2 = &MODULE_STM2;

extern PWM_Timers Timers;
extern boolean Gyro_stable;
extern error Error;

volatile uint32 frequency = 0;
volatile int Encoders_Error = 0; //Difference between the two encoders gives information about the position error, initialized at 5 to compensate the lack of correction at the beginning
volatile uint8 Left_duty_cycle = 0; //Duty cycle sent to the left wheel
volatile uint8 Right_duty_cycle = 0; //Duty cycle sent to the right wheel
volatile uint8 command_movement = 0; //Trigger Flag for movement enslavement


/*
 * void Foward_1()
 * Function used to set the H-Bridge and PWM pins for going Forward and then sets a flag to make the robot move forward
 */
 void Forward_1()
 {

	/*Configuration of the General Purpose Outputs for the H-Bridge*/
	P00_IOCR4.B.PC4 = 0x10; //In2
	P00_IOCR4.B.PC6 = 0x10; //EnA
	P33_IOCR0.B.PC2 = 0x10; //In4
	P33_IOCR4.B.PC4 = 0x10; //EnB

	//--Motors On
	P00_OUT.B.P6 = 1; //EnA = 1
	P00_OUT.B.P4 = 0; //In2 = 0

	P33_OUT.B.P4 = 1; //EnB = 1
	P33_OUT.B.P2 = 0; //In4 = 0

	PWM_init(PWM_IN1_BRIDGE, &Timers.PWM1_Bridge, 800); //Init PWM for IN1 pin of H-Bridge
	PWM_init(PWM_IN3_BRIDGE, &Timers.PWM2_Bridge, 800);//Init PWM for IN3 pin of H-Bridge

	command_movement = 1;
 }

 /*
  * void Backward_1()
  * Function used to set the H-Bridge and PWM pins for going Backwards and then sets a flag to make the robot move backwards
  */
 void Backward_1()
 {

	/*Config of the General Purpose Outputs for the H-Bridge*/
	P00_IOCR12.B.PC12 = 0x10;
	P00_IOCR4.B.PC6 = 0x10;
	P33_IOCR4.B.PC6 = 0x10;
	P33_IOCR4.B.PC4 = 0x10;

	//--Motors On
	P00_OUT.B.P6 = 1; //EnA = 1
	P00_OUT.B.P12 = 0; //In1 = 0

	P33_OUT.B.P4 = 1; //EnB = 1
	P33_OUT.B.P6 = 0; //In3 = 0

	PWM_init(PWM_IN2_BRIDGE, &Timers.PWM1_Bridge, 800); //Init PWM for IN2 pin of H-Bridge
	PWM_init(PWM_IN4_BRIDGE, &Timers.PWM2_Bridge, 800);//Init PWM for IN4 pin of H-Bridge

	command_movement = 2;
 }

 /*
  * void Right()
  * Function used to set the H-Bridge and PWM pins for the left wheel going Forward and Right wheel going Backward
  * this makes the robot turn to the right
  */
 void Right()
 {

	/*Configuration of the General Purpose Outputs for the H-Bridge*/
	P00_IOCR12.B.PC12 = 0x10; //In1
	P00_IOCR4.B.PC6 = 0x10; //EnA
	P33_IOCR0.B.PC2 = 0x10; //In4
	P33_IOCR4.B.PC4 = 0x10; //EnB

	//--Motors On
	P00_OUT.B.P6 = 1; //EnA = 1
	P00_OUT.B.P12 = 0; //In1 = 0

	P33_OUT.B.P4 = 1; //EnB = 1
	P33_OUT.B.P2 = 0; //In4 = 0

	PWM_init(PWM_IN2_BRIDGE, &Timers.PWM1_Bridge, 800); //Init PWM for IN2 pin of H-Bridge
	PWM_init(PWM_IN3_BRIDGE, &Timers.PWM2_Bridge, 800); //Init PWM for IN3 pin of H-Bridge

	command_movement = 3; //Flag for turning Right
 }

 /*
  * void Left()
  * Function used to set the H-Bridge and PWM pins for the Right wheel going Forward and Left wheel going Backward
  * this makes the robot turn to the left
  */
 void Left()
 {

	/*Config of the General Purpose Outputs for the H-Bridge*/
	P00_IOCR4.B.PC4 = 0x10; //In2
	P00_IOCR4.B.PC6 = 0x10; //EnA
	P33_IOCR4.B.PC6 = 0x10; //In3
	P33_IOCR4.B.PC4 = 0x10; //EnB

	//--Motors On
	P00_OUT.B.P6 = 1; //EnA = 1
	P00_OUT.B.P4 = 0; //In2 = 0

	P33_OUT.B.P4 = 1; //EnB = 1
	P33_OUT.B.P6 = 0; //In3 = 0

	PWM_init(PWM_IN1_BRIDGE, &Timers.PWM1_Bridge, 800); //Init PWM for IN1 pin of H-Bridge
	PWM_init(PWM_IN4_BRIDGE, &Timers.PWM2_Bridge, 800); //Init PWM for IN4 pin of H-Bridge

	command_movement = 4; //Flag for Turning Left
 }


 /*
  * void STM_INTERRUPT_CORRECTION()
  * This is the timer interrupt handling the enslavement.
  * The gyroscope needs some time to calibrate itseld. Gyro_stable = 1 means that the gyroscope is calibrated (look at timer GTM Timer interrupt)
  * If the gyroscope has had enough time to calibrate itself, and that the error is superior to a threshold (since cour sensors are not very precise,
  * we want to avoid having a control systems that tries to correct itself everytime because of flawed values)
  * 	Then we launch the state mahcine in charge of the enslavement (look at enslavement.c)
  *
  */
void STM_INTERRUPT_CORRECTION()
{
	IfxStm_clearCompareFlag(stm2,CompareCorrection.comparator); //Clear interrupt Flag

	if(Gyro_stable && abs(Error.linear) > 3.0)
	{
		Commande_Motors();
	}

	IfxStm_increaseCompare(stm2, CompareCorrection.comparator, frequency/100); //set the interrupt to happen in 10ms
}

/*
* void timer_compare()
* Function used to initialize the System Timer Module interrupt
* It uses the Compare Match Unit of the module, when the STM counts to a particular value, it goes through the ISR
* The frequency of the module gives the value to which it has to count for 1 second
*/
void timer_compare(Ifx_Priority PRIORITY, IfxStm_CompareConfig CompareConfig, Ifx_STM *stm)
{
       frequency = IfxStm_getFrequency(stm); //Get the frequency at which the System Timer used for the interrupt is running
       boolean interruptState = IfxCpu_disableInterrupts();

       IfxStm_initCompareConfig(&CompareConfig);
       CompareConfig.triggerPriority = PRIORITY;
       CompareConfig.typeOfService = IfxSrc_Tos_cpu0; //Interrupt in Cpu0
       CompareConfig.ticks = frequency/100; //Interrupt starts at 10ms
       IfxStm_initCompare(stm, &CompareConfig);

       IfxStm_enableComparatorInterrupt(stm, CompareConfig.comparator);
       IfxCpu_restoreInterrupts(interruptState);
}

/*
 * void Motors_initialization()
 * configures and enables the timer interrupt taking care the movement's enslavement
 */
void Motors_initialization()
{
	timer_compare(PRIORITY_ISR_ENSLAVEMENT, CompareCorrection, stm2); //Configuration of the enslavement interrupt
	IfxStm_enableComparatorInterrupt(stm2, CompareCorrection.comparator); //Enable STM interrupt
}

/*
 * void Motors_stop() resets the enable pins of the H-Bridge and stops the PWM signals
 * This results in stopping the motors.
 *
 */
void Motors_stop()
{
	//Disable the H-Bridge
	P00_OUT.B.P6 = 0; //EnA = 0
	P33_OUT.B.P4 = 0; //EnB = 0
	command_movement = 0;

	//Set PWM duty cycles to 0
	PWM_setDuty(Timers.PWM1_Bridge, 0);
	PWM_setDuty(Timers.PWM2_Bridge, 0);

	//Stop the PWM signals
 	IfxGtm_Tom_Timer_stop(&Timers.PWM1_Bridge); //Stops Timer1 PWM signal (In1 = 0)
 	IfxGtm_Tom_Timer_stop(&Timers.PWM2_Bridge); //Stops Timer2 PWM signal (In3 = 0)
}

