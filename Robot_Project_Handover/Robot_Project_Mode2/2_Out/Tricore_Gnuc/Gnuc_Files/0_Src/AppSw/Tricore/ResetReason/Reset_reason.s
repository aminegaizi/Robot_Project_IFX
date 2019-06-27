	.file	"Reset_reason.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.get_Reset_Reason,"ax",@progbits
	.align 1
	.global	get_Reset_Reason
	.type	get_Reset_Reason, @function
get_Reset_Reason:
.LFB169:
	.file 1 "0_Src/AppSw/Tricore/ResetReason/Reset_reason.c"
	.loc 1 38 0
.LVL0:
	.loc 1 42 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24656
	ld.w	%d15, [%a15]0
.LVL1:
	.loc 1 45 0
	movh	%d2, 896
	and	%d2, %d15
	jnz	%d2, .L2
	.loc 1 47 0
	jz.t	%d15, 28, .L14
.LVL2:
	.loc 1 66 0
	movh.a	%a15, hi:reset_reasons
	ld.w	%d15, [%a15] lo:reset_reasons
.LVL3:
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 67 0
	ret
.LVL4:
.L2:
	.loc 1 69 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 4
.LVL5:
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	ret
.LVL6:
.L14:
	.loc 1 49 0
	movh	%d2, 29
	and	%d2, %d15
	jnz	%d2, .L4
	.loc 1 51 0
	and	%d2, %d15, 224
	jnz	%d2, .L5
	.loc 1 53 0
	jnz.t	%d15, 3, .L6
	.loc 1 55 0
	jnz.t	%d15, 4, .L7
	.loc 1 57 0
	and	%d15, %d15, 3
.LVL7:
	jz	%d15, .L15
.LVL8:
	.loc 1 84 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 24
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 85 0
	ret
.LVL9:
.L4:
	.loc 1 72 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 8
.LVL10:
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 73 0
	ret
.LVL11:
.L5:
	.loc 1 75 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 12
.LVL12:
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 76 0
	ret
.LVL13:
.L6:
	.loc 1 78 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 16
.LVL14:
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 79 0
	ret
.LVL15:
.L7:
	.loc 1 81 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 20
.LVL16:
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 82 0
	ret
.LVL17:
.L15:
	.loc 1 87 0
	movh.a	%a15, hi:reset_reasons
	lea	%a15, [%a15] lo:reset_reasons
	ld.w	%d15, [%a15] 28
	movh.a	%a15, hi:reset_reason_char
	st.w	[%a15] lo:reset_reason_char, %d15
	.loc 1 88 0
	ret
.LFE169:
	.size	get_Reset_Reason, .-get_Reset_Reason
.section .text.reset_Stat,"ax",@progbits
	.align 1
	.global	reset_Stat
	.type	reset_Stat, @function
reset_Stat:
.LFB170:
	.loc 1 99 0
	.loc 1 100 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL18:
	.loc 1 101 0
	movh.a	%a15, 61443
	.loc 1 100 0
	mov	%d4, %d2
	.loc 1 101 0
	lea	%a15, [%a15] 24676
	.loc 1 100 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL19:
	.loc 1 101 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 102 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL20:
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LVL21:
.LFE170:
	.size	reset_Stat, .-reset_Stat
	.global	reset_reasons
.section .rodata,"a",@progbits
.LC0:
	.string	"Stdby_WDT"
.LC1:
	.string	"Cold_PORST"
.LC2:
	.string	"Warm_PORST"
.LC3:
	.string	"STM"
.LC4:
	.string	"SMU"
.LC5:
	.string	"Software"
.LC6:
	.string	"ESR"
.LC7:
	.string	"WRONG!"
.section .data.reset_reasons,"aw",@progbits
	.align 2
	.type	reset_reasons, @object
	.size	reset_reasons, 32
reset_reasons:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.global	reset_reason_char
.section .bss.reset_reason_char,"aw",@nobits
	.align 2
	.type	reset_reason_char, @object
	.size	reset_reason_char, 4
