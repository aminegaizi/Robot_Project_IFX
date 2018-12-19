/*
serial.c: Serial connection managment
by: Sidoine Berger
Date: 20/02/2017
*/



#include "serial_Raspberry.h"


static IfxAsclin_Asc serialDriver;

static uint8 ascTxBuffer[SERIAL_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
static uint8 ascRxBuffer[SERIAL_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];

char message_Rasp='0';

void serial_config_Raspberry() {
	// create module config
	IfxAsclin_Asc_Config ascConfig;

	//initialize ASC module
	IfxAsclin_Asc_initModuleConfig(&ascConfig, SERIAL_PIN_RX_Rasp.module);

	// set the desired baudrate
	ascConfig.baudrate.prescaler = 1;
	ascConfig.baudrate.baudrate = SERIAL_BAUDRATE; // FDR values will be calculated in initModule

	// ISR priorities and interrupt target
	ascConfig.interrupt.txPriority = ISR_PRIORITY_SERIAL_TX;
	ascConfig.interrupt.rxPriority = ISR_PRIORITY_SERIAL_RX;
	ascConfig.interrupt.erPriority = ISR_PRIORITY_SERIAL_ER;
	ascConfig.interrupt.typeOfService = IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());

	// FIFOs configuration
	ascConfig.txBuffer = &ascTxBuffer;
	ascConfig.txBufferSize = SERIAL_TX_BUFFER_SIZE;

	ascConfig.rxBuffer = &ascRxBuffer;
	ascConfig.rxBufferSize = SERIAL_RX_BUFFER_SIZE;

	// pin configuration
	const IfxAsclin_Asc_Pins pins = {
		NULL_PTR,	IfxPort_InputMode_pullUp,    	// CTS pin not used
		&SERIAL_PIN_RX_Rasp,	IfxPort_InputMode_pullUp,   // Rx pin
		NULL_PTR,	IfxPort_OutputMode_pushPull, 	// RTS pin not used
		&SERIAL_PIN_TX_Rasp,	IfxPort_OutputMode_pushPull,// Tx pin
		IfxPort_PadDriver_cmosAutomotiveSpeed4
	};
	ascConfig.pins = &pins;

	// initialize module
	IfxAsclin_Asc_initModule(&serialDriver, &ascConfig);
}

IFX_INTERRUPT(serialTxISR_Raspberry, 0, ISR_PRIORITY_SERIAL_TX);//interrupt transmit function
void serialTxISR_Raspberry() {
    IfxAsclin_Asc_isrTransmit(&serialDriver);
}

IFX_INTERRUPT(serialRxISR_Raspberry, 0, ISR_PRIORITY_SERIAL_RX);//interrupt reception function
void serialRxISR_Raspberry() {
	message_Rasp=(char) ASCLIN3_RXDATA.U;//Read RXdata buffer of the ASCLIN1
	Raspberry_rcv(message_Rasp);
}

IFX_INTERRUPT(serialErISR_Raspberry, 0, ISR_PRIORITY_SERIAL_ER);//interrupt error function
void serialErISR_Raspberry() {
    IfxAsclin_Asc_isrError(&serialDriver);
}

