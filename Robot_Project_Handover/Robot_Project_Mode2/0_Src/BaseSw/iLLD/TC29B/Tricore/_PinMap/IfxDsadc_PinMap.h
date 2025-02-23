/**
 * \file IfxDsadc_PinMap.h
 * \brief DSADC I/O map
 * \ingroup IfxLld_Dsadc
 *
 * \version iLLD_1_0_1_7_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup IfxLld_Dsadc_pinmap DSADC Pin Mapping
 * \ingroup IfxLld_Dsadc
 */

#ifndef IFXDSADC_PINMAP_H
#define IFXDSADC_PINMAP_H

#include <IfxDsadc_reg.h>
#include <_Impl/IfxDsadc_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Dsadc_pinmap
 * \{ */

/** \brief DS negative pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;    /**< \brief Base address */
    uint8             channel;   /**< \brief Channel number */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    Ifx_RxSel         select;    /**< \brief Input multiplexer value */
} IfxDsadc_Dsn_In;

/** \brief DS positive pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    uint8             channel;  /**< \brief Channel number */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxDsadc_Dsp_In;

/** \brief CIN pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    uint8             channel;  /**< \brief Channel number */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxDsadc_Cin_In;

/** \brief DIN pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    uint8             channel;  /**< \brief Channel number */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxDsadc_Din_In;

/** \brief ITR pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    uint8             channel;  /**< \brief Channel number */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxDsadc_Itr_In;