reset_reason_char:
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_regdef.h"
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/AppSw/Tricore/ResetReason/Reset_reason.h"
	.file 5 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x74f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ResetReason/Reset_reason.c"
	.string	"C:\\\\Robot_Project_Handover\\\\Robot_Project_Mode2"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1d7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x231
	.uleb128 0x5
	.uaword	0x236
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x6
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x3db
	.uaword	0x305
	.uleb128 0x7
	.string	"reserved_0"
	.byte	0x2
	.uahalf	0x3dd
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"CLRC"
	.byte	0x2
	.uahalf	0x3de
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x3df
	.uaword	0x23e
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"CSS0"
	.byte	0x2
	.uahalf	0x3e0
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"CSS1"
	.byte	0x2
	.uahalf	0x3e1
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"CSS2"
	.byte	0x2
	.uahalf	0x3e2
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"reserved_15"
	.byte	0x2
	.uahalf	0x3e3
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"USRINFO"
	.byte	0x2
	.uahalf	0x3e4
	.uaword	0x23e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x2
	.uahalf	0x3e5
	.uaword	0x24e
	.uleb128 0x6
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x3f6
	.uaword	0x4c5
	.uleb128 0x7
	.string	"ESR0"
	.byte	0x2
	.uahalf	0x3f8
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"ESR1"
	.byte	0x2
	.uahalf	0x3f9
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x3fa
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"SMU"
	.byte	0x2
	.uahalf	0x3fb
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"SW"
	.byte	0x2
	.uahalf	0x3fc
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"STM0"
	.byte	0x2
	.uahalf	0x3fd
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"STM1"
	.byte	0x2
	.uahalf	0x3fe
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"STM2"
	.byte	0x2
	.uahalf	0x3ff
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"reserved_8"
	.byte	0x2
	.uahalf	0x400
	.uaword	0x23e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PORST"
	.byte	0x2
	.uahalf	0x401
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"reserved_17"
	.byte	0x2
	.uahalf	0x402
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"CB0"
	.byte	0x2
	.uahalf	0x403
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"CB1"
	.byte	0x2
	.uahalf	0x404
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"CB3"
	.byte	0x2
	.uahalf	0x405
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"reserved_21"
	.byte	0x2
	.uahalf	0x406
	.uaword	0x23e
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EVR13"
	.byte	0x2
	.uahalf	0x407
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EVR33"
	.byte	0x2
	.uahalf	0x408
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"SWD"
	.byte	0x2
	.uahalf	0x409
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"reserved_26"
	.byte	0x2
	.uahalf	0x40a
	.uaword	0x23e
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"STBYR"
	.byte	0x2
	.uahalf	0x40b
	.uaword	0x23e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"reserved_29"
	.byte	0x2
	.uahalf	0x40c
	.uaword	0x23e
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x2
	.uahalf	0x40d
	.uaword	0x322
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.uahalf	0x719
	.uaword	0x50a
	.uleb128 0xb
	.string	"U"
	.byte	0x2
	.uahalf	0x71b
	.uaword	0x23e
	.uleb128 0xb
	.string	"I"
	.byte	0x2
	.uahalf	0x71c
	.uaword	0x195
	.uleb128 0xb
	.string	"B"
	.byte	0x2
	.uahalf	0x71d
	.uaword	0x305
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x2
	.uahalf	0x71e
	.uaword	0x4e2
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.uahalf	0x721
	.uaword	0x54a
	.uleb128 0xb
	.string	"U"
	.byte	0x2
	.uahalf	0x723
	.uaword	0x23e
	.uleb128 0xb
	.string	"I"
	.byte	0x2
	.uahalf	0x724
	.uaword	0x195
	.uleb128 0xb
	.string	"B"
	.byte	0x2
	.uahalf	0x725
	.uaword	0x4c5
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x2
	.uahalf	0x726
	.uaword	0x522
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.byte	0x1b
	.uaword	0x5c4
	.uleb128 0xd
	.string	"Standby_Reg"
	.sleb128 0
	.uleb128 0xd
	.string	"Cold_PORST"
	.sleb128 1
	.uleb128 0xd
	.string	"Warm_PORST"
	.sleb128 2
	.uleb128 0xd
	.string	"STM"
	.sleb128 3
	.uleb128 0xd
	.string	"Software"
	.sleb128 4
	.uleb128 0xd
	.string	"SMU"
	.sleb128 5
	.uleb128 0xd
	.string	"ESR"
	.sleb128 6
	.uleb128 0xd
	.string	"wrong"
	.sleb128 -1
	.byte	0
	.uleb128 0x3
	.string	"reset_reason_type"
	.byte	0x4
	.byte	0x25
	.uaword	0x56e
	.uleb128 0xe
	.byte	0x1
	.string	"get_Reset_Reason"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB169
	.uaword	.LFE169
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x638
	.uleb128 0xf
	.string	"reset_reason"
	.byte	0x1
	.byte	0x28
	.uaword	0x5c4
	.uaword	.LLST0
	.uleb128 0xf
	.string	"scu_stat_register"
	.byte	0x1
	.byte	0x29
	.uaword	0x54a
	.uaword	.LLST1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"reset_Stat"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB170
	.uaword	.LFE170
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x67d
	.uleb128 0x10
	.uaword	.LVL18
	.uaword	0x6cf
	.uleb128 0x10
	.uaword	.LVL19
	.uaword	0x6fe
	.uleb128 0x10
	.uaword	.LVL20
	.uaword	0x6cf
	.uleb128 0x11
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x72b
	.byte	0
	.uleb128 0x12
	.string	"reset_reason_char"
	.byte	0x1
	.byte	0x1c
	.uaword	0x69d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	reset_reason_char
	.uleb128 0x4
	.byte	0x4
	.uaword	0x236
	.uleb128 0x13
	.uaword	0x22b
	.uaword	0x6b3
	.uleb128 0x14
	.uaword	0x562
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"reset_reasons"
	.byte	0x1
	.byte	0x1e
	.uaword	0x6a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	reset_reasons
	.uleb128 0x15
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x5
	.uahalf	0x17b
	.byte	0x1
	.uaword	0x1c9
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0x5
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uaword	0x72b
	.uleb128 0x17
	.uaword	0x1c9
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0x5
	.byte	0xe5
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1c9
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE169
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB169
	.uaword	.LFE169
	.uaword	.LFB170
	.uaword	.LFE170
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_2"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
