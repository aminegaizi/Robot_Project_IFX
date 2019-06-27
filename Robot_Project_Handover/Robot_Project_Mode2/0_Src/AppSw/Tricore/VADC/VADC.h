/*
 * VADC.h
 *
 *  Created on: 01.02.2019
 *      Author: Gaizi
 */

#ifndef VADC_H_
#define VADC_H_


#include "IfxVadc.h"
#include "IfxVadc_Adc.h"



typedef struct
{
    IfxVadc_Adc vadc; /* VADC handle */
    IfxVadc_Adc_Group adcGroup;
} App_VadcAutoScan;

IFX_EXTERN App_VadcAutoScan g_VadcAutoScan;

IFX_EXTERN void VadcAutoScanDemo_init(void);
IFX_EXTERN void VadcAutoScanDemo_run(void);

#endif /* 0_SRC_APPSW_TRICORE_VADC_VADC_H_ */
