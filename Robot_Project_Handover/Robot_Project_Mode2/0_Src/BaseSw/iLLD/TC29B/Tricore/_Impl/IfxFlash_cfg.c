/**
 * \file IfxFlash_cfg.c
 * \brief FLASH on-chip implementation data
 *
 * \version iLLD_1_0_1_7_0
 * \copyright Copyright (c) 2016 Infineon Technologies AG. All rights reserved.
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxFlash_cfg.h"

/******************************************************************************/
/*-----------------------Exported Variables/Constants-------------------------*/
/******************************************************************************/

IFX_CONST IfxFlash_flashSector IfxFlash_dFlashTableEepLog[IFXFLASH_DFLASH_NUM_LOG_SECTORS] = {
    {0xAF000000 + 0 * 0x2000,  0xAF000000 + 1 * 0x2000 - 1 },
    {0xAF000000 + 1 * 0x2000,  0xAF000000 + 2 * 0x2000 - 1 },
    {0xAF000000 + 2 * 0x2000,  0xAF000000 + 3 * 0x2000 - 1 },
    {0xAF000000 + 3 * 0x2000,  0xAF000000 + 4 * 0x2000 - 1 },
    {0xAF000000 + 4 * 0x2000,  0xAF000000 + 5 * 0x2000 - 1 },
    {0xAF000000 + 5 * 0x2000,  0xAF000000 + 6 * 0x2000 - 1 },
    {0xAF000000 + 6 * 0x2000,  0xAF000000 + 7 * 0x2000 - 1 },
    {0xAF000000 + 7 * 0x2000,  0xAF000000 + 8 * 0x2000 - 1 },
    {0xAF000000 + 8 * 0x2000,  0xAF000000 + 9 * 0x2000 - 1 },
    {0xAF000000 + 9 * 0x2000,  0xAF000000 + 10 * 0x2000 - 1},
    {0xAF000000 + 10 * 0x2000, 0xAF000000 + 11 * 0x2000 - 1},
    {0xAF000000 + 11 * 0x2000, 0xAF000000 + 12 * 0x2000 - 1},
    {0xAF000000 + 12 * 0x2000, 0xAF000000 + 13 * 0x2000 - 1},
    {0xAF000000 + 13 * 0x2000, 0xAF000000 + 14 * 0x2000 - 1},
    {0xAF000000 + 14 * 0x2000, 0xAF000000 + 15 * 0x2000 - 1},
    {0xAF000000 + 15 * 0x2000, 0xAF000000 + 16 * 0x2000 - 1},
    {0xAF000000 + 16 * 0x2000, 0xAF000000 + 17 * 0x2000 - 1},
    {0xAF000000 + 17 * 0x2000, 0xAF000000 + 18 * 0x2000 - 1},
    {0xAF000000 + 18 * 0x2000, 0xAF000000 + 19 * 0x2000 - 1},
    {0xAF000000 + 19 * 0x2000, 0xAF000000 + 20 * 0x2000 - 1},
    {0xAF000000 + 20 * 0x2000, 0xAF000000 + 21 * 0x2000 - 1},
    {0xAF000000 + 21 * 0x2000, 0xAF000000 + 22 * 0x2000 - 1},
    {0xAF000000 + 22 * 0x2000, 0xAF000000 + 23 * 0x2000 - 1},
    {0xAF000000 + 23 * 0x2000, 0xAF000000 + 24 * 0x2000 - 1},
    {0xAF000000 + 24 * 0x2000, 0xAF000000 + 25 * 0x2000 - 1},
    {0xAF000000 + 25 * 0x2000, 0xAF000000 + 26 * 0x2000 - 1},
    {0xAF000000 + 26 * 0x2000, 0xAF000000 + 27 * 0x2000 - 1},
    {0xAF000000 + 27 * 0x2000, 0xAF000000 + 28 * 0x2000 - 1},
    {0xAF000000 + 28 * 0x2000, 0xAF000000 + 29 * 0x2000 - 1},
    {0xAF000000 + 29 * 0x2000, 0xAF000000 + 30 * 0x2000 - 1},
    {0xAF000000 + 30 * 0x2000, 0xAF000000 + 31 * 0x2000 - 1},
    {0xAF000000 + 31 * 0x2000, 0xAF000000 + 32 * 0x2000 - 1},
    {0xAF000000 + 32 * 0x2000, 0xAF000000 + 33 * 0x2000 - 1},
    {0xAF000000 + 33 * 0x2000, 0xAF000000 + 34 * 0x2000 - 1},
    {0xAF000000 + 34 * 0x2000, 0xAF000000 + 35 * 0x2000 - 1},
    {0xAF000000 + 35 * 0x2000, 0xAF000000 + 36 * 0x2000 - 1},
    {0xAF000000 + 36 * 0x2000, 0xAF000000 + 37 * 0x2000 - 1},
    {0xAF000000 + 37 * 0x2000, 0xAF000000 + 38 * 0x2000 - 1},
    {0xAF000000 + 38 * 0x2000, 0xAF000000 + 39 * 0x2000 - 1},
    {0xAF000000 + 39 * 0x2000, 0xAF000000 + 40 * 0x2000 - 1},
    {0xAF000000 + 40 * 0x2000, 0xAF000000 + 41 * 0x2000 - 1},
    {0xAF000000 + 41 * 0x2000, 0xAF000000 + 42 * 0x2000 - 1},
    {0xAF000000 + 42 * 0x2000, 0xAF000000 + 43 * 0x2000 - 1},
    {0xAF000000 + 43 * 0x2000, 0xAF000000 + 44 * 0x2000 - 1},
    {0xAF000000 + 44 * 0x2000, 0xAF000000 + 45 * 0x2000 - 1},
    {0xAF000000 + 45 * 0x2000, 0xAF000000 + 46 * 0x2000 - 1},
    {0xAF000000 + 46 * 0x2000, 0xAF000000 + 47 * 0x2000 - 1},
    {0xAF000000 + 47 * 0x2000, 0xAF000000 + 48 * 0x2000 - 1},
    {0xAF000000 + 48 * 0x2000, 0xAF000000 + 49 * 0x2000 - 1},
    {0xAF000000 + 49 * 0x2000, 0xAF000000 + 50 * 0x2000 - 1},
    {0xAF000000 + 50 * 0x2000, 0xAF000000 + 51 * 0x2000 - 1},
    {0xAF000000 + 51 * 0x2000, 0xAF000000 + 52 * 0x2000 - 1},
    {0xAF000000 + 52 * 0x2000, 0xAF000000 + 53 * 0x2000 - 1},
    {0xAF000000 + 53 * 0x2000, 0xAF000000 + 54 * 0x2000 - 1},
    {0xAF000000 + 54 * 0x2000, 0xAF000000 + 55 * 0x2000 - 1},
    {0xAF000000 + 55 * 0x2000, 0xAF000000 + 56 * 0x2000 - 1},
    {0xAF000000 + 56 * 0x2000, 0xAF000000 + 57 * 0x2000 - 1},
    {0xAF000000 + 57 * 0x2000, 0xAF000000 + 58 * 0x2000 - 1},
    {0xAF000000 + 58 * 0x2000, 0xAF000000 + 59 * 0x2000 - 1},
    {0xAF000000 + 59 * 0x2000, 0xAF000000 + 60 * 0x2000 - 1},
    {0xAF000000 + 60 * 0x2000, 0xAF000000 + 61 * 0x2000 - 1},
    {0xAF000000 + 61 * 0x2000, 0xAF000000 + 62 * 0x2000 - 1},
    {0xAF000000 + 62 * 0x2000, 0xAF000000 + 63 * 0x2000 - 1},
    {0xAF000000 + 63 * 0x2000, 0xAF000000 + 64 * 0x2000 - 1},
    {0xAF000000 + 64 * 0x2000, 0xAF000000 + 65 * 0x2000 - 1},
    {0xAF000000 + 65 * 0x2000, 0xAF000000 + 66 * 0x2000 - 1},
    {0xAF000000 + 66 * 0x2000, 0xAF000000 + 67 * 0x2000 - 1},
    {0xAF000000 + 67 * 0x2000, 0xAF000000 + 68 * 0x2000 - 1},
    {0xAF000000 + 68 * 0x2000, 0xAF000000 + 69 * 0x2000 - 1},
    {0xAF000000 + 69 * 0x2000, 0xAF000000 + 70 * 0x2000 - 1},
    {0xAF000000 + 70 * 0x2000, 0xAF000000 + 71 * 0x2000 - 1},
    {0xAF000000 + 71 * 0x2000, 0xAF000000 + 72 * 0x2000 - 1},
    {0xAF000000 + 72 * 0x2000, 0xAF000000 + 73 * 0x2000 - 1},
    {0xAF000000 + 73 * 0x2000, 0xAF000000 + 74 * 0x2000 - 1},
    {0xAF000000 + 74 * 0x2000, 0xAF000000 + 75 * 0x2000 - 1},
    {0xAF000000 + 75 * 0x2000, 0xAF000000 + 76 * 0x2000 - 1},
    {0xAF000000 + 76 * 0x2000, 0xAF000000 + 77 * 0x2000 - 1},
    {0xAF000000 + 77 * 0x2000, 0xAF000000 + 78 * 0x2000 - 1},
    {0xAF000000 + 78 * 0x2000, 0xAF000000 + 79 * 0x2000 - 1},
    {0xAF000000 + 79 * 0x2000, 0xAF000000 + 80 * 0x2000 - 1},
    {0xAF000000 + 80 * 0x2000, 0xAF000000 + 81 * 0x2000 - 1},
    {0xAF000000 + 81 * 0x2000, 0xAF000000 + 82 * 0x2000 - 1},
    {0xAF000000 + 82 * 0x2000, 0xAF000000 + 83 * 0x2000 - 1},
    {0xAF000000 + 83 * 0x2000, 0xAF000000 + 84 * 0x2000 - 1},
    {0xAF000000 + 84 * 0x2000, 0xAF000000 + 85 * 0x2000 - 1},
    {0xAF000000 + 85 * 0x2000, 0xAF000000 + 86 * 0x2000 - 1},
    {0xAF000000 + 86 * 0x2000, 0xAF000000 + 87 * 0x2000 - 1},
    {0xAF000000 + 87 * 0x2000, 0xAF000000 + 88 * 0x2000 - 1},
    {0xAF000000 + 88 * 0x2000, 0xAF000000 + 89 * 0x2000 - 1},
    {0xAF000000 + 89 * 0x2000, 0xAF000000 + 90 * 0x2000 - 1},
    {0xAF000000 + 90 * 0x2000, 0xAF000000 + 91 * 0x2000 - 1},
    {0xAF000000 + 91 * 0x2000, 0xAF000000 + 92 * 0x2000 - 1},
    {0xAF000000 + 92 * 0x2000, 0xAF000000 + 93 * 0x2000 - 1},
    {0xAF000000 + 93 * 0x2000, 0xAF000000 + 94 * 0x2000 - 1},
    {0xAF000000 + 94 * 0x2000, 0xAF000000 + 95 * 0x2000 - 1},
    {0xAF000000 + 95 * 0x2000, 0xAF000000 + 96 * 0x2000 - 1},
};

