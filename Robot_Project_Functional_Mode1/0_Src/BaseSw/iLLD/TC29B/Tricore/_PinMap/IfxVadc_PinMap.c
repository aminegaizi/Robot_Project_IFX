/**
 * \file IfxVadc_PinMap.c
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
 */

#include "IfxVadc_PinMap.h"

IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT = {&MODULE_VADC, {&MODULE_P02, 6}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT = {&MODULE_VADC, {&MODULE_P33, 3}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT = {&MODULE_VADC, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT = {&MODULE_VADC, {&MODULE_P33, 2}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT = {&MODULE_VADC, {&MODULE_P02, 8}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT = {&MODULE_VADC, {&MODULE_P33, 1}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT = {&MODULE_VADC, {&MODULE_P00, 6}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT = {&MODULE_VADC, {&MODULE_P33, 6}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT = {&MODULE_VADC, {&MODULE_P00, 7}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT = {&MODULE_VADC, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT = {&MODULE_VADC, {&MODULE_P00, 8}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT = {&MODULE_VADC, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT = {&MODULE_VADC, IfxVadc_GroupId_0, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT = {&MODULE_VADC, IfxVadc_GroupId_0, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_6_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P33, 6}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_7_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P33, 7}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G2BFL0_P33_0_OUT = {&MODULE_VADC, IfxVadc_GroupId_2, {&MODULE_P33, 0}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G2BFL1_P33_1_OUT = {&MODULE_VADC, IfxVadc_GroupId_2, {&MODULE_P33, 1}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G2BFL2_P33_2_OUT = {&MODULE_VADC, IfxVadc_GroupId_2, {&MODULE_P33, 2}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G2BFL3_P33_3_OUT = {&MODULE_VADC, IfxVadc_GroupId_2, {&MODULE_P33, 3}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G4BFL0_P00_4_OUT = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P00, 4}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G4BFL1_P00_5_OUT = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P00, 5}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G4BFL2_P00_6_OUT = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P00, 6}, IfxPort_OutputIdx_alt3};
IfxVadc_GxBfl_Out IfxVadc_G4BFL3_P00_7_OUT = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P00, 7}, IfxPort_OutputIdx_alt3};
IfxVadc_GxBfl_Out IfxVadc_G6BFL0_P10_0_OUT = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P10, 0}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G6BFL1_P10_1_OUT = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P10, 1}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G6BFL2_P10_2_OUT = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P10, 2}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G6BFL3_P10_3_OUT = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P10, 3}, IfxPort_OutputIdx_alt2};
IfxVadc_GxBfl_Out IfxVadc_G7BFL0_P10_6_OUT = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P10, 6}, IfxPort_OutputIdx_alt7};
IfxVadc_GxBfl_Out IfxVadc_G7BFL1_P10_7_OUT = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P10, 7}, IfxPort_OutputIdx_alt4};
IfxVadc_Vadcg_In IfxVadc_G0_0_AN0_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 0}, 0};
IfxVadc_Vadcg_In IfxVadc_G0_1_AN1_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 1}, 1};
IfxVadc_Vadcg_In IfxVadc_G0_2_AN2_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 2}, 2};
IfxVadc_Vadcg_In IfxVadc_G0_3_AN3_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 3}, 3};
IfxVadc_Vadcg_In IfxVadc_G0_4_AN4_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 4}, 4};
IfxVadc_Vadcg_In IfxVadc_G0_5_AN5_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 5}, 5};
IfxVadc_Vadcg_In IfxVadc_G0_6_AN6_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 6}, 6};
IfxVadc_Vadcg_In IfxVadc_G0_7_AN7_IN = {&MODULE_VADC, IfxVadc_GroupId_0, {NULL_PTR, 7}, 7};
IfxVadc_Vadcg_In IfxVadc_G10_0_AN64_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,64}, 0};
IfxVadc_Vadcg_In IfxVadc_G10_1_AN65_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,65}, 1};
IfxVadc_Vadcg_In IfxVadc_G10_2_AN66_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,66}, 2};
IfxVadc_Vadcg_In IfxVadc_G10_3_AN67_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,67}, 3};
IfxVadc_Vadcg_In IfxVadc_G10_3_P40_10_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {&MODULE_P40,10}, 3};
IfxVadc_Vadcg_In IfxVadc_G10_4_AN68_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,68}, 4};
IfxVadc_Vadcg_In IfxVadc_G10_4_P40_11_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {&MODULE_P40,11}, 4};
IfxVadc_Vadcg_In IfxVadc_G10_5_AN69_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,69}, 5};
IfxVadc_Vadcg_In IfxVadc_G10_5_P40_12_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {&MODULE_P40,12}, 5};
IfxVadc_Vadcg_In IfxVadc_G10_6_AN70_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,70}, 6};
IfxVadc_Vadcg_In IfxVadc_G10_6_P40_13_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {&MODULE_P40,13}, 6};
IfxVadc_Vadcg_In IfxVadc_G10_7_AN71_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {NULL_PTR,71}, 7};
IfxVadc_Vadcg_In IfxVadc_G10_7_P40_14_IN = {&MODULE_VADC, IfxVadc_GroupId_10, {&MODULE_P40,14}, 7};
IfxVadc_Vadcg_In IfxVadc_G1_0_AN8_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR, 8}, 0};
IfxVadc_Vadcg_In IfxVadc_G1_1_AN9_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR, 9}, 1};
IfxVadc_Vadcg_In IfxVadc_G1_2_AN10_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR,10}, 2};
IfxVadc_Vadcg_In IfxVadc_G1_3_AN11_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR,11}, 3};
IfxVadc_Vadcg_In IfxVadc_G1_4_AN12_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR,12}, 4};
IfxVadc_Vadcg_In IfxVadc_G1_5_AN13_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR,13}, 5};
IfxVadc_Vadcg_In IfxVadc_G1_6_AN14_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR,14}, 6};
IfxVadc_Vadcg_In IfxVadc_G1_7_AN15_IN = {&MODULE_VADC, IfxVadc_GroupId_1, {NULL_PTR,15}, 7};
IfxVadc_Vadcg_In IfxVadc_G2_0_AN16_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,16}, 0};
IfxVadc_Vadcg_In IfxVadc_G2_1_AN17_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,17}, 1};
IfxVadc_Vadcg_In IfxVadc_G2_2_AN18_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,18}, 2};
IfxVadc_Vadcg_In IfxVadc_G2_3_AN19_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,19}, 3};
IfxVadc_Vadcg_In IfxVadc_G2_4_AN20_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,20}, 4};
IfxVadc_Vadcg_In IfxVadc_G2_5_AN21_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,21}, 5};
IfxVadc_Vadcg_In IfxVadc_G2_6_AN22_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,22}, 6};
IfxVadc_Vadcg_In IfxVadc_G2_7_AN23_IN = {&MODULE_VADC, IfxVadc_GroupId_2, {NULL_PTR,23}, 7};
IfxVadc_Vadcg_In IfxVadc_G3_0_AN24_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,24}, 0};
IfxVadc_Vadcg_In IfxVadc_G3_0_P40_0_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {&MODULE_P40, 0}, 0};
IfxVadc_Vadcg_In IfxVadc_G3_1_AN25_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,25}, 1};
IfxVadc_Vadcg_In IfxVadc_G3_1_P40_1_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {&MODULE_P40, 1}, 1};
IfxVadc_Vadcg_In IfxVadc_G3_2_AN26_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,26}, 2};
IfxVadc_Vadcg_In IfxVadc_G3_2_P40_2_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {&MODULE_P40, 2}, 2};
IfxVadc_Vadcg_In IfxVadc_G3_3_AN27_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,27}, 3};
IfxVadc_Vadcg_In IfxVadc_G3_3_P40_3_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {&MODULE_P40, 3}, 3};
IfxVadc_Vadcg_In IfxVadc_G3_4_AN28_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,28}, 4};
IfxVadc_Vadcg_In IfxVadc_G3_5_AN29_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,29}, 5};
IfxVadc_Vadcg_In IfxVadc_G3_6_AN30_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,30}, 6};
IfxVadc_Vadcg_In IfxVadc_G3_7_AN31_IN = {&MODULE_VADC, IfxVadc_GroupId_3, {NULL_PTR,31}, 7};
IfxVadc_Vadcg_In IfxVadc_G4_0_AN32_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,32}, 0};
IfxVadc_Vadcg_In IfxVadc_G4_0_P40_4_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P40, 4}, 0};
IfxVadc_Vadcg_In IfxVadc_G4_1_AN33_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,33}, 1};
IfxVadc_Vadcg_In IfxVadc_G4_1_P40_5_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P40, 5}, 1};
IfxVadc_Vadcg_In IfxVadc_G4_2_AN34_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,34}, 2};
IfxVadc_Vadcg_In IfxVadc_G4_3_AN35_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,35}, 3};
IfxVadc_Vadcg_In IfxVadc_G4_4_AN36_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,36}, 4};
IfxVadc_Vadcg_In IfxVadc_G4_4_P40_6_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P40, 6}, 4};
IfxVadc_Vadcg_In IfxVadc_G4_5_AN37_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,37}, 5};
IfxVadc_Vadcg_In IfxVadc_G4_5_P40_7_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P40, 7}, 5};
IfxVadc_Vadcg_In IfxVadc_G4_6_AN38_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,38}, 6};
IfxVadc_Vadcg_In IfxVadc_G4_6_P40_8_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P40, 8}, 6};
IfxVadc_Vadcg_In IfxVadc_G4_7_AN39_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {NULL_PTR,39}, 7};
IfxVadc_Vadcg_In IfxVadc_G4_7_P40_9_IN = {&MODULE_VADC, IfxVadc_GroupId_4, {&MODULE_P40, 9}, 7};
IfxVadc_Vadcg_In IfxVadc_G5_0_AN40_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,40}, 0};
IfxVadc_Vadcg_In IfxVadc_G5_1_AN41_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,41}, 1};
IfxVadc_Vadcg_In IfxVadc_G5_2_AN42_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,42}, 2};
IfxVadc_Vadcg_In IfxVadc_G5_3_AN43_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,43}, 3};
IfxVadc_Vadcg_In IfxVadc_G5_4_AN44_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,44}, 4};
IfxVadc_Vadcg_In IfxVadc_G5_5_AN45_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,45}, 5};
IfxVadc_Vadcg_In IfxVadc_G5_6_AN46_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,46}, 6};
IfxVadc_Vadcg_In IfxVadc_G5_7_AN47_IN = {&MODULE_VADC, IfxVadc_GroupId_5, {NULL_PTR,47}, 7};
IfxVadc_Vadcg_In IfxVadc_G6_0_P00_12_IN = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P00,12}, 0};
IfxVadc_Vadcg_In IfxVadc_G6_1_P00_11_IN = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P00,11}, 1};
IfxVadc_Vadcg_In IfxVadc_G6_2_P00_10_IN = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P00,10}, 2};
IfxVadc_Vadcg_In IfxVadc_G6_3_P00_9_IN = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P00, 9}, 3};
IfxVadc_Vadcg_In IfxVadc_G6_4_P00_8_IN = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P00, 8}, 4};
IfxVadc_Vadcg_In IfxVadc_G6_5_P00_7_IN = {&MODULE_VADC, IfxVadc_GroupId_6, {&MODULE_P00, 7}, 5};
IfxVadc_Vadcg_In IfxVadc_G7_0_P00_6_IN = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P00, 6}, 0};
IfxVadc_Vadcg_In IfxVadc_G7_1_P00_5_IN = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P00, 5}, 1};
IfxVadc_Vadcg_In IfxVadc_G7_2_P00_4_IN = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P00, 4}, 2};
IfxVadc_Vadcg_In IfxVadc_G7_3_P00_3_IN = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P00, 3}, 3};
IfxVadc_Vadcg_In IfxVadc_G7_4_P00_2_IN = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P00, 2}, 4};
IfxVadc_Vadcg_In IfxVadc_G7_5_P00_1_IN = {&MODULE_VADC, IfxVadc_GroupId_7, {&MODULE_P00, 1}, 5};
IfxVadc_Vadcg_In IfxVadc_G8_0_AN48_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,48}, 0};
IfxVadc_Vadcg_In IfxVadc_G8_1_AN49_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,49}, 1};
IfxVadc_Vadcg_In IfxVadc_G8_2_AN50_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,50}, 2};
IfxVadc_Vadcg_In IfxVadc_G8_3_AN51_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,51}, 3};
IfxVadc_Vadcg_In IfxVadc_G8_4_AN52_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,52}, 4};
IfxVadc_Vadcg_In IfxVadc_G8_5_AN53_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,53}, 5};
IfxVadc_Vadcg_In IfxVadc_G8_6_AN54_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,54}, 6};
IfxVadc_Vadcg_In IfxVadc_G8_7_AN55_IN = {&MODULE_VADC, IfxVadc_GroupId_8, {NULL_PTR,55}, 7};
IfxVadc_Vadcg_In IfxVadc_G9_0_AN56_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,56}, 0};
IfxVadc_Vadcg_In IfxVadc_G9_1_AN57_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,57}, 1};
IfxVadc_Vadcg_In IfxVadc_G9_2_AN58_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,58}, 2};
IfxVadc_Vadcg_In IfxVadc_G9_3_AN59_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,59}, 3};
IfxVadc_Vadcg_In IfxVadc_G9_4_AN60_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,60}, 4};
IfxVadc_Vadcg_In IfxVadc_G9_5_AN61_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,61}, 5};
IfxVadc_Vadcg_In IfxVadc_G9_6_AN62_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,62}, 6};
IfxVadc_Vadcg_In IfxVadc_G9_7_AN63_IN = {&MODULE_VADC, IfxVadc_GroupId_9, {NULL_PTR,63}, 7};