/** \brief CGPWM pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxDsadc_Cgpwm_Out;

/** \brief SG pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxDsadc_Sg_In;

/** \brief COUT pin mapping structure */
typedef const struct
{
    Ifx_DSADC*        module;   /**< \brief Base address */
    uint8             channel;  /**< \brief Channel number */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxDsadc_Cout_Out;

IFX_EXTERN IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P00_5_OUT;  /**< \brief DSADC_CGPWMN: DSADC output */
IFX_EXTERN IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P02_0_OUT;  /**< \brief DSADC_CGPWMN: DSADC output */
IFX_EXTERN IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P33_11_OUT;  /**< \brief DSADC_CGPWMN: DSADC output */
IFX_EXTERN IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P00_6_OUT;  /**< \brief DSADC_CGPWMP: DSADC output */
IFX_EXTERN IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P02_1_OUT;  /**< \brief DSADC_CGPWMP: DSADC output */
IFX_EXTERN IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P33_12_OUT;  /**< \brief DSADC_CGPWMP: DSADC output */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN0A_P00_11_IN;  /**< \brief DSADC_CIN0A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN0B_P33_5_IN;  /**< \brief DSADC_CIN0B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN1A_P00_9_IN;  /**< \brief DSADC_CIN1A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN1B_P33_3_IN;  /**< \brief DSADC_CIN1B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN2A_P00_5_IN;  /**< \brief DSADC_CIN2A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN2B_P33_1_IN;  /**< \brief DSADC_CIN2B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN3A_P00_3_IN;  /**< \brief DSADC_CIN3A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN3B_P02_7_IN;  /**< \brief DSADC_CIN3B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN4A_P00_7_IN;  /**< \brief DSADC_CIN4A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN4B_P02_5_IN;  /**< \brief DSADC_CIN4B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN5A_P00_1_IN;  /**< \brief DSADC_CIN5A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN5B_P02_3_IN;  /**< \brief DSADC_CIN5B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN6A_P00_14_IN;  /**< \brief DSADC_CIN6A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN7A_P01_2_IN;  /**< \brief DSADC_CIN7A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN7B_P00_1_IN;  /**< \brief DSADC_CIN7B: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN8A_P01_5_IN;  /**< \brief DSADC_CIN8A: DSADC input */
IFX_EXTERN IfxDsadc_Cin_In IfxDsadc_CIN9A_P01_9_IN;  /**< \brief DSADC_CIN9A: DSADC input */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT0_P00_11_OUT;  /**< \brief DSADC_COUT0: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT0_P33_5_OUT;  /**< \brief DSADC_COUT0: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT1_P00_9_OUT;  /**< \brief DSADC_COUT1: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT1_P33_3_OUT;  /**< \brief DSADC_COUT1: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT2_P00_5_OUT;  /**< \brief DSADC_COUT2: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT2_P33_1_OUT;  /**< \brief DSADC_COUT2: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT3_P00_3_OUT;  /**< \brief DSADC_COUT3: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT3_P02_7_OUT;  /**< \brief DSADC_COUT3: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT4_P00_7_OUT;  /**< \brief DSADC_COUT4: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT4_P02_5_OUT;  /**< \brief DSADC_COUT4: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT5_P00_1_OUT;  /**< \brief DSADC_COUT5: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT5_P02_3_OUT;  /**< \brief DSADC_COUT5: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT6_P00_14_OUT;  /**< \brief DSADC_COUT6: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT7_P00_1_OUT;  /**< \brief DSADC_COUT7: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT7_P01_2_OUT;  /**< \brief DSADC_COUT7: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT8_P01_5_OUT;  /**< \brief DSADC_COUT8: DSADC output */
IFX_EXTERN IfxDsadc_Cout_Out IfxDsadc_COUT9_P01_9_OUT;  /**< \brief DSADC_COUT9: DSADC output */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN0A_P00_12_IN;  /**< \brief DSADC_DIN0A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN0B_P33_6_IN;  /**< \brief DSADC_DIN0B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN1A_P00_10_IN;  /**< \brief DSADC_DIN1A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN1B_P33_4_IN;  /**< \brief DSADC_DIN1B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN2A_P00_6_IN;  /**< \brief DSADC_DIN2A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN2B_P33_2_IN;  /**< \brief DSADC_DIN2B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN3A_P00_4_IN;  /**< \brief DSADC_DIN3A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN3B_P02_8_IN;  /**< \brief DSADC_DIN3B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN4A_P00_8_IN;  /**< \brief DSADC_DIN4A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN4B_P02_6_IN;  /**< \brief DSADC_DIN4B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN5A_P00_2_IN;  /**< \brief DSADC_DIN5A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN5B_P02_4_IN;  /**< \brief DSADC_DIN5B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN6A_P00_13_IN;  /**< \brief DSADC_DIN6A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN7A_P01_15_IN;  /**< \brief DSADC_DIN7A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN7B_P00_2_IN;  /**< \brief DSADC_DIN7B: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN8A_P01_6_IN;  /**< \brief DSADC_DIN8A: DSADC input */
IFX_EXTERN IfxDsadc_Din_In IfxDsadc_DIN9A_P01_8_IN;  /**< \brief DSADC_DIN9A: DSADC input */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS0NA_AN3_IN;  /**< \brief DSADC_DS0NA: DSADC: negative analog input channel of DSADC 0 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS1NA_AN1_IN;  /**< \brief DSADC_DS1NA: DSADC: negative analog input channel of DSADC 1 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS2NA_AN21_IN;  /**< \brief DSADC_DS2NA: DSADC: negative analog input channel of DSADC 2 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS2NB_AN25_IN;  /**< \brief DSADC_DS2NB: DSADC: negative analog input channel of DSADC 2 pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS2NB_P40_1_IN;  /**< \brief DSADC_DS2NB: DSADC: negative analog input channel of DSADC 2, pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS3NA_AN37_IN;  /**< \brief DSADC_DS3NA: DSADC: negative analog input channel of DSADC 3 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS3NA_P40_7_IN;  /**< \brief DSADC_DS3NA: DSADC: negative analog input channel of DSADC 3, pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS3NB_AN39_IN;  /**< \brief DSADC_DS3NB: DSADC: negative analog input channel of DSADC 3 pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS3NB_P40_9_IN;  /**< \brief DSADC_DS3NB: DSADC: negative analog input channel of DSADC 3, pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS3NC_AN45_IN;  /**< \brief DSADC_DS3NC: DSADC: negative analog input channel of DSADC 3 pin C */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS3ND_AN47_IN;  /**< \brief DSADC_DS3ND: DSADC: negative analog input channel of DSADC 3 pin D */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS4NA_P00_7_IN;  /**< \brief DSADC_DS4NA: DSADC input */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS5NA_P00_1_IN;  /**< \brief DSADC_DS5NA: DSADC input */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS6NA_AN53_IN;  /**< \brief DSADC_DS6NA: DSADC: negative analog input channel of DSADC 6 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS6NB_AN55_IN;  /**< \brief DSADC_DS6NB: DSADC: negative analog input channel of DSADC 6 pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS7NA_AN61_IN;  /**< \brief DSADC_DS7NA: DSADC: negative analog input channel of DSADC 7 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS7NB_AN63_IN;  /**< \brief DSADC_DS7NB: DSADC: negative analog input channel of DSADC 7 pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS8NA_AN69_IN;  /**< \brief DSADC_DS8NA: DSADC: negative analog input channel of DSADC 9 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS8NA_P40_12_IN;  /**< \brief DSADC_DS8NA: DSADC: positive analog input channel of DSADC 8, pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS8NB_AN67_IN;  /**< \brief DSADC_DS8NB: DSADC: negative analog input channel of DSADC 9 pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS8NB_P40_10_IN;  /**< \brief DSADC_DS8NB: DSADC: negative analog input channel of DSADC 8, pin B */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS9NA_AN71_IN;  /**< \brief DSADC_DS9NA: DSADC: negative analog input channel of DSADC 8 pin A */
IFX_EXTERN IfxDsadc_Dsn_In IfxDsadc_DS9NA_P40_14_IN;  /**< \brief DSADC_DS9NA: DSADC: positive analog input channel of DSADC 9, pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS0PA_AN2_IN;  /**< \brief DSADC_DS0PA: DSADC: positive analog input channel of DSADC 0 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS1PA_AN0_IN;  /**< \brief DSADC_DS1PA: DSADC: positive analog input channel of DSADC 1 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS2PA_AN20_IN;  /**< \brief DSADC_DS2PA: DSADC: positive analog input channel of DSADC 2 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS2PB_AN24_IN;  /**< \brief DSADC_DS2PB: DSADC: positive analog input channel of DSADC 2 pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS2PB_P40_0_IN;  /**< \brief DSADC_DS2PB: DSADC: positive analog input channel of DSADC 2, pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS3PA_AN36_IN;  /**< \brief DSADC_DS3PA: DSADC: positive analog input channel of DSADC 3 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS3PA_P40_6_IN;  /**< \brief DSADC_DS3PA: DSADC: positive analog input channel of DSADC 3, pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS3PB_AN38_IN;  /**< \brief DSADC_DS3PB: DSADC: positive analog input channel of DSADC 3 pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS3PB_P40_8_IN;  /**< \brief DSADC_DS3PB: DSADC: positive analog input channel of DSADC 3, pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS3PC_AN44_IN;  /**< \brief DSADC_DS3PC: DSADC: positive analog input channel of DSADC 3 pin C */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS3PD_AN46_IN;  /**< \brief DSADC_DS3PD: DSADC: positive analog input channel of DSADC 3 pin D */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS4PA_P00_8_IN;  /**< \brief DSADC_DS4PA: DSADC input */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS5PA_P00_2_IN;  /**< \brief DSADC_DS5PA: DSADC input */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS6PA_AN52_IN;  /**< \brief DSADC_DS6PA: DSADC: positive analog input channel of DSADC 6 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS6PB_AN54_IN;  /**< \brief DSADC_DS6PB: DSADC: positive analog input channel of DSADC 6 pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS7PA_AN60_IN;  /**< \brief DSADC_DS7PA: DSADC: positive analog input channel of DSADC 7 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS7PB_AN62_IN;  /**< \brief DSADC_DS7PB: DSADC: positive analog input channel of DSADC 7 pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS8PA_AN68_IN;  /**< \brief DSADC_DS8PA: DSADC: positive analog input channel of DSADC 9 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS8PA_P40_11_IN;  /**< \brief DSADC_DS8PA: DSADC: positive analog input channel of DSADC 8, pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS8PB_AN66_IN;  /**< \brief DSADC_DS8PB: DSADC: positive analog input channel of DSADC 8 pin B */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS9PA_AN70_IN;  /**< \brief DSADC_DS9PA: DSADC: positive analog input channel of DSADC 8 pin A */
IFX_EXTERN IfxDsadc_Dsp_In IfxDsadc_DS9PA_P40_13_IN;  /**< \brief DSADC_DS9PA: DSADC: positive analog input channel of DSADC 9, pin A */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR0E_P33_0_IN;  /**< \brief DSADC_ITR0E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR0F_P33_4_IN;  /**< \brief DSADC_ITR0F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR1E_P33_1_IN;  /**< \brief DSADC_ITR1E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR1F_P33_5_IN;  /**< \brief DSADC_ITR1F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR2E_P33_2_IN;  /**< \brief DSADC_ITR2E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR2F_P33_6_IN;  /**< \brief DSADC_ITR2F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR3E_P02_8_IN;  /**< \brief DSADC_ITR3E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR3F_P00_9_IN;  /**< \brief DSADC_ITR3F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR4E_P02_7_IN;  /**< \brief DSADC_ITR4E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR4F_P00_6_IN;  /**< \brief DSADC_ITR4F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR5E_P02_6_IN;  /**< \brief DSADC_ITR5E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR5F_P00_3_IN;  /**< \brief DSADC_ITR5F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR6E_P01_0_IN;  /**< \brief DSADC_ITR6E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR6F_P00_15_IN;  /**< \brief DSADC_ITR6F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR7E_P01_4_IN;  /**< \brief DSADC_ITR7E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR7F_P01_3_IN;  /**< \brief DSADC_ITR7F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR8E_P01_1_IN;  /**< \brief DSADC_ITR8E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR8F_P01_7_IN;  /**< \brief DSADC_ITR8F: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR9E_P01_11_IN;  /**< \brief DSADC_ITR9E: DSADC input */
IFX_EXTERN IfxDsadc_Itr_In IfxDsadc_ITR9F_P01_10_IN;  /**< \brief DSADC_ITR9F: DSADC input */
IFX_EXTERN IfxDsadc_Sg_In IfxDsadc_SGNA_P00_4_IN;  /**< \brief DSADC_SGNA: DSADC input */
IFX_EXTERN IfxDsadc_Sg_In IfxDsadc_SGNB_P33_13_IN;  /**< \brief DSADC_SGNB: DSADC input */

/** \brief Table dimensions */
#define IFXDSADC_PINMAP_NUM_MODULES 1
#define IFXDSADC_PINMAP_NUM_CHANNELS 10
#define IFXDSADC_PINMAP_CGPWM_OUT_NUM_ITEMS 6
#define IFXDSADC_PINMAP_CIN_IN_NUM_ITEMS 2
#define IFXDSADC_PINMAP_COUT_OUT_NUM_ITEMS 2
#define IFXDSADC_PINMAP_DIN_IN_NUM_ITEMS 2
#define IFXDSADC_PINMAP_DSN_IN_NUM_ITEMS 4
#define IFXDSADC_PINMAP_DSP_IN_NUM_ITEMS 4
#define IFXDSADC_PINMAP_ITR_IN_NUM_ITEMS 6
#define IFXDSADC_PINMAP_SG_IN_NUM_ITEMS 2


/** \brief IfxDsadc_Cgpwm_Out table */
IFX_EXTERN const IfxDsadc_Cgpwm_Out *IfxDsadc_Cgpwm_Out_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_CGPWM_OUT_NUM_ITEMS];

