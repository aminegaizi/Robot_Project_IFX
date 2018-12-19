

#ifndef SERIAL_RASP_H
#define SERIAL_RASP_H

#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxCpu_Irq.h"

#include "Config_ISR.h"

#include <Asclin/Asc/IfxAsclin_Asc.h>
#include "Cpu0_Main.h"

#define SERIAL_TX_BUFFER_SIZE 64
#define SERIAL_RX_BUFFER_SIZE 64
//*
// FTDI out
#define SERIAL_BAUDRATE 9600
#define SERIAL_PIN_RX_Rasp IfxAsclin3_RXA_P15_7_IN
#define SERIAL_PIN_TX_Rasp IfxAsclin3_TX_P15_6_OUT

void serial_config_Raspberry();

#endif /*#ifndef SERIAL_RASP_H*/
