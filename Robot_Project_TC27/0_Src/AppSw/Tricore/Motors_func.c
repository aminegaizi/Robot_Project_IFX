/*#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include <Stm/Std/IfxStm.h>*/
#include "Motors_func.h"
#include "IfxPort.h"


/*---System Timer Declaration---*/
volatile Ifx_STM_TIM0 *TIM0 = &STM0_TIM0;
Ifx_STM *stm0 = &MODULE_STM0;
//Fsys = IfxStm_getFrequency(stm0);

/*---Port and Pin Declaration---*/
Ifx_P *port13 = &MODULE_P13;
Ifx_P *port2 = &MODULE_P02;
Ifx_P *port0 = &MODULE_P00;
Ifx_P *port14 = &MODULE_P14;
uint8 pin0 = 0;
uint8 pin1 = 1;
uint8 pin2 = 2;
uint8 pin3 = 3;
uint8 pin4 = 4;
int cycles = 0;



void GoAhead(int Time)
{

	//uint32 NbTicks = IfxStm_getTicksFromMilliseconds(stm0, Time);

	/*IfxPort_setPinModeOutput(port2, pin1, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port2, pin1);

	IfxPort_setPinModeOutput(port2, pin0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port2, pin0);*/

	//StartRightMotor();
	//StartLeftMotor();


	PWM(port2, pin0, 20, 0.20, Time);
	PWM(port2, pin1, 50, 0.40, Time);


	StopLeftMotor();
	StopRightMotor();

	/*IfxPort_setPinLow(port2, pin1);
	IfxPort_setPinLow(port2, pin0);*/

	/*min 30 ms 0.18 Duty or 25ms 0.24 Duty
	 Minimum is 5.4 ms in high state*/

	//IfxPort_setPinModeInput(port14, pin4, IfxPort_InputMode_pullDown);
	/*StartRightMotor();
	StartLeftMotor();

	IfxStm_waitTicks(stm0,NbTicks);

	StopLeftMotor();
	StopRightMotor();*/

	/*IfxPort_setPinLow(port2, pin1);
	IfxPort_setPinLow(port2, pin0);*/
}

void StartRightMotor()	//Sets the H Bridge and activates right motor
{

	/*H Bridge configuration
	High state on A Enable Port 02 pin 0*/
    //P02_IOCR0.B.PC0 = 0x10; // P02.0 as general purpose output
    //P02_OUT.B.P0 = 1; ; //High state on P02.0
	IfxPort_setPinModeOutput(port2, pin0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port2, pin0);

	//High state on IN1 on Port 00 pin 0
    //P00_IOCR0.B.PC0 = 0x10; // P00.0 as general purpose output
    //P00_OUT.B.P0 = 1; // High state on P00.0
	IfxPort_setPinModeOutput(port0, pin0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port0, pin0);

	//Low state on IN2 on Port 00 pin 1
    //P00_IOCR0.B.PC1 = 0x10;	// P00.1 as general purpose output
    //P00_OUT.B.P1 = 0; //Low state on P00.1
    IfxPort_setPinModeOutput(port0, pin1, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin1);
}

void StartLeftMotor()	//Sets the H Bridge and activates left motor
{
	/*H Bridge configuration
	High state on B Enable Port 2 pin 1*/
    //P02_IOCR0.B.PC1 = 0x10; // P02.1 as general purpose output
    //P02_OUT.B.P1 = 1; ; //High state on P02.1
	IfxPort_setPinModeOutput(port2, pin1, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port2, pin1);


	//High state on IN3 on Port 00 pin 2
    //P00_IOCR0.B.PC2 = 0x10; // P00.2 as general purpose output
    //P00_OUT.B.P2 = 1; ; //High state on P00.2
	IfxPort_setPinModeOutput(port0, pin2, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinHigh(port0, pin2);

	//Low state on IN4 on Port 00 pin 3
    //P00_IOCR0.B.PC3 = 0x10;	//P00.3 as general purpose output
    //P00_OUT.B.P3 = 0x00; //Low state on P00.3
	IfxPort_setPinModeOutput(port0, pin3, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin3);
}

void StopRightMotor()	//Sets the H Bridge and turns off right motor
{

	/*H Bridge configuration
	Low state on A Enable Port 02 pin 0*/
    //P02_IOCR0.B.PC0 = 0x10; // P02.0 as general purpose output
    //P02_OUT.B.P0 = 0; ; //Low state on P02.0
	IfxPort_setPinModeOutput(port2, pin0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port2, pin0);

    //P00_IOCR0.B.PC0 = 0x10; // P00.0 as general purpose output
    //P00_OUT.B.P0 = 0; // Low state on P00.0
	IfxPort_setPinModeOutput(port0, pin0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin0);
}

void StopLeftMotor()	//Sets the H Bridge and turns off left motor
{
	/*H Bridge configuration
	High state on B Enable Port 2 pin 1*/
    //P02_IOCR0.B.PC1 = 0x10; // P02.1 as general purpose output
    //P02_OUT.B.P1 = 0; ; //Low state on P02.1
	IfxPort_setPinModeOutput(port2, pin1, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port2, pin1);

    //P00_IOCR0.B.PC2 = 0x10; // P00.2 as general purpose output
    //P00_OUT.B.P2 = 0; ; //Low state on P00.2
	IfxPort_setPinModeOutput(port0, pin2, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(port0, pin2);

}

void PWM(Ifx_P *port, uint8 pin, int period, float duty_cycle, int total_time)
{
	cycles = (total_time/period)+1;
	int counter = 0;
	do {
		float UpTime = period*(1-duty_cycle);
		float DownTime = duty_cycle*period;
		uint32 UpTicks = IfxStm_getTicksFromMilliseconds(stm0, UpTime);
		uint32 DownTicks = IfxStm_getTicksFromMilliseconds(stm0, DownTime);

		IfxPort_setPinModeOutput(port, pin, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);

		IfxPort_setPinHigh(port, pin);
		IfxStm_waitTicks(stm0,UpTicks);

		IfxPort_setPinLow(port, pin);
		IfxStm_waitTicks(stm0, DownTicks);

		counter+=1;
	}while(counter<cycles);
	//IfxPort_setPinLow(port, pin);
}
