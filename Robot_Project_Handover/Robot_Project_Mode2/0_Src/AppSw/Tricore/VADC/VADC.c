/*
 * VADC.c
 *
 *  Created on: 01.02.2019
 *      Author: Gaizi
 */


#include "VADC.h"
#include <stdio.h>
#include <stdlib.h>
#include <Cpu/Std/IfxCpu.h>


App_VadcAutoScan g_VadcAutoScan;


float I = 0.0f;
float I_1,I_2 = 0.0f;


/** \brief Demo init API
 * void VadcAutoScanDemo_init(void)
 * Function taken from the iLLD demos
 * Initialization of 5 channels of the VADC
 * This function is called from main during initialization phase
 */
void VadcAutoScanDemo_init(void)
{
    /* VADC Configuration */

    /* create configuration */
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

    /* initialize module */
    IfxVadc_Adc_initModule(&g_VadcAutoScan.vadc, &adcConfig);

    /* create group config */
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &g_VadcAutoScan.vadc);

    /* with group 0 */
    adcGroupConfig.groupId = IfxVadc_GroupId_0;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable scan source */
    adcGroupConfig.arbiter.requestSlotScanEnabled = TRUE;

    /* enable auto scan */
    adcGroupConfig.scanRequest.autoscanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) */
    adcGroupConfig.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    /* initialize the group */
    /*IfxVadc_Adc_Group adcGroup;*/    //declared globally
    IfxVadc_Adc_initGroup(&g_VadcAutoScan.adcGroup, &adcGroupConfig);
}


/** \brief Demo run API
 * void VadcAutoScanDemo_run(void)
 * Function taken from the iLLD demos
 * By default, this function checks for the values in the 5 ADCs
 * We modified it to also calculate the value of the current using the data sent by the analog current sensor to the adc inputs AN0 and AN2
 * This function is called from main, background loop
 */
void VadcAutoScanDemo_run(void)
{
	float ADC1,ADC2 = 0.0f;
	float DivBridge1 = (8.2/(12.0+8.2));
	float DivBridge2 = (27.0/(12.0+27.0));
	float Rshunt = 0.05;
	float G_nonInverseur1 = (1 + 150/1.2);
	float G_nonInverseur2 = (1 + 82/1.2);

    {
        uint32                    chnIx;
        /* create channel config */
        IfxVadc_Adc_ChannelConfig adcChannelConfig[5];
        IfxVadc_Adc_Channel       adcChannel[5];

        for (chnIx = 0; chnIx < 5; ++chnIx)
        {
            IfxVadc_Adc_initChannelConfig(&adcChannelConfig[chnIx], &g_VadcAutoScan.adcGroup);

            adcChannelConfig[chnIx].channelId      = (IfxVadc_ChannelId)(chnIx);
            adcChannelConfig[chnIx].resultRegister = (IfxVadc_ChannelResult)(chnIx);  /* use dedicated result register */

            /* initialize the channel */
            IfxVadc_Adc_initChannel(&adcChannel[chnIx], &adcChannelConfig[chnIx]);

            /* add to scan */
            unsigned channels = (1 << adcChannelConfig[chnIx].channelId);
            unsigned mask     = channels;
            IfxVadc_Adc_setScan(&g_VadcAutoScan.adcGroup, channels, mask);
        }

        /* start autoscan */
        IfxVadc_Adc_startScan(&g_VadcAutoScan.adcGroup);

        //Power Supply 1 (8V)
        ADC1 = (((float) VADC_G0RES0.B.RESULT*5)/4095); //V
        I_1 = fabs(((ADC1)/(G_nonInverseur1*DivBridge1*Rshunt))-0.1);//A (Offset 0.2V)


        //Power Supply 2 (5V)
        ADC2 = (((float) VADC_G0RES2.B.RESULT*5)/4095); //V
        I_2 = fabs(((ADC2)/(G_nonInverseur2*DivBridge2*Rshunt))-0.2);//A (Offset 0.2V)

        I = I_1 + I_2;


    }
}