IFX_CONST IfxFlash_flashSector IfxFlash_dFlashTableHsmLog[IFXFLASH_DFLASH_NUM_HSM_LOG_SECTORS] = {
    {0xaf110000, 0xaf111fff},   // HSM0
    {0xaf112000, 0xaf113fff},   // HSM1
    {0xaf114000, 0xaf115fff},   // HSM2
    {0xaf116000, 0xaf117fff},   // HSM3
    {0xaf118000, 0xaf119fff},   // HSM4
    {0xaf11a000, 0xaf11bfff},   // HSM5
    {0xaf11c000, 0xaf11dfff},   // HSM6
    {0xaf11e000, 0xaf11ffff},   // HSM7
};

IFX_CONST IfxFlash_flashSector IfxFlash_dFlashTablePhys[IFXFLASH_DFLASH_NUM_PHYSICAL_SECTORS] = {
    {IFXFLASH_DFLASH_START, IFXFLASH_DFLASH_END},
};

IFX_CONST IfxFlash_flashSector IfxFlash_dFlashTableUcbLog[IFXFLASH_DFLASH_NUM_UCB_LOG_SECTORS] = {
    {0xaf100000, 0xaf1003ff},   // UCB0
    {0xaf100400, 0xaf1007ff},   // UCB1
    {0xaf100800, 0xaf100bff},   // UCB2
    {0xaf100c00, 0xaf100fff},   // UCB3
    {0xaf101000, 0xaf1013ff},   // UCB4
    {0xaf101400, 0xaf1017ff},   // UCB5
    {0xaf101800, 0xaf101bff},   // UCB6
    {0xaf101c00, 0xaf101fff},   // UCB7
    {0xaf102000, 0xaf1023ff},   // UCB8
    {0xaf102400, 0xaf1027ff},   // UCB9
    {0xaf102800, 0xaf102bff},   // UCB10
    {0xaf102c00, 0xaf102fff},   // UCB11
    {0xaf103000, 0xaf1033ff},   // UCB12
    {0xaf103400, 0xaf1037ff},   // UCB13
    {0xaf103800, 0xaf103bff},   // UCB14
    {0xaf103c00, 0xaf103fff},   // UCB15
};

