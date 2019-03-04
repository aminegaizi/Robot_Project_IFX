//#include "Configuration.h"
#ifndef SERIAL_H__
#define SERIAL_H__

#include <Asclin/Asc/IfxAsclin_Asc.h>
#include "Config_ISR.h"
#include "IfxCpu_Irq.h"
#include "Cpu0_Main.h"
#include "GTM_ISR.h"
#include "IfxGtm_Atom_Timer.h"
#include "Motors.h"
#include "Tft.h"
#include "Beeper.h"

void serial_config(void);
void serial_send(uint8 data);
uint8 serial_recv(void);
void serial_sendBytes(uint8 *data, Ifx_SizeT count);
void serial_rcvBytes(uint8 *data, Ifx_SizeT count);
void serial_print(char *str);

#define SERIAL_TX_BUFFER_SIZE 64
#define SERIAL_RX_BUFFER_SIZE 64
// FTDI out
#define SERIAL_BAUDRATE 9600
#define SERIAL_PIN_RX IfxAsclin0_RXB_P15_3_IN
#define SERIAL_PIN_TX IfxAsclin0_TX_P15_2_OUT

#endif //SERIAL_H_
