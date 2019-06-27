/*
 * Cpu0_Main.h
 *
 *  Created on: 23.11.2018
 *      Author: Gaizi
 */

#ifndef CPU_MAIN_0_H
#define CPU_MAIN_0_H

#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"

#include "IfxCpu_Irq.h"
#include <Port/Io/IfxPort_Io.h>
#include <_Reg\IfxPort_regdef.h>
#include <Src/std/IfxSrc.h>
#include "IfxSrc_reg.h"

#include <Scu/Std/IfxScuEru.h>
#include "IfxStm.h"
#include "Motors.h"
#include "PWM_config.h"
#include "Encoders_config.h"
#include "servomotor.h"

#include "IfxGtm_Atom_Timer.h"
#include "GTM_ISR.h"
#include "serial.h"
#include <Stm/Std/IfxStm.h>
#include <_PinMap/IfxPort_pinMap.h>
#include "ultrasonic_sensor.h"
#include "Gyroscope_i2c.h"
#include "serial_Raspberry.h"

#include "Beeper.h"
#include "stdlib.h"
#include "stdio.h"

#include "Bsp.h"
#include "Tft.h"
#include "VADC.h"
#include "Reset_reason.h"
#include "Enslavement.h"
#include "Mapping.h"



void command(char);
void command_Mode2(char recv);
void Tft_screen_config();
void Raspberry_rcv(char recv);
void Save_Object_Position();
void Update_Object_Position();

#endif /*CPU_MAIN_0_H*/
