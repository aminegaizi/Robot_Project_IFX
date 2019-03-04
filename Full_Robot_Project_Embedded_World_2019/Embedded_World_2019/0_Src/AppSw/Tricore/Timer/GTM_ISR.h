/*
 * GTM_ISR.h
 *
 *  Created on: 29.11.2018
 *      Author: Gaizi
 */

#ifndef GTM_ISR_H_
#define GTM_ISR_H_


#include <Ifx_Types.h>
#include "SysSe/Bsp/Bsp.h"
#include "Encoders_config.h"
#include "Cpu0_main.h"
#include "Gtm/Atom/Timer/IfxGtm_Atom_Timer.h"

#include "servomotor.h"
#include <Stm/Std/IfxStm.h>
#include "Config_ISR.h"
#include "serial.h"
#include "Tft.h"
#include "VADC.h"


void ISR_CurrentMeasurement(void);
void ISR_CurrentMeasurement_Config(void);

void ISR_ObstacleAvoidance_Config(void);
void ISR_ObstacleAvoidance(void);


#endif /* GTM_ISR_H_ */
