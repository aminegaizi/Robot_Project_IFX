/**
 * \file IfxSent_PinMap.h
 * \brief SENT I/O map
 * \ingroup IfxLld_Sent
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
 * \defgroup IfxLld_Sent_pinmap SENT Pin Mapping
 * \ingroup IfxLld_Sent
 */

#ifndef IFXSENT_PINMAP_H
#define IFXSENT_PINMAP_H

#include <IfxSent_reg.h>
#include <_Impl/IfxSent_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Sent_pinmap
 * \{ */

/** \brief SENT pin mapping structure */
typedef const struct
{
    Ifx_SENT*         module;    /**< \brief Base address */
    IfxSent_ChannelId channelId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    Ifx_RxSel         select;    /**< \brief Input multiplexer value */
} IfxSent_Sent_In;

/** \brief SPC pin mapping structure */
typedef const struct
{
    Ifx_SENT*         module;    /**< \brief Base address */
    IfxSent_ChannelId channelId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxSent_Spc_Out;

IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0A_AN24_IN;  /**< \brief SENT_SENT0A: SENT input channel 0 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0A_P40_0_IN;  /**< \brief SENT_SENT0A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0B_P00_1_IN;  /**< \brief SENT_SENT0B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0C_P02_8_IN;  /**< \brief SENT_SENT0C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT10A_AN67_IN;  /**< \brief SENT_SENT10A: SENT input channel 10 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT10A_P40_10_IN;  /**< \brief SENT_SENT10A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT10B_P01_1_IN;  /**< \brief SENT_SENT10B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT10C_P10_9_IN;  /**< \brief SENT_SENT10C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT10D_P15_2_IN;  /**< \brief SENT_SENT10D: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT11A_AN68_IN;  /**< \brief SENT_SENT11A: SENT input channel 11 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT11A_P40_11_IN;  /**< \brief SENT_SENT11A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT11B_P01_9_IN;  /**< \brief SENT_SENT11B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT11C_P10_10_IN;  /**< \brief SENT_SENT11C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT11D_P15_4_IN;  /**< \brief SENT_SENT11D: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT12A_AN69_IN;  /**< \brief SENT_SENT12A: SENT input channel 12 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT12A_P40_12_IN;  /**< \brief SENT_SENT12A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT12B_P01_8_IN;  /**< \brief SENT_SENT12B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT12C_P10_14_IN;  /**< \brief SENT_SENT12C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT12D_P14_0_IN;  /**< \brief SENT_SENT12D: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT13A_AN70_IN;  /**< \brief SENT_SENT13A: SENT input channel 13 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT13A_P40_13_IN;  /**< \brief SENT_SENT13A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT13B_P01_10_IN;  /**< \brief SENT_SENT13B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT13C_P10_13_IN;  /**< \brief SENT_SENT13C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT13D_P14_1_IN;  /**< \brief SENT_SENT13D: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT14A_AN71_IN;  /**< \brief SENT_SENT14A: SENT input channel 14 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT14A_P40_14_IN;  /**< \brief SENT_SENT14A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT14B_P01_11_IN;  /**< \brief SENT_SENT14B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT14C_P10_11_IN;  /**< \brief SENT_SENT14C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1A_AN25_IN;  /**< \brief SENT_SENT1A: SENT input channel 1 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1A_P40_1_IN;  /**< \brief SENT_SENT1A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1B_P00_2_IN;  /**< \brief SENT_SENT1B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1C_P02_7_IN;  /**< \brief SENT_SENT1C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2A_AN26_IN;  /**< \brief SENT_SENT2A: SENT input channel 2 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2A_P40_2_IN;  /**< \brief SENT_SENT2A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2B_P00_3_IN;  /**< \brief SENT_SENT2B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2C_P02_6_IN;  /**< \brief SENT_SENT2C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3A_AN27_IN;  /**< \brief SENT_SENT3A: SENT input channel 3 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3A_P40_3_IN;  /**< \brief SENT_SENT3A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3B_P00_4_IN;  /**< \brief SENT_SENT3B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3C_P02_5_IN;  /**< \brief SENT_SENT3C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT4A_AN32_IN;  /**< \brief SENT_SENT4A: SENT input channel 4 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT4A_P40_4_IN;  /**< \brief SENT_SENT4A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT4B_P00_5_IN;  /**< \brief SENT_SENT4B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT4C_P33_6_IN;  /**< \brief SENT_SENT4C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT5A_AN33_IN;  /**< \brief SENT_SENT5A: SENT input channel 5 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT5A_P40_5_IN;  /**< \brief SENT_SENT5A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT5B_P00_6_IN;  /**< \brief SENT_SENT5B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT5C_P33_5_IN;  /**< \brief SENT_SENT5C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT6A_AN36_IN;  /**< \brief SENT_SENT6A: SENT input channel 6 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT6A_P40_6_IN;  /**< \brief SENT_SENT6A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT6B_P00_7_IN;  /**< \brief SENT_SENT6B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT6C_P33_4_IN;  /**< \brief SENT_SENT6C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT7A_AN37_IN;  /**< \brief SENT_SENT7A: SENT input channel 7 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT7A_P40_7_IN;  /**< \brief SENT_SENT7A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT7B_P00_8_IN;  /**< \brief SENT_SENT7B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT7C_P33_3_IN;  /**< \brief SENT_SENT7C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT8A_AN38_IN;  /**< \brief SENT_SENT8A: SENT input channel 8 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT8A_P40_8_IN;  /**< \brief SENT_SENT8A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT8B_P00_9_IN;  /**< \brief SENT_SENT8B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT8C_P33_2_IN;  /**< \brief SENT_SENT8C: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT9A_AN39_IN;  /**< \brief SENT_SENT9A: SENT input channel 9 pin A */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT9A_P40_9_IN;  /**< \brief SENT_SENT9A: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT9B_P00_10_IN;  /**< \brief SENT_SENT9B: SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT9C_P33_1_IN;  /**< \brief SENT_SENT9C: SENT input */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC0_P00_1_OUT;  /**< \brief SENT_SPC0: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC1_P02_7_OUT;  /**< \brief SENT_SPC1: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC2_P00_3_OUT;  /**< \brief SENT_SPC2: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC3_P00_4_OUT;  /**< \brief SENT_SPC3: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC4_P00_5_OUT;  /**< \brief SENT_SPC4: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC5_P00_6_OUT;  /**< \brief SENT_SPC5: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC6_P00_7_OUT;  /**< \brief SENT_SPC6: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC7_P00_8_OUT;  /**< \brief SENT_SPC7: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC8_P00_9_OUT;  /**< \brief SENT_SPC8: SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC9_P00_10_OUT;  /**< \brief SENT_SPC9: SENT output */

/** \brief Table dimensions */
#define IFXSENT_PINMAP_NUM_MODULES 1
#define IFXSENT_PINMAP_NUM_CHANNELS 15
#define IFXSENT_PINMAP_SENT_IN_NUM_ITEMS 4
#define IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS 1


/** \brief IfxSent_Sent_In table */
IFX_EXTERN const IfxSent_Sent_In *IfxSent_Sent_In_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SENT_IN_NUM_ITEMS];

/** \brief IfxSent_Spc_Out table */
IFX_EXTERN const IfxSent_Spc_Out *IfxSent_Spc_Out_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXSENT_PINMAP_H */
