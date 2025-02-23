/**
 * \file IfxDsadc_PinMap.c
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
 */

#include "IfxDsadc_PinMap.h"

IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P00_5_OUT = {&MODULE_DSADC, {&MODULE_P00, 5}, IfxPort_OutputIdx_alt2};
IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P02_0_OUT = {&MODULE_DSADC, {&MODULE_P02, 0}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P33_11_OUT = {&MODULE_DSADC, {&MODULE_P33,11}, IfxPort_OutputIdx_alt6};
IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P00_6_OUT = {&MODULE_DSADC, {&MODULE_P00, 6}, IfxPort_OutputIdx_alt2};
IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P02_1_OUT = {&MODULE_DSADC, {&MODULE_P02, 1}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P33_12_OUT = {&MODULE_DSADC, {&MODULE_P33,12}, IfxPort_OutputIdx_alt6};
IfxDsadc_Cin_In IfxDsadc_CIN0A_P00_11_IN = {&MODULE_DSADC, 0, {&MODULE_P00,11}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN0B_P33_5_IN = {&MODULE_DSADC, 0, {&MODULE_P33, 5}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN1A_P00_9_IN = {&MODULE_DSADC, 1, {&MODULE_P00, 9}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN1B_P33_3_IN = {&MODULE_DSADC, 1, {&MODULE_P33, 3}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN2A_P00_5_IN = {&MODULE_DSADC, 2, {&MODULE_P00, 5}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN2B_P33_1_IN = {&MODULE_DSADC, 2, {&MODULE_P33, 1}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN3A_P00_3_IN = {&MODULE_DSADC, 3, {&MODULE_P00, 3}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN3B_P02_7_IN = {&MODULE_DSADC, 3, {&MODULE_P02, 7}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN4A_P00_7_IN = {&MODULE_DSADC, 4, {&MODULE_P00, 7}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN4B_P02_5_IN = {&MODULE_DSADC, 4, {&MODULE_P02, 5}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN5A_P00_1_IN = {&MODULE_DSADC, 5, {&MODULE_P00, 1}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN5B_P02_3_IN = {&MODULE_DSADC, 5, {&MODULE_P02, 3}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN6A_P00_14_IN = {&MODULE_DSADC, 6, {&MODULE_P00,14}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN7A_P01_2_IN = {&MODULE_DSADC, 7, {&MODULE_P01, 2}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN7B_P00_1_IN = {&MODULE_DSADC, 7, {&MODULE_P00, 1}, Ifx_RxSel_b};
IfxDsadc_Cin_In IfxDsadc_CIN8A_P01_5_IN = {&MODULE_DSADC, 8, {&MODULE_P01, 5}, Ifx_RxSel_a};
IfxDsadc_Cin_In IfxDsadc_CIN9A_P01_9_IN = {&MODULE_DSADC, 9, {&MODULE_P01, 9}, Ifx_RxSel_a};
IfxDsadc_Cout_Out IfxDsadc_COUT0_P00_11_OUT = {&MODULE_DSADC, 0, {&MODULE_P00,11}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT0_P33_5_OUT = {&MODULE_DSADC, 0, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT1_P00_9_OUT = {&MODULE_DSADC, 1, {&MODULE_P00, 9}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT1_P33_3_OUT = {&MODULE_DSADC, 1, {&MODULE_P33, 3}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT2_P00_5_OUT = {&MODULE_DSADC, 2, {&MODULE_P00, 5}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT2_P33_1_OUT = {&MODULE_DSADC, 2, {&MODULE_P33, 1}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT3_P00_3_OUT = {&MODULE_DSADC, 3, {&MODULE_P00, 3}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT3_P02_7_OUT = {&MODULE_DSADC, 3, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT4_P00_7_OUT = {&MODULE_DSADC, 4, {&MODULE_P00, 7}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT4_P02_5_OUT = {&MODULE_DSADC, 4, {&MODULE_P02, 5}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT5_P00_1_OUT = {&MODULE_DSADC, 5, {&MODULE_P00, 1}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT5_P02_3_OUT = {&MODULE_DSADC, 5, {&MODULE_P02, 3}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT6_P00_14_OUT = {&MODULE_DSADC, 6, {&MODULE_P00,14}, IfxPort_OutputIdx_alt4};
IfxDsadc_Cout_Out IfxDsadc_COUT7_P00_1_OUT = {&MODULE_DSADC, 7, {&MODULE_P00, 1}, IfxPort_OutputIdx_alt5};
IfxDsadc_Cout_Out IfxDsadc_COUT7_P01_2_OUT = {&MODULE_DSADC, 7, {&MODULE_P01, 2}, IfxPort_OutputIdx_alt6};
IfxDsadc_Cout_Out IfxDsadc_COUT8_P01_5_OUT = {&MODULE_DSADC, 8, {&MODULE_P01, 5}, IfxPort_OutputIdx_alt6};
IfxDsadc_Cout_Out IfxDsadc_COUT9_P01_9_OUT = {&MODULE_DSADC, 9, {&MODULE_P01, 9}, IfxPort_OutputIdx_alt6};
IfxDsadc_Din_In IfxDsadc_DIN0A_P00_12_IN = {&MODULE_DSADC, 0, {&MODULE_P00,12}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN0B_P33_6_IN = {&MODULE_DSADC, 0, {&MODULE_P33, 6}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN1A_P00_10_IN = {&MODULE_DSADC, 1, {&MODULE_P00,10}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN1B_P33_4_IN = {&MODULE_DSADC, 1, {&MODULE_P33, 4}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN2A_P00_6_IN = {&MODULE_DSADC, 2, {&MODULE_P00, 6}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN2B_P33_2_IN = {&MODULE_DSADC, 2, {&MODULE_P33, 2}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN3A_P00_4_IN = {&MODULE_DSADC, 3, {&MODULE_P00, 4}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN3B_P02_8_IN = {&MODULE_DSADC, 3, {&MODULE_P02, 8}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN4A_P00_8_IN = {&MODULE_DSADC, 4, {&MODULE_P00, 8}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN4B_P02_6_IN = {&MODULE_DSADC, 4, {&MODULE_P02, 6}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN5A_P00_2_IN = {&MODULE_DSADC, 5, {&MODULE_P00, 2}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN5B_P02_4_IN = {&MODULE_DSADC, 5, {&MODULE_P02, 4}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN6A_P00_13_IN = {&MODULE_DSADC, 6, {&MODULE_P00,13}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN7A_P01_15_IN = {&MODULE_DSADC, 7, {&MODULE_P01,15}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN7B_P00_2_IN = {&MODULE_DSADC, 7, {&MODULE_P00, 2}, Ifx_RxSel_b};
IfxDsadc_Din_In IfxDsadc_DIN8A_P01_6_IN = {&MODULE_DSADC, 8, {&MODULE_P01, 6}, Ifx_RxSel_a};
IfxDsadc_Din_In IfxDsadc_DIN9A_P01_8_IN = {&MODULE_DSADC, 9, {&MODULE_P01, 8}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS0NA_AN3_IN = {&MODULE_DSADC, 0, {NULL_PTR, 3}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS1NA_AN1_IN = {&MODULE_DSADC, 1, {NULL_PTR, 1}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS2NA_AN21_IN = {&MODULE_DSADC, 2, {NULL_PTR,21}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS2NB_AN25_IN = {&MODULE_DSADC, 2, {NULL_PTR,25}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS2NB_P40_1_IN = {&MODULE_DSADC, 2, {&MODULE_P40, 1}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS3NA_AN37_IN = {&MODULE_DSADC, 3, {NULL_PTR,37}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS3NA_P40_7_IN = {&MODULE_DSADC, 3, {&MODULE_P40, 7}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS3NB_AN39_IN = {&MODULE_DSADC, 3, {NULL_PTR,39}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS3NB_P40_9_IN = {&MODULE_DSADC, 3, {&MODULE_P40, 9}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS3NC_AN45_IN = {&MODULE_DSADC, 3, {NULL_PTR,45}, Ifx_RxSel_c};
IfxDsadc_Dsn_In IfxDsadc_DS3ND_AN47_IN = {&MODULE_DSADC, 3, {NULL_PTR,47}, Ifx_RxSel_d};
IfxDsadc_Dsn_In IfxDsadc_DS4NA_P00_7_IN = {&MODULE_DSADC, 4, {&MODULE_P00, 7}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS5NA_P00_1_IN = {&MODULE_DSADC, 5, {&MODULE_P00, 1}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS6NA_AN53_IN = {&MODULE_DSADC, 6, {NULL_PTR,53}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS6NB_AN55_IN = {&MODULE_DSADC, 6, {NULL_PTR,55}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS7NA_AN61_IN = {&MODULE_DSADC, 7, {NULL_PTR,61}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS7NB_AN63_IN = {&MODULE_DSADC, 7, {NULL_PTR,63}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS8NA_AN69_IN = {&MODULE_DSADC, 8, {NULL_PTR,69}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS8NA_P40_12_IN = {&MODULE_DSADC, 8, {&MODULE_P40,12}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS8NB_AN67_IN = {&MODULE_DSADC, 8, {NULL_PTR,67}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS8NB_P40_10_IN = {&MODULE_DSADC, 8, {&MODULE_P40,10}, Ifx_RxSel_b};
IfxDsadc_Dsn_In IfxDsadc_DS9NA_AN71_IN = {&MODULE_DSADC, 9, {NULL_PTR,71}, Ifx_RxSel_a};
IfxDsadc_Dsn_In IfxDsadc_DS9NA_P40_14_IN = {&MODULE_DSADC, 9, {&MODULE_P40,14}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS0PA_AN2_IN = {&MODULE_DSADC, 0, {NULL_PTR, 2}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS1PA_AN0_IN = {&MODULE_DSADC, 1, {NULL_PTR, 0}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS2PA_AN20_IN = {&MODULE_DSADC, 2, {NULL_PTR,20}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS2PB_AN24_IN = {&MODULE_DSADC, 2, {NULL_PTR,24}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS2PB_P40_0_IN = {&MODULE_DSADC, 2, {&MODULE_P40, 0}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS3PA_AN36_IN = {&MODULE_DSADC, 3, {NULL_PTR,36}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS3PA_P40_6_IN = {&MODULE_DSADC, 3, {&MODULE_P40, 6}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS3PB_AN38_IN = {&MODULE_DSADC, 3, {NULL_PTR,38}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS3PB_P40_8_IN = {&MODULE_DSADC, 3, {&MODULE_P40, 8}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS3PC_AN44_IN = {&MODULE_DSADC, 3, {NULL_PTR,44}, Ifx_RxSel_c};
IfxDsadc_Dsp_In IfxDsadc_DS3PD_AN46_IN = {&MODULE_DSADC, 3, {NULL_PTR,46}, Ifx_RxSel_d};
IfxDsadc_Dsp_In IfxDsadc_DS4PA_P00_8_IN = {&MODULE_DSADC, 4, {&MODULE_P00, 8}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS5PA_P00_2_IN = {&MODULE_DSADC, 5, {&MODULE_P00, 2}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS6PA_AN52_IN = {&MODULE_DSADC, 6, {NULL_PTR,52}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS6PB_AN54_IN = {&MODULE_DSADC, 6, {NULL_PTR,54}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS7PA_AN60_IN = {&MODULE_DSADC, 7, {NULL_PTR,60}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS7PB_AN62_IN = {&MODULE_DSADC, 7, {NULL_PTR,62}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS8PA_AN68_IN = {&MODULE_DSADC, 8, {NULL_PTR,68}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS8PA_P40_11_IN = {&MODULE_DSADC, 8, {&MODULE_P40,11}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS8PB_AN66_IN = {&MODULE_DSADC, 8, {NULL_PTR,66}, Ifx_RxSel_b};
IfxDsadc_Dsp_In IfxDsadc_DS9PA_AN70_IN = {&MODULE_DSADC, 9, {NULL_PTR,70}, Ifx_RxSel_a};
IfxDsadc_Dsp_In IfxDsadc_DS9PA_P40_13_IN = {&MODULE_DSADC, 9, {&MODULE_P40,13}, Ifx_RxSel_a};
IfxDsadc_Itr_In IfxDsadc_ITR0E_P33_0_IN = {&MODULE_DSADC, 0, {&MODULE_P33, 0}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR0F_P33_4_IN = {&MODULE_DSADC, 0, {&MODULE_P33, 4}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR1E_P33_1_IN = {&MODULE_DSADC, 1, {&MODULE_P33, 1}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR1F_P33_5_IN = {&MODULE_DSADC, 1, {&MODULE_P33, 5}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR2E_P33_2_IN = {&MODULE_DSADC, 2, {&MODULE_P33, 2}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR2F_P33_6_IN = {&MODULE_DSADC, 2, {&MODULE_P33, 6}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR3E_P02_8_IN = {&MODULE_DSADC, 3, {&MODULE_P02, 8}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR3F_P00_9_IN = {&MODULE_DSADC, 3, {&MODULE_P00, 9}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR4E_P02_7_IN = {&MODULE_DSADC, 4, {&MODULE_P02, 7}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR4F_P00_6_IN = {&MODULE_DSADC, 4, {&MODULE_P00, 6}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR5E_P02_6_IN = {&MODULE_DSADC, 5, {&MODULE_P02, 6}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR5F_P00_3_IN = {&MODULE_DSADC, 5, {&MODULE_P00, 3}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR6E_P01_0_IN = {&MODULE_DSADC, 6, {&MODULE_P01, 0}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR6F_P00_15_IN = {&MODULE_DSADC, 6, {&MODULE_P00,15}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR7E_P01_4_IN = {&MODULE_DSADC, 7, {&MODULE_P01, 4}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR7F_P01_3_IN = {&MODULE_DSADC, 7, {&MODULE_P01, 3}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR8E_P01_1_IN = {&MODULE_DSADC, 8, {&MODULE_P01, 1}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR8F_P01_7_IN = {&MODULE_DSADC, 8, {&MODULE_P01, 7}, Ifx_RxSel_f};
IfxDsadc_Itr_In IfxDsadc_ITR9E_P01_11_IN = {&MODULE_DSADC, 9, {&MODULE_P01,11}, Ifx_RxSel_e};
IfxDsadc_Itr_In IfxDsadc_ITR9F_P01_10_IN = {&MODULE_DSADC, 9, {&MODULE_P01,10}, Ifx_RxSel_f};
IfxDsadc_Sg_In IfxDsadc_SGNA_P00_4_IN = {&MODULE_DSADC, {&MODULE_P00, 4}, Ifx_RxSel_a};
IfxDsadc_Sg_In IfxDsadc_SGNB_P33_13_IN = {&MODULE_DSADC, {&MODULE_P33,13}, Ifx_RxSel_b};


const IfxDsadc_Cgpwm_Out *IfxDsadc_Cgpwm_Out_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_CGPWM_OUT_NUM_ITEMS] = {
    {
        &IfxDsadc_CGPWMN_P00_5_OUT,
        &IfxDsadc_CGPWMP_P00_6_OUT,
        &IfxDsadc_CGPWMN_P02_0_OUT,
        &IfxDsadc_CGPWMP_P02_1_OUT,
        &IfxDsadc_CGPWMN_P33_11_OUT,
        &IfxDsadc_CGPWMP_P33_12_OUT
    }
};

const IfxDsadc_Cin_In *IfxDsadc_Cin_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_CIN_IN_NUM_ITEMS] = {
    {
        {
            &IfxDsadc_CIN0A_P00_11_IN,
            &IfxDsadc_CIN0B_P33_5_IN
        },
        {
            &IfxDsadc_CIN1A_P00_9_IN,
            &IfxDsadc_CIN1B_P33_3_IN
        },
        {
            &IfxDsadc_CIN2A_P00_5_IN,
            &IfxDsadc_CIN2B_P33_1_IN
        },
        {
            &IfxDsadc_CIN3A_P00_3_IN,
            &IfxDsadc_CIN3B_P02_7_IN
        },
        {
            &IfxDsadc_CIN4A_P00_7_IN,
            &IfxDsadc_CIN4B_P02_5_IN
        },
        {
            &IfxDsadc_CIN5A_P00_1_IN,
            &IfxDsadc_CIN5B_P02_3_IN
        },
        {
            &IfxDsadc_CIN6A_P00_14_IN,
            NULL_PTR
        },
        {
            &IfxDsadc_CIN7A_P01_2_IN,
            &IfxDsadc_CIN7B_P00_1_IN
        },
        {
            &IfxDsadc_CIN8A_P01_5_IN,
            NULL_PTR
        },
        {
            &IfxDsadc_CIN9A_P01_9_IN,
            NULL_PTR
        }
    }
};

const IfxDsadc_Cout_Out *IfxDsadc_Cout_Out_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_COUT_OUT_NUM_ITEMS] = {
    {
        {
            &IfxDsadc_COUT0_P00_11_OUT,
            &IfxDsadc_COUT0_P33_5_OUT
        },
        {
            &IfxDsadc_COUT1_P00_9_OUT,
            &IfxDsadc_COUT1_P33_3_OUT
        },
        {
            &IfxDsadc_COUT2_P00_5_OUT,
            &IfxDsadc_COUT2_P33_1_OUT
        },
        {
            &IfxDsadc_COUT3_P00_3_OUT,
            &IfxDsadc_COUT3_P02_7_OUT
        },
        {
            &IfxDsadc_COUT4_P00_7_OUT,
            &IfxDsadc_COUT4_P02_5_OUT
        },
        {
            &IfxDsadc_COUT5_P00_1_OUT,
            &IfxDsadc_COUT5_P02_3_OUT
        },
        {
            &IfxDsadc_COUT6_P00_14_OUT,
            NULL_PTR
        },
        {
            &IfxDsadc_COUT7_P00_1_OUT,
            &IfxDsadc_COUT7_P01_2_OUT
        },
        {
            &IfxDsadc_COUT8_P01_5_OUT,
            NULL_PTR
        },
        {
            &IfxDsadc_COUT9_P01_9_OUT,
            NULL_PTR
        }
    }
};

const IfxDsadc_Din_In *IfxDsadc_Din_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_DIN_IN_NUM_ITEMS] = {
    {
        {
            &IfxDsadc_DIN0A_P00_12_IN,
            &IfxDsadc_DIN0B_P33_6_IN
        },
        {
            &IfxDsadc_DIN1A_P00_10_IN,
            &IfxDsadc_DIN1B_P33_4_IN
        },
        {
            &IfxDsadc_DIN2A_P00_6_IN,
            &IfxDsadc_DIN2B_P33_2_IN
        },
        {
            &IfxDsadc_DIN3A_P00_4_IN,
            &IfxDsadc_DIN3B_P02_8_IN
        },
        {
            &IfxDsadc_DIN4A_P00_8_IN,
            &IfxDsadc_DIN4B_P02_6_IN
        },
        {
            &IfxDsadc_DIN5A_P00_2_IN,
            &IfxDsadc_DIN5B_P02_4_IN
        },
        {
            &IfxDsadc_DIN6A_P00_13_IN,
            NULL_PTR
        },
        {
            &IfxDsadc_DIN7A_P01_15_IN,
            &IfxDsadc_DIN7B_P00_2_IN
        },
        {
            &IfxDsadc_DIN8A_P01_6_IN,
            NULL_PTR
        },
        {
            &IfxDsadc_DIN9A_P01_8_IN,
            NULL_PTR
        }
    }
};

const IfxDsadc_Dsn_In *IfxDsadc_Dsn_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_DSN_IN_NUM_ITEMS] = {
    {
        {
            &IfxDsadc_DS0NA_AN3_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS1NA_AN1_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS2NA_AN21_IN,
            &IfxDsadc_DS2NB_P40_1_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS3NA_P40_7_IN,
            &IfxDsadc_DS3NB_P40_9_IN,
            &IfxDsadc_DS3NC_AN45_IN,
            &IfxDsadc_DS3ND_AN47_IN
        },
        {
            &IfxDsadc_DS4NA_P00_7_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS5NA_P00_1_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS6NA_AN53_IN,
            &IfxDsadc_DS6NB_AN55_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS7NA_AN61_IN,
            &IfxDsadc_DS7NB_AN63_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS8NA_P40_12_IN,
            &IfxDsadc_DS8NB_P40_10_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS9NA_P40_14_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};

const IfxDsadc_Dsp_In *IfxDsadc_Dsp_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_DSP_IN_NUM_ITEMS] = {
    {
        {
            &IfxDsadc_DS0PA_AN2_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS1PA_AN0_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS2PA_AN20_IN,
            &IfxDsadc_DS2PB_P40_0_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS3PA_P40_6_IN,
            &IfxDsadc_DS3PB_P40_8_IN,
            &IfxDsadc_DS3PC_AN44_IN,
            &IfxDsadc_DS3PD_AN46_IN
        },
        {
            &IfxDsadc_DS4PA_P00_8_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS5PA_P00_2_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS6PA_AN52_IN,
            &IfxDsadc_DS6PB_AN54_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS7PA_AN60_IN,
            &IfxDsadc_DS7PB_AN62_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS8PA_P40_11_IN,
            &IfxDsadc_DS8PB_AN66_IN,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxDsadc_DS9PA_P40_13_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};

const IfxDsadc_Itr_In *IfxDsadc_Itr_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_NUM_CHANNELS][IFXDSADC_PINMAP_ITR_IN_NUM_ITEMS] = {
    {
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR0E_P33_0_IN,
            &IfxDsadc_ITR0F_P33_4_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR1E_P33_1_IN,
            &IfxDsadc_ITR1F_P33_5_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR2E_P33_2_IN,
            &IfxDsadc_ITR2F_P33_6_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR3E_P02_8_IN,
            &IfxDsadc_ITR3F_P00_9_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR4E_P02_7_IN,
            &IfxDsadc_ITR4F_P00_6_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR5E_P02_6_IN,
            &IfxDsadc_ITR5F_P00_3_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR6E_P01_0_IN,
            &IfxDsadc_ITR6F_P00_15_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR7E_P01_4_IN,
            &IfxDsadc_ITR7F_P01_3_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR8E_P01_1_IN,
            &IfxDsadc_ITR8F_P01_7_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxDsadc_ITR9E_P01_11_IN,
            &IfxDsadc_ITR9F_P01_10_IN
        }
    }
};

const IfxDsadc_Sg_In *IfxDsadc_Sg_In_pinTable[IFXDSADC_PINMAP_NUM_MODULES][IFXDSADC_PINMAP_SG_IN_NUM_ITEMS] = {
    {
        &IfxDsadc_SGNA_P00_4_IN,
        &IfxDsadc_SGNB_P33_13_IN
    }
};
