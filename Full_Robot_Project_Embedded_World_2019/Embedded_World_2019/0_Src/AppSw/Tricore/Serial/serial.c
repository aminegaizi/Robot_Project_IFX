/*
serial.c: Serial connection managment
by: Virgile Colrat
Date: 09/2018
*/

#include "serial.h"



static IfxAsclin_Asc serialDriver;

static uint8 ascTxBuffer[SERIAL_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
static uint8 ascRxBuffer[SERIAL_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];

IFX_INTERRUPT(serialTxISR, 0, PRIORITY_ISR_SERIAL_TX);//interrupt transmit function
IFX_INTERRUPT(serialRxISR, 0, PRIORITY_ISR_SERIAL_RX);//interrupt reception function
IFX_INTERRUPT(serialErISR, 0, PRIORITY_ISR_SERIAL_ER);//interrupt error function

extern volatile uint8 commande_movement;
extern int ModeSelector;
int Mode2_flag = 0;
int Mode1_flag = 0;
int Servo_Enable = 0;
extern IfxGtm_Atom_Timer timerObstacleAvoidance;

char message='0';

/*
 * Serial Bluetooth communication configuration
 */
void serial_config() {
	// create module config
	IfxAsclin_Asc_Config ascConfig;

	//initialize ASC module
	IfxAsclin_Asc_initModuleConfig(&ascConfig, SERIAL_PIN_RX.module);

	// set the desired baudrate
	ascConfig.baudrate.prescaler = 1;
	ascConfig.baudrate.baudrate = SERIAL_BAUDRATE; // FDR values will be calculated in initModule

	// ISR priorities and interrupt target
	ascConfig.interrupt.txPriority = PRIORITY_ISR_SERIAL_TX;
	ascConfig.interrupt.rxPriority = PRIORITY_ISR_SERIAL_RX;
	ascConfig.interrupt.erPriority = PRIORITY_ISR_SERIAL_ER;
	ascConfig.interrupt.typeOfService = IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());

	// FIFOs configuration
	ascConfig.txBuffer = &ascTxBuffer;
	ascConfig.txBufferSize = SERIAL_TX_BUFFER_SIZE;

	ascConfig.rxBuffer = &ascRxBuffer;
	ascConfig.rxBufferSize = SERIAL_RX_BUFFER_SIZE;

	// pin configuration
	const IfxAsclin_Asc_Pins pins = {
		NULL_PTR,	IfxPort_InputMode_pullUp,    // CTS pin not used
		&SERIAL_PIN_RX,	IfxPort_InputMode_pullUp,    // Rx pin
		NULL_PTR,	IfxPort_OutputMode_pushPull, // RTS pin not used
		&SERIAL_PIN_TX,	IfxPort_OutputMode_pushPull, // Tx pin
		IfxPort_PadDriver_cmosAutomotiveSpeed4
	};
	ascConfig.pins = &pins;

	// initialize module
	IfxAsclin_Asc_initModule(&serialDriver, &ascConfig);
}

void serial_send(uint8 data) {
	IfxAsclin_Asc_blockingWrite(&serialDriver, data);
}

uint8 serial_recv() {
  return IfxAsclin_Asc_blockingRead(&serialDriver);
}

void serial_sendBytes(uint8 *data, Ifx_SizeT count) {
    IfxAsclin_Asc_write(&serialDriver, data, &count, TIME_INFINITE);
}

void serial_rcvBytes(uint8 *data, Ifx_SizeT count) {
	IfxAsclin_Asc_read(&serialDriver, data, &count, TIME_INFINITE);
}

// ASC interrupts
void serialTxISR() {
    IfxAsclin_Asc_isrTransmit(&serialDriver);
}

void serialRxISR() {
	message=(char)ASCLIN0_RXDATA.U;//message = received message

	if(message == '1') //if '1' is received
	{
		if(Mode2_flag == 1) //if Mode2 was enabled before receiving '1'
		{
			IfxGtm_Atom_Timer_stop(&timerObstacleAvoidance); //Disable Obstacle Avoidance interrupt
			Servo_Enable = 0;	//Stop servomotor sweep
			Motors_stop();		//Stop Motors
			Mode2_flag = 0;		//Unselect Mode 2
		}
		ModeSelector = 1;	//Mode 1 is selected
		GLCD_displayStringLn(LINE5, "Mode 1 Selected    ");

	}
	else if(message == '2')	//if '2' is received
	{
		if (Mode1_flag == 1)	//if '1' was selected before receiving '2'
		{
			if(commande_movement != 0)	//if the robot was moving
			{
				Motors_stop();	//Stop the motors
			}
			Mode1_flag = 0;	//Unselect Mode 1
		}
		ModeSelector = 2;	//Mode 2 is selected
		GLCD_displayStringLn(LINE5, "Mode 2 Selected    ");
	}
	if (ModeSelector == 1) //If Mode Mode 1 is selected
	{
		Mode1_flag = 1;
		command(message);	//the function 'command' will process the instructions
	}
	else if(ModeSelector == 2)	//If Mode Mode 2 is selected
	{
		Mode2_flag = 1;
		command_Mode2(message);	//the function 'command_Mode2' will process the instructions
	}
}

void serialErISR() {
    IfxAsclin_Asc_isrError(&serialDriver);
}