/** \brief IfxDsadc_Cin_In table */
IFX_EXTERN const IfxDsadc_Cin_In *IfxDsadc_Cin_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_CIN_IN_NUM_ITEMS];

/** \brief IfxDsadc_Cout_Out table */
IFX_EXTERN const IfxDsadc_Cout_Out *IfxDsadc_Cout_Out_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_COUT_OUT_NUM_ITEMS];

/** \brief IfxDsadc_Din_In table */
IFX_EXTERN const IfxDsadc_Din_In *IfxDsadc_Din_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_DIN_IN_NUM_ITEMS];

/** \brief IfxDsadc_Dsn_In table */
IFX_EXTERN const IfxDsadc_Dsn_In *IfxDsadc_Dsn_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_DSN_IN_NUM_ITEMS];

/** \brief IfxDsadc_Dsp_In table */
IFX_EXTERN const IfxDsadc_Dsp_In *IfxDsadc_Dsp_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_DSP_IN_NUM_ITEMS];

/** \brief IfxDsadc_Itr_In table */
IFX_EXTERN const IfxDsadc_Itr_In *IfxDsadc_Itr_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_ITR_IN_NUM_ITEMS];

/** \brief IfxDsadc_Sg_In table */
IFX_EXTERN const IfxDsadc_Sg_In *IfxDsadc_Sg_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_SG_IN_NUM_ITEMS];

/** \} */

#endif /* IFXDSADC_PINMAP_H */