const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_EMUX_OUT_NUM_ITEMS] = {
    {
        &IfxVadc_EMUX10_P00_6_OUT,
        &IfxVadc_EMUX11_P00_7_OUT,
        &IfxVadc_EMUX12_P00_8_OUT,
        &IfxVadc_EMUX00_P02_6_OUT,
        &IfxVadc_EMUX01_P02_7_OUT,
        &IfxVadc_EMUX02_P02_8_OUT,
        &IfxVadc_EMUX02_P33_1_OUT,
        &IfxVadc_EMUX01_P33_2_OUT,
        &IfxVadc_EMUX00_P33_3_OUT,
        &IfxVadc_EMUX12_P33_4_OUT,
        &IfxVadc_EMUX11_P33_5_OUT,
        &IfxVadc_EMUX10_P33_6_OUT
    }
};

const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_NUM_GROUPS][IFXVADC_PINMAP_GXBFL_OUT_NUM_ITEMS] = {
    {
        {
            &IfxVadc_G0BFL0_P33_4_OUT,
            &IfxVadc_G0BFL1_P33_5_OUT,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G1BFL0_P33_6_OUT,
            &IfxVadc_G1BFL1_P33_7_OUT,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G2BFL0_P33_0_OUT,
            &IfxVadc_G2BFL1_P33_1_OUT,
            &IfxVadc_G2BFL2_P33_2_OUT,
            &IfxVadc_G2BFL3_P33_3_OUT
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G4BFL0_P00_4_OUT,
            &IfxVadc_G4BFL1_P00_5_OUT,
            &IfxVadc_G4BFL2_P00_6_OUT,
            &IfxVadc_G4BFL3_P00_7_OUT
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G6BFL0_P10_0_OUT,
            &IfxVadc_G6BFL1_P10_1_OUT,
            &IfxVadc_G6BFL2_P10_2_OUT,
            &IfxVadc_G6BFL3_P10_3_OUT
        },
        {
            &IfxVadc_G7BFL0_P10_6_OUT,
            &IfxVadc_G7BFL1_P10_7_OUT,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};

const IfxVadc_Vadcg_In *IfxVadc_Vadcg_In_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_NUM_GROUPS][IFXVADC_PINMAP_VADCG_IN_NUM_ITEMS] = {
    {
        {
            &IfxVadc_G0_0_AN0_IN,
            &IfxVadc_G0_1_AN1_IN,
            &IfxVadc_G0_2_AN2_IN,
            &IfxVadc_G0_3_AN3_IN,
            &IfxVadc_G0_4_AN4_IN,
            &IfxVadc_G0_5_AN5_IN,
            &IfxVadc_G0_6_AN6_IN,
            &IfxVadc_G0_7_AN7_IN
        },
        {
            &IfxVadc_G1_0_AN8_IN,
            &IfxVadc_G1_1_AN9_IN,
            &IfxVadc_G1_2_AN10_IN,
            &IfxVadc_G1_3_AN11_IN,
            &IfxVadc_G1_4_AN12_IN,
            &IfxVadc_G1_5_AN13_IN,
            &IfxVadc_G1_6_AN14_IN,
            &IfxVadc_G1_7_AN15_IN
        },
        {
            &IfxVadc_G2_0_AN16_IN,
            &IfxVadc_G2_1_AN17_IN,
            &IfxVadc_G2_2_AN18_IN,
            &IfxVadc_G2_3_AN19_IN,
            &IfxVadc_G2_4_AN20_IN,
            &IfxVadc_G2_5_AN21_IN,
            &IfxVadc_G2_6_AN22_IN,
            &IfxVadc_G2_7_AN23_IN
        },
        {
            &IfxVadc_G3_0_P40_0_IN,
            &IfxVadc_G3_1_P40_1_IN,
            &IfxVadc_G3_2_P40_2_IN,
            &IfxVadc_G3_3_P40_3_IN,
            &IfxVadc_G3_4_AN28_IN,
            &IfxVadc_G3_5_AN29_IN,
            &IfxVadc_G3_6_AN30_IN,
            &IfxVadc_G3_7_AN31_IN
        },
        {
            &IfxVadc_G4_0_P40_4_IN,
            &IfxVadc_G4_1_P40_5_IN,
            &IfxVadc_G4_2_AN34_IN,
            &IfxVadc_G4_3_AN35_IN,
            &IfxVadc_G4_4_P40_6_IN,
            &IfxVadc_G4_5_P40_7_IN,
            &IfxVadc_G4_6_P40_8_IN,
            &IfxVadc_G4_7_P40_9_IN
        },
        {
            &IfxVadc_G5_0_AN40_IN,
            &IfxVadc_G5_1_AN41_IN,
            &IfxVadc_G5_2_AN42_IN,
            &IfxVadc_G5_3_AN43_IN,
            &IfxVadc_G5_4_AN44_IN,
            &IfxVadc_G5_5_AN45_IN,
            &IfxVadc_G5_6_AN46_IN,
            &IfxVadc_G5_7_AN47_IN
        },
        {
            &IfxVadc_G6_0_P00_12_IN,
            &IfxVadc_G6_1_P00_11_IN,
            &IfxVadc_G6_2_P00_10_IN,
            &IfxVadc_G6_3_P00_9_IN,
            &IfxVadc_G6_4_P00_8_IN,
            &IfxVadc_G6_5_P00_7_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G7_0_P00_6_IN,
            &IfxVadc_G7_1_P00_5_IN,
            &IfxVadc_G7_2_P00_4_IN,
            &IfxVadc_G7_3_P00_3_IN,
            &IfxVadc_G7_4_P00_2_IN,
            &IfxVadc_G7_5_P00_1_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G8_0_AN48_IN,
            &IfxVadc_G8_1_AN49_IN,
            &IfxVadc_G8_2_AN50_IN,
            &IfxVadc_G8_3_AN51_IN,
            &IfxVadc_G8_4_AN52_IN,
            &IfxVadc_G8_5_AN53_IN,
            &IfxVadc_G8_6_AN54_IN,
            &IfxVadc_G8_7_AN55_IN
        },
        {
            &IfxVadc_G9_0_AN56_IN,
            &IfxVadc_G9_1_AN57_IN,
            &IfxVadc_G9_2_AN58_IN,
            &IfxVadc_G9_3_AN59_IN,
            &IfxVadc_G9_4_AN60_IN,
            &IfxVadc_G9_5_AN61_IN,
            &IfxVadc_G9_6_AN62_IN,
            &IfxVadc_G9_7_AN63_IN
        },
        {
            &IfxVadc_G10_0_AN64_IN,
            &IfxVadc_G10_1_AN65_IN,
            &IfxVadc_G10_2_AN66_IN,
            &IfxVadc_G10_3_P40_10_IN,
            &IfxVadc_G10_4_P40_11_IN,
            &IfxVadc_G10_5_P40_12_IN,
            &IfxVadc_G10_6_P40_13_IN,
            &IfxVadc_G10_7_P40_14_IN
        }
    }
};
