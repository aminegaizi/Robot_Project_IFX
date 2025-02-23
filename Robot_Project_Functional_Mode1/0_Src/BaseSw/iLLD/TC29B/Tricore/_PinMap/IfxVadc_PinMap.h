/**
 * \file IfxVadc_PinMap.h
 * \brief VADC I/O map
 * \ingroup IfxLld_Vadc
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
 * \defgroup IfxLld_Vadc_pinmap VADC Pin Mapping
 * \ingroup IfxLld_Vadc
 */

#ifndef IFXVADC_PINMAP_H
#define IFXVADC_PINMAP_H

#include <IfxVadc_reg.h>
#include <_Impl/IfxVadc_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Vadc_pinmap
 * \{ */

/** \brief VADC Boundary Flag pin mapping structure */
typedef const struct
{
    Ifx_VADC*         module;    /**< \brief Base address */
    IfxVadc_GroupId   groupId;   /**< \brief Group ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxVadc_GxBfl_Out;

/** \brief VADC External Mux pin mapping structure */
typedef const struct
{
    Ifx_VADC*         module;    /**< \brief Base address */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxVadc_Emux_Out;

/** \brief VADC Analog Input */
typedef const struct
{
    Ifx_VADC*         module;    /**< \brief Base address */
    IfxVadc_GroupId   groupId;   /**< \brief Group ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    uint8             channelId; /**< \brief Channel ID */
} IfxVadc_Vadcg_In;

IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT;  /**< \brief VADC_EMUX00: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT;  /**< \brief VADC_EMUX00: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT;  /**< \brief VADC_EMUX01: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT;  /**< \brief VADC_EMUX01: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT;  /**< \brief VADC_EMUX02: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT;  /**< \brief VADC_EMUX02: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT;  /**< \brief VADC_EMUX10: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT;  /**< \brief VADC_EMUX10: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT;  /**< \brief VADC_EMUX11: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT;  /**< \brief VADC_EMUX11: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT;  /**< \brief VADC_EMUX12: VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT;  /**< \brief VADC_EMUX12: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT;  /**< \brief VADC_G0BFL0: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT;  /**< \brief VADC_G0BFL1: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_6_OUT;  /**< \brief VADC_G1BFL0: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_7_OUT;  /**< \brief VADC_G1BFL1: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G2BFL0_P33_0_OUT;  /**< \brief VADC_G2BFL0: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G2BFL1_P33_1_OUT;  /**< \brief VADC_G2BFL1: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G2BFL2_P33_2_OUT;  /**< \brief VADC_G2BFL2: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G2BFL3_P33_3_OUT;  /**< \brief VADC_G2BFL3: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G4BFL0_P00_4_OUT;  /**< \brief VADC_G4BFL0: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G4BFL1_P00_5_OUT;  /**< \brief VADC_G4BFL1: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G4BFL2_P00_6_OUT;  /**< \brief VADC_G4BFL2: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G4BFL3_P00_7_OUT;  /**< \brief VADC_G4BFL3: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G6BFL0_P10_0_OUT;  /**< \brief VADC_G6BFL0: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G6BFL1_P10_1_OUT;  /**< \brief VADC_G6BFL1: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G6BFL2_P10_2_OUT;  /**< \brief VADC_G6BFL2: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G6BFL3_P10_3_OUT;  /**< \brief VADC_G6BFL3: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G7BFL0_P10_6_OUT;  /**< \brief VADC_G7BFL0: VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G7BFL1_P10_7_OUT;  /**< \brief VADC_G7BFL1: VADC output */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_0_AN0_IN;  /**< \brief VADC_G0_0: VADC input channel 0 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_1_AN1_IN;  /**< \brief VADC_G0_1: VADC input channel 1 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_2_AN2_IN;  /**< \brief VADC_G0_2: VADC input channel 2 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_3_AN3_IN;  /**< \brief VADC_G0_3: VADC input channel 3 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_4_AN4_IN;  /**< \brief VADC_G0_4: VADC input channel 4 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_5_AN5_IN;  /**< \brief VADC_G0_5: VADC input channel 5 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_6_AN6_IN;  /**< \brief VADC_G0_6: VADC input channel 6 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G0_7_AN7_IN;  /**< \brief VADC_G0_7: VADC input channel 7 of group 0 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_0_AN64_IN;  /**< \brief VADC_G10_0: VADC input channel 0 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_1_AN65_IN;  /**< \brief VADC_G10_1: VADC input channel 1 of group 10 (muxtest) */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_2_AN66_IN;  /**< \brief VADC_G10_2: VADC input channel 2 of group 10 (muxtest) */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_3_AN67_IN;  /**< \brief VADC_G10_3: VADC input channel 3 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_3_P40_10_IN;  /**< \brief VADC_G10_3: VADC input channel 3 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_4_AN68_IN;  /**< \brief VADC_G10_4: VADC input channel 4 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_4_P40_11_IN;  /**< \brief VADC_G10_4: VADC input channel 4 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_5_AN69_IN;  /**< \brief VADC_G10_5: VADC input channel 5 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_5_P40_12_IN;  /**< \brief VADC_G10_5: VADC input channel 5 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_6_AN70_IN;  /**< \brief VADC_G10_6: VADC input channel 6 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_6_P40_13_IN;  /**< \brief VADC_G10_6: VADC input channel 6 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_7_AN71_IN;  /**< \brief VADC_G10_7: VADC input channel 7 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G10_7_P40_14_IN;  /**< \brief VADC_G10_7: VADC input channel 7 of group 10 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_0_AN8_IN;  /**< \brief VADC_G1_0: VADC input channel 0 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_1_AN9_IN;  /**< \brief VADC_G1_1: VADC input channel 1 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_2_AN10_IN;  /**< \brief VADC_G1_2: VADC input channel 2 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_3_AN11_IN;  /**< \brief VADC_G1_3: VADC input channel 3 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_4_AN12_IN;  /**< \brief VADC_G1_4: VADC input channel 4 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_5_AN13_IN;  /**< \brief VADC_G1_5: VADC input channel 5 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_6_AN14_IN;  /**< \brief VADC_G1_6: VADC input channel 6 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G1_7_AN15_IN;  /**< \brief VADC_G1_7: VADC input channel 7 of group 1 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_0_AN16_IN;  /**< \brief VADC_G2_0: VADC input channel 0 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_1_AN17_IN;  /**< \brief VADC_G2_1: VADC input channel 1 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_2_AN18_IN;  /**< \brief VADC_G2_2: VADC input channel 2 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_3_AN19_IN;  /**< \brief VADC_G2_3: VADC input channel 3 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_4_AN20_IN;  /**< \brief VADC_G2_4: VADC input channel 4 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_5_AN21_IN;  /**< \brief VADC_G2_5: VADC input channel 5 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_6_AN22_IN;  /**< \brief VADC_G2_6: VADC input channel 6 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G2_7_AN23_IN;  /**< \brief VADC_G2_7: VADC input channel 7 of group 2 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_0_AN24_IN;  /**< \brief VADC_G3_0: VADC input channel 0 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_0_P40_0_IN;  /**< \brief VADC_G3_0: VADC input channel 0 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_1_AN25_IN;  /**< \brief VADC_G3_1: VADC input channel 1 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_1_P40_1_IN;  /**< \brief VADC_G3_1: VADC input channel 1 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_2_AN26_IN;  /**< \brief VADC_G3_2: VADC input channel 2 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_2_P40_2_IN;  /**< \brief VADC_G3_2: VADC input channel 2 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_3_AN27_IN;  /**< \brief VADC_G3_3: VADC input channel 3 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_3_P40_3_IN;  /**< \brief VADC_G3_3: VADC input channel 3 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_4_AN28_IN;  /**< \brief VADC_G3_4: VADC input channel 4 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_5_AN29_IN;  /**< \brief VADC_G3_5: VADC input channel 5 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_6_AN30_IN;  /**< \brief VADC_G3_6: VADC input channel 6 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G3_7_AN31_IN;  /**< \brief VADC_G3_7: VADC input channel 7 of group 3 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_0_AN32_IN;  /**< \brief VADC_G4_0: VADC input channel 0 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_0_P40_4_IN;  /**< \brief VADC_G4_0: VADC input channel 0 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_1_AN33_IN;  /**< \brief VADC_G4_1: VADC input channel 1 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_1_P40_5_IN;  /**< \brief VADC_G4_1: VADC input channel 1 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_2_AN34_IN;  /**< \brief VADC_G4_2: VADC input channel 2 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_3_AN35_IN;  /**< \brief VADC_G4_3: VADC input channel 3 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_4_AN36_IN;  /**< \brief VADC_G4_4: VADC input channel 4 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_4_P40_6_IN;  /**< \brief VADC_G4_4: VADC input channel 4 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_5_AN37_IN;  /**< \brief VADC_G4_5: VADC input channel 5 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_5_P40_7_IN;  /**< \brief VADC_G4_5: VADC input channel 5 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_6_AN38_IN;  /**< \brief VADC_G4_6: VADC input channel 6 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_6_P40_8_IN;  /**< \brief VADC_G4_6: VADC input channel 6 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_7_AN39_IN;  /**< \brief VADC_G4_7: VADC input channel 7 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G4_7_P40_9_IN;  /**< \brief VADC_G4_7: VADC input channel 7 of group 4 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_0_AN40_IN;  /**< \brief VADC_G5_0: VADC input channel 0 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_1_AN41_IN;  /**< \brief VADC_G5_1: VADC input channel 1 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_2_AN42_IN;  /**< \brief VADC_G5_2: VADC input channel 2 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_3_AN43_IN;  /**< \brief VADC_G5_3: VADC input channel 3 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_4_AN44_IN;  /**< \brief VADC_G5_4: VADC input channel 4 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_5_AN45_IN;  /**< \brief VADC_G5_5: VADC input channel 5 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_6_AN46_IN;  /**< \brief VADC_G5_6: VADC input channel 6 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G5_7_AN47_IN;  /**< \brief VADC_G5_7: VADC input channel 7 of group 5 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G6_0_P00_12_IN;  /**< \brief VADC_G6_0: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G6_1_P00_11_IN;  /**< \brief VADC_G6_1: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G6_2_P00_10_IN;  /**< \brief VADC_G6_2: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G6_3_P00_9_IN;  /**< \brief VADC_G6_3: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G6_4_P00_8_IN;  /**< \brief VADC_G6_4: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G6_5_P00_7_IN;  /**< \brief VADC_G6_5: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G7_0_P00_6_IN;  /**< \brief VADC_G7_0: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G7_1_P00_5_IN;  /**< \brief VADC_G7_1: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G7_2_P00_4_IN;  /**< \brief VADC_G7_2: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G7_3_P00_3_IN;  /**< \brief VADC_G7_3: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G7_4_P00_2_IN;  /**< \brief VADC_G7_4: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G7_5_P00_1_IN;  /**< \brief VADC_G7_5: VADC input */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_0_AN48_IN;  /**< \brief VADC_G8_0: VADC input channel 0 of group 8 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_1_AN49_IN;  /**< \brief VADC_G8_1: VADC input channel 1 of group 8 (muxtest) */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_2_AN50_IN;  /**< \brief VADC_G8_2: VADC input channel 2 of group 8 (muxtest) */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_3_AN51_IN;  /**< \brief VADC_G8_3: VADC input channel 3 of group 8 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_4_AN52_IN;  /**< \brief VADC_G8_4: VADC input channel 4 of group 8 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_5_AN53_IN;  /**< \brief VADC_G8_5: VADC input channel 5 of group 8 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_6_AN54_IN;  /**< \brief VADC_G8_6: VADC input channel 6 of group 8 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G8_7_AN55_IN;  /**< \brief VADC_G8_7: VADC input channel 7 of group 8 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_0_AN56_IN;  /**< \brief VADC_G9_0: VADC input channel 0 of group 9 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_1_AN57_IN;  /**< \brief VADC_G9_1: VADC input channel 1 of group 9 (muxtest) */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_2_AN58_IN;  /**< \brief VADC_G9_2: VADC input channel 2 of group 9 (muxtest) */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_3_AN59_IN;  /**< \brief VADC_G9_3: VADC input channel 3 of group 9 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_4_AN60_IN;  /**< \brief VADC_G9_4: VADC input channel 4 of group 9 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_5_AN61_IN;  /**< \brief VADC_G9_5: VADC input channel 5 of group 9 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_6_AN62_IN;  /**< \brief VADC_G9_6: VADC input channel 6 of group 9 */
IFX_EXTERN IfxVadc_Vadcg_In IfxVadc_G9_7_AN63_IN;  /**< \brief VADC_G9_7: VADC input channel 7 of group 9 */

/** \brief Table dimensions */
#define IFXVADC_PINMAP_NUM_MODULES 1
#define IFXVADC_PINMAP_NUM_GROUPS 11
#define IFXVADC_PINMAP_EMUX_OUT_NUM_ITEMS 12
#define IFXVADC_PINMAP_GXBFL_OUT_NUM_ITEMS 4
#define IFXVADC_PINMAP_VADCG_IN_NUM_ITEMS 8


/** \brief IfxVadc_Emux_Out table */
IFX_EXTERN const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_EMUX_OUT_NUM_ITEMS];

/** \brief IfxVadc_GxBfl_Out table */
IFX_EXTERN const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_NUM_GROUPS][IFXVADC_PINMAP_GXBFL_OUT_NUM_ITEMS];

/** \brief IfxVadc_Vadcg_In table */
IFX_EXTERN const IfxVadc_Vadcg_In *IfxVadc_Vadcg_In_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_NUM_GROUPS][IFXVADC_PINMAP_VADCG_IN_NUM_ITEMS];

/** \} */

#endif /* IFXVADC_PINMAP_H */
