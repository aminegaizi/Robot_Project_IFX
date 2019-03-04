/*
 * Encoders_config.h
 *
 *  Created on: 05.09.2018
 *      Author: Gaizi
 */

//#include "Ifx_Types.h"
//#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxCpu_Irq.h"

#include <Port/Io/IfxPort_Io.h>
#include <_Reg\IfxPort_regdef.h>

//#include <Src/std/IfxSrc.h>
#include "IfxSrc_reg.h"
#include "IfxSrc_regdef.h"
#include <Scu/Std/IfxScuEru.h>
#include "Config_ISR.h"
#include "IfxStm.h"


void Encoders_config();
void ISR_ENCODER_L();
void ISR_ENCODER_R();