IFX_CONST IfxFlash_flashSector IfxFlash_pFlashTableLog[IFXFLASH_PFLASH_NUM_LOG_SECTORS] = {
    {0xa0000000, 0xa0003fff},   // PF0 S0
    {0xa0004000, 0xa0007fff},   // PF0 S1
    {0xa0008000, 0xa000bfff},   // PF0 S2
    {0xa000c000, 0xa000ffff},   // PF0 S3
    {0xa0010000, 0xa0013fff},   // PF0 S4
    {0xa0014000, 0xa0017fff},   // PF0 S5
    {0xa0018000, 0xa001bfff},   // PF0 S6
    {0xa001c000, 0xa001ffff},   // PF0 S7
    {0xa0020000, 0xa0027fff},   // PF0 S8
    {0xa0028000, 0xa002ffff},   // PF0 S9
    {0xa0030000, 0xa0037fff},   // PF0 S10
    {0xa0038000, 0xa003ffff},   // PF0 S11
    {0xa0040000, 0xa0047fff},   // PF0 S12
    {0xa0048000, 0xa004ffff},   // PF0 S13
    {0xa0050000, 0xa0057fff},   // PF0 S14
    {0xa0058000, 0xa005ffff},   // PF0 S15
    {0xa0060000, 0xa006ffff},   // PF0 S16
    {0xa0070000, 0xa007ffff},   // PF0 S17
    {0xa0080000, 0xa008ffff},   // PF0 S18
    {0xa0090000, 0xa009ffff},   // PF0 S19
    {0xa00a0000, 0xa00bffff},   // PF0 S20
    {0xa00c0000, 0xa00dffff},   // PF0 S21
    {0xa00e0000, 0xa00fffff},   // PF0 S22
    {0xa0100000, 0xa013ffff},   // PF0 S23
    {0xa0140000, 0xa017ffff},   // PF0 S24
    {0xa0180000, 0xa01bffff},   // PF0 S25
    {0xa01c0000, 0xa01fffff},   // PF0 S26
    {0xa0200000, 0xa0203fff},   // PF1 S0
    {0xa0204000, 0xa0207fff},   // PF1 S1
    {0xa0208000, 0xa020bfff},   // PF1 S2
    {0xa020c000, 0xa020ffff},   // PF1 S3
    {0xa0210000, 0xa0213fff},   // PF1 S4
    {0xa0214000, 0xa0217fff},   // PF1 S5
    {0xa0218000, 0xa021bfff},   // PF1 S6
    {0xa021c000, 0xa021ffff},   // PF1 S7
    {0xa0220000, 0xa0227fff},   // PF1 S8
    {0xa0228000, 0xa022ffff},   // PF1 S9
    {0xa0230000, 0xa0237fff},   // PF1 S10
    {0xa0238000, 0xa023ffff},   // PF1 S11
    {0xa0240000, 0xa0247fff},   // PF1 S12
    {0xa0248000, 0xa024ffff},   // PF1 S13
    {0xa0250000, 0xa0257fff},   // PF1 S14
    {0xa0258000, 0xa025ffff},   // PF1 S15
    {0xa0260000, 0xa026ffff},   // PF1 S16
    {0xa0270000, 0xa027ffff},   // PF1 S17
    {0xa0280000, 0xa028ffff},   // PF1 S18
    {0xa0290000, 0xa029ffff},   // PF1 S19
    {0xa02a0000, 0xa02bffff},   // PF1 S20
    {0xa02c0000, 0xa02dffff},   // PF1 S21
    {0xa02e0000, 0xa02fffff},   // PF1 S22
    {0xa0300000, 0xa033ffff},   // PF1 S23
    {0xa0340000, 0xa037ffff},   // PF1 S24
    {0xa0380000, 0xa03bffff},   // PF1 S25
    {0xa03c0000, 0xa03fffff},   // PF1 S26
    {0xa0400000, 0xa0403fff},   // PF2 S0
    {0xa0404000, 0xa0407fff},   // PF2 S1
    {0xa0408000, 0xa040bfff},   // PF2 S2
    {0xa040c000, 0xa040ffff},   // PF2 S3
    {0xa0410000, 0xa0413fff},   // PF2 S4
    {0xa0414000, 0xa0417fff},   // PF2 S5
    {0xa0418000, 0xa041bfff},   // PF2 S6
    {0xa041c000, 0xa041ffff},   // PF2 S7
    {0xa0420000, 0xa0427fff},   // PF2 S8
    {0xa0428000, 0xa042ffff},   // PF2 S9
    {0xa0430000, 0xa0437fff},   // PF2 S10
    {0xa0438000, 0xa043ffff},   // PF2 S11
    {0xa0440000, 0xa0447fff},   // PF2 S12
    {0xa0448000, 0xa044ffff},   // PF2 S13
    {0xa0450000, 0xa0457fff},   // PF2 S14
    {0xa0458000, 0xa045ffff},   // PF2 S15
    {0xa0460000, 0xa046ffff},   // PF2 S16
    {0xa0470000, 0xa047ffff},   // PF2 S17
    {0xa0480000, 0xa048ffff},   // PF2 S18
    {0xa0490000, 0xa049ffff},   // PF2 S19
    {0xa04a0000, 0xa04bffff},   // PF2 S20
    {0xa04c0000, 0xa04dffff},   // PF2 S21
    {0xa04e0000, 0xa04fffff},   // PF2 S22
    {0xa0500000, 0xa053ffff},   // PF2 S23
    {0xa0540000, 0xa057ffff},   // PF2 S24
    {0xa0580000, 0xa05bffff},   // PF2 S25
    {0xa05c0000, 0xa05fffff},   // PF2 S26
    {0xa0600000, 0xa0603fff},   // PF3 S0
    {0xa0604000, 0xa0607fff},   // PF3 S1
    {0xa0608000, 0xa060bfff},   // PF3 S2
    {0xa060c000, 0xa060ffff},   // PF3 S3
    {0xa0610000, 0xa0613fff},   // PF3 S4
    {0xa0614000, 0xa0617fff},   // PF3 S5
    {0xa0618000, 0xa061bfff},   // PF3 S6
    {0xa061c000, 0xa061ffff},   // PF3 S7
    {0xa0620000, 0xa0627fff},   // PF3 S8
    {0xa0628000, 0xa062ffff},   // PF3 S9
    {0xa0630000, 0xa0637fff},   // PF3 S10
    {0xa0638000, 0xa063ffff},   // PF3 S11
    {0xa0640000, 0xa0647fff},   // PF3 S12
    {0xa0648000, 0xa064ffff},   // PF3 S13
    {0xa0650000, 0xa0657fff},   // PF3 S14
    {0xa0658000, 0xa065ffff},   // PF3 S15
    {0xa0660000, 0xa066ffff},   // PF3 S16
    {0xa0670000, 0xa067ffff},   // PF3 S17
    {0xa0680000, 0xa068ffff},   // PF3 S18
    {0xa0690000, 0xa069ffff},   // PF3 S19
    {0xa06a0000, 0xa06bffff},   // PF3 S20
    {0xa06c0000, 0xa06dffff},   // PF3 S21
    {0xa06e0000, 0xa06fffff},   // PF3 S22
    {0xa0700000, 0xa073ffff},   // PF3 S23
    {0xa0740000, 0xa077ffff},   // PF3 S24
    {0xa0780000, 0xa07bffff},   // PF3 S25
    {0xa07c0000, 0xa07fffff},   // PF3 S26
};

