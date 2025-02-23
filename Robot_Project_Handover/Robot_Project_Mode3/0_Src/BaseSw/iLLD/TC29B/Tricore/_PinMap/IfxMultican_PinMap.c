/**
 * \file IfxMultican_PinMap.c
 * \brief MULTICAN I/O map
 * \ingroup IfxLld_Multican
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

#include "IfxMultican_PinMap.h"

IfxMultican_Rxd_In IfxCanr_RXD0A_P10_5_IN = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P10, 5}, Ifx_RxSel_a};
IfxMultican_Rxd_In IfxCanr_RXD0B_P10_8_IN = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P10, 8}, Ifx_RxSel_b};
IfxMultican_Rxd_In IfxCanr_RXD0C_P34_2_IN = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P34, 2}, Ifx_RxSel_c};
IfxMultican_Rxd_In IfxCanr_RXD0D_P02_14_IN = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P02,14}, Ifx_RxSel_d};
IfxMultican_Rxd_In IfxCanr_RXD0E_P01_8_IN = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P01, 8}, Ifx_RxSel_e};
IfxMultican_Rxd_In IfxCanr_RXD1A_P00_3_IN = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P00, 3}, Ifx_RxSel_a};
IfxMultican_Rxd_In IfxCanr_RXD1B_P13_12_IN = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P13,12}, Ifx_RxSel_b};
IfxMultican_Rxd_In IfxCanr_RXD1C_P20_0_IN = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P20, 0}, Ifx_RxSel_c};
IfxMultican_Rxd_In IfxCanr_RXD1D_P32_2_IN = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P32, 2}, Ifx_RxSel_d};
IfxMultican_Rxd_In IfxCanr_RXD1E_P01_0_IN = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P01, 0}, Ifx_RxSel_e};
IfxMultican_Rxd_In IfxMultican_RXD0A_P02_1_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P02, 1}, Ifx_RxSel_a};
IfxMultican_Rxd_In IfxMultican_RXD0B_P20_7_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P20, 7}, Ifx_RxSel_b};
IfxMultican_Rxd_In IfxMultican_RXD0C_P12_0_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P12, 0}, Ifx_RxSel_c};
IfxMultican_Rxd_In IfxMultican_RXD0D_P02_4_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P02, 4}, Ifx_RxSel_d};
IfxMultican_Rxd_In IfxMultican_RXD0E_P33_7_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P33, 7}, Ifx_RxSel_e};
IfxMultican_Rxd_In IfxMultican_RXD0F_P01_8_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P01, 8}, Ifx_RxSel_f};
IfxMultican_Rxd_In IfxMultican_RXD0G_P34_2_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P34, 2}, Ifx_RxSel_g};
IfxMultican_Rxd_In IfxMultican_RXD0H_P02_14_IN = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P02,14}, Ifx_RxSel_h};
IfxMultican_Rxd_In IfxMultican_RXD1A_P15_3_IN = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P15, 3}, Ifx_RxSel_a};
IfxMultican_Rxd_In IfxMultican_RXD1B_P14_1_IN = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P14, 1}, Ifx_RxSel_b};
IfxMultican_Rxd_In IfxMultican_RXD1C_P01_4_IN = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P01, 4}, Ifx_RxSel_c};
IfxMultican_Rxd_In IfxMultican_RXD1D_P00_1_IN = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P00, 1}, Ifx_RxSel_d};
IfxMultican_Rxd_In IfxMultican_RXD1E_P02_10_IN = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P02,10}, Ifx_RxSel_e};
IfxMultican_Rxd_In IfxMultican_RXD2A_P15_1_IN = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P15, 1}, Ifx_RxSel_a};
IfxMultican_Rxd_In IfxMultican_RXD2B_P02_3_IN = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P02, 3}, Ifx_RxSel_b};
IfxMultican_Rxd_In IfxMultican_RXD2C_P32_6_IN = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P32, 6}, Ifx_RxSel_c};
IfxMultican_Rxd_In IfxMultican_RXD2D_P14_8_IN = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P14, 8}, Ifx_RxSel_d};
IfxMultican_Rxd_In IfxMultican_RXD2E_P10_2_IN = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P10, 2}, Ifx_RxSel_e};
IfxMultican_Rxd_In IfxMultican_RXD3A_P00_3_IN = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P00, 3}, Ifx_RxSel_a};
IfxMultican_Rxd_In IfxMultican_RXD3B_P32_2_IN = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P32, 2}, Ifx_RxSel_b};
IfxMultican_Rxd_In IfxMultican_RXD3C_P20_0_IN = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P20, 0}, Ifx_RxSel_c};
IfxMultican_Rxd_In IfxMultican_RXD3D_P11_10_IN = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P11,10}, Ifx_RxSel_d};
IfxMultican_Rxd_In IfxMultican_RXD3E_P20_9_IN = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P20, 9}, Ifx_RxSel_e};
IfxMultican_Rxd_In IfxMultican_RXD3F_P01_0_IN = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P01, 0}, Ifx_RxSel_f};
IfxMultican_Txd_Out IfxCanr_TXD0_P01_13_OUT = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P01,13}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD0_P02_13_OUT = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P02,13}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD0_P10_6_OUT = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P10, 6}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD0_P10_7_OUT = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P10, 7}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD0_P34_1_OUT = {&MODULE_CANR, IfxMultican_NodeId_0, {&MODULE_P34, 1}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD1_P00_2_OUT = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P00, 2}, IfxPort_OutputIdx_alt3};
IfxMultican_Txd_Out IfxCanr_TXD1_P01_2_OUT = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P01, 2}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD1_P13_9_OUT = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P13, 9}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxCanr_TXD1_P20_3_OUT = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P20, 3}, IfxPort_OutputIdx_alt6};
IfxMultican_Txd_Out IfxCanr_TXD1_P32_3_OUT = {&MODULE_CANR, IfxMultican_NodeId_1, {&MODULE_P32, 3}, IfxPort_OutputIdx_alt6};
IfxMultican_Txd_Out IfxMultican_TXD0_P01_13_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P01,13}, IfxPort_OutputIdx_alt4};
IfxMultican_Txd_Out IfxMultican_TXD0_P02_0_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P02, 0}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD0_P02_13_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P02,13}, IfxPort_OutputIdx_alt4};
IfxMultican_Txd_Out IfxMultican_TXD0_P02_5_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P02, 5}, IfxPort_OutputIdx_alt2};
IfxMultican_Txd_Out IfxMultican_TXD0_P12_1_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P12, 1}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD0_P20_8_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P20, 8}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD0_P33_8_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P33, 8}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD0_P34_1_OUT = {&MODULE_CAN, IfxMultican_NodeId_0, {&MODULE_P34, 1}, IfxPort_OutputIdx_alt4};
IfxMultican_Txd_Out IfxMultican_TXD1_P00_0_OUT = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P00, 0}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD1_P01_3_OUT = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P01, 3}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD1_P02_9_OUT = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P02, 9}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD1_P14_0_OUT = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P14, 0}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD1_P15_2_OUT = {&MODULE_CAN, IfxMultican_NodeId_1, {&MODULE_P15, 2}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD2_P02_2_OUT = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P02, 2}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD2_P10_3_OUT = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P10, 3}, IfxPort_OutputIdx_alt6};
IfxMultican_Txd_Out IfxMultican_TXD2_P14_10_OUT = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P14,10}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD2_P15_0_OUT = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P15, 0}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD2_P32_5_OUT = {&MODULE_CAN, IfxMultican_NodeId_2, {&MODULE_P32, 5}, IfxPort_OutputIdx_alt6};
IfxMultican_Txd_Out IfxMultican_TXD3_P00_2_OUT = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P00, 2}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD3_P01_2_OUT = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P01, 2}, IfxPort_OutputIdx_alt3};
IfxMultican_Txd_Out IfxMultican_TXD3_P11_12_OUT = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P11,12}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD3_P20_10_OUT = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P20,10}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD3_P20_3_OUT = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P20, 3}, IfxPort_OutputIdx_alt5};
IfxMultican_Txd_Out IfxMultican_TXD3_P32_3_OUT = {&MODULE_CAN, IfxMultican_NodeId_3, {&MODULE_P32, 3}, IfxPort_OutputIdx_alt5};


const IfxMultican_Rxd_In *IfxMultican_Rxd_In_pinTable[IFXMULTICAN_PINMAP_NUM_MODULES][IFXMULTICAN_PINMAP_NUM_NODES][IFXMULTICAN_PINMAP_RXD_IN_NUM_ITEMS] = {
    {
        {
            &IfxMultican_RXD0A_P02_1_IN,
            &IfxMultican_RXD0B_P20_7_IN,
            &IfxMultican_RXD0C_P12_0_IN,
            &IfxMultican_RXD0D_P02_4_IN,
            &IfxMultican_RXD0E_P33_7_IN,
            &IfxMultican_RXD0F_P01_8_IN,
            &IfxMultican_RXD0G_P34_2_IN,
            &IfxMultican_RXD0H_P02_14_IN
        },
        {
            &IfxMultican_RXD1A_P15_3_IN,
            &IfxMultican_RXD1B_P14_1_IN,
            &IfxMultican_RXD1C_P01_4_IN,
            &IfxMultican_RXD1D_P00_1_IN,
            &IfxMultican_RXD1E_P02_10_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxMultican_RXD2A_P15_1_IN,
            &IfxMultican_RXD2B_P02_3_IN,
            &IfxMultican_RXD2C_P32_6_IN,
            &IfxMultican_RXD2D_P14_8_IN,
            &IfxMultican_RXD2E_P10_2_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxMultican_RXD3A_P00_3_IN,
            &IfxMultican_RXD3B_P32_2_IN,
            &IfxMultican_RXD3C_P20_0_IN,
            &IfxMultican_RXD3D_P11_10_IN,
            &IfxMultican_RXD3E_P20_9_IN,
            &IfxMultican_RXD3F_P01_0_IN,
            NULL_PTR,
            NULL_PTR
        }
    },
    {
        {
            &IfxCanr_RXD0A_P10_5_IN,
            &IfxCanr_RXD0B_P10_8_IN,
            &IfxCanr_RXD0C_P34_2_IN,
            &IfxCanr_RXD0D_P02_14_IN,
            &IfxCanr_RXD0E_P01_8_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxCanr_RXD1A_P00_3_IN,
            &IfxCanr_RXD1B_P13_12_IN,
            &IfxCanr_RXD1C_P20_0_IN,
            &IfxCanr_RXD1D_P32_2_IN,
            &IfxCanr_RXD1E_P01_0_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};

const IfxMultican_Txd_Out *IfxMultican_Txd_Out_pinTable[IFXMULTICAN_PINMAP_NUM_MODULES][IFXMULTICAN_PINMAP_NUM_NODES][IFXMULTICAN_PINMAP_TXD_OUT_NUM_ITEMS] = {
    {
        {
            &IfxMultican_TXD0_P01_13_OUT,
            &IfxMultican_TXD0_P02_0_OUT,
            &IfxMultican_TXD0_P02_5_OUT,
            &IfxMultican_TXD0_P02_13_OUT,
            &IfxMultican_TXD0_P12_1_OUT,
            &IfxMultican_TXD0_P20_8_OUT,
            &IfxMultican_TXD0_P33_8_OUT,
            &IfxMultican_TXD0_P34_1_OUT
        },
        {
            &IfxMultican_TXD1_P00_0_OUT,
            &IfxMultican_TXD1_P01_3_OUT,
            &IfxMultican_TXD1_P02_9_OUT,
            &IfxMultican_TXD1_P14_0_OUT,
            &IfxMultican_TXD1_P15_2_OUT,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxMultican_TXD2_P02_2_OUT,
            &IfxMultican_TXD2_P10_3_OUT,
            &IfxMultican_TXD2_P14_10_OUT,
            &IfxMultican_TXD2_P15_0_OUT,
            &IfxMultican_TXD2_P32_5_OUT,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxMultican_TXD3_P00_2_OUT,
            &IfxMultican_TXD3_P01_2_OUT,
            &IfxMultican_TXD3_P11_12_OUT,
            &IfxMultican_TXD3_P20_3_OUT,
            &IfxMultican_TXD3_P20_10_OUT,
            &IfxMultican_TXD3_P32_3_OUT,
            NULL_PTR,
            NULL_PTR
        }
    },
    {
        {
            &IfxCanr_TXD0_P01_13_OUT,
            &IfxCanr_TXD0_P02_13_OUT,
            &IfxCanr_TXD0_P10_6_OUT,
            &IfxCanr_TXD0_P10_7_OUT,
            &IfxCanr_TXD0_P34_1_OUT,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxCanr_TXD1_P00_2_OUT,
            &IfxCanr_TXD1_P01_2_OUT,
            &IfxCanr_TXD1_P13_9_OUT,
            &IfxCanr_TXD1_P20_3_OUT,
            &IfxCanr_TXD1_P32_3_OUT,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};
