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


char message='a';
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
/*
void serial_print(char *str) {
	Ifx_SizeT size = strlen(str);
	IfxAsclin_Asc_read(&serialDriver, (uint8 *) str, &size, TIME_INFINITE);
}
*/
// ASC interrupts
void serialTxISR() {
    IfxAsclin_Asc_isrTransmit(&serialDriver);
}

void serialRxISR() {
	message=(char)ASCLIN0_RXDATA.U;//message = received message
	command(message);//sends the content of the message to the command interpretor (in Cpu0_Main)
}

void serialErISR() {
    IfxAsclin_Asc_isrError(&serialDriver);
}