IFX_CONST IfxFlash_flashSector IfxFlash_pFlashTablePhys[IFXFLASH_PFLASH_NUM_PHYSICAL_SECTORS] = {
    {0xa0000000, 0xa007ffff},   // PF0 PS0
    {0xa0080000, 0xa00fffff},   // PF0 PS1
    {0xa0100000, 0xa017ffff},   // PF0 PS2
    {0xa0180000, 0xa01fffff},   // PF0 PS3
    {0xa0200000, 0xa027ffff},   // PF1 PS0
    {0xa0280000, 0xa02fffff},   // PF1 PS1
    {0xa0300000, 0xa037ffff},   // PF1 PS2
    {0xa0380000, 0xa03fffff},   // PF1 PS3
    {0xa0400000, 0xa047ffff},   // PF2 PS0
    {0xa0480000, 0xa04fffff},   // PF2 PS1
    {0xa0500000, 0xa057ffff},   // PF2 PS2
    {0xa0580000, 0xa05fffff},   // PF2 PS3
    {0xa0600000, 0xa067ffff},   // PF3 PS0
    {0xa0680000, 0xa06fffff},   // PF3 PS1
    {0xa0700000, 0xa077ffff},   // PF3 PS2
    {0xa0780000, 0xa07fffff},   // PF3 PS3
};
