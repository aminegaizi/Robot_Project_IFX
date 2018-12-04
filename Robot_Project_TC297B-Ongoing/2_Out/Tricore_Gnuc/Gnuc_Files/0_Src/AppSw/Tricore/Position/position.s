	.file	"position.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.init_array,"ax",@progbits
	.align 1
	.global	init_array
	.type	init_array, @function
init_array:
.LFB286:
	.file 1 "0_Src/AppSw/Tricore/Position/position.c"
	.loc 1 46 0
.LVL0:
	movh.a	%a5, hi:Encoder_Values
	movh.a	%a4, hi:Position_Values
	.loc 1 48 0
	mov	%d2, 0
	lea	%a5, [%a5] lo:Encoder_Values
	lea	%a4, [%a4] lo:Position_Values
	.loc 1 52 0
	mov	%d15, 0
	lea	%a15, 99
.LVL1:
.L2:
	sh	%d3, %d2, 3
	addsc.a	%a3, %a5, %d3, 0
	.loc 1 53 0
	addsc.a	%a2, %a4, %d3, 0
	.loc 1 52 0
	st.w	[%a3]0, %d15
	.loc 1 53 0
	st.w	[%a2]0, %d15
.LVL2:
	.loc 1 52 0
	st.w	[%a3] 4, %d15
	.loc 1 53 0
	st.w	[%a2] 4, %d15
.LVL3:
	.loc 1 48 0
	add	%d2, 1
.LVL4:
	loop	%a15, .L2
	.loc 1 56 0
	ret
.LFE286:
	.size	init_array, .-init_array
	.global	__extendsfdf2
	.global	__muldf3
	.global	__truncdfsf2
	.global	__divdf3
	.global	__ledf2
	.global	__gedf2
.section .text.update_position,"ax",@progbits
	.align 1
	.global	update_position
	.type	update_position, @function
update_position:
.LFB287:
	.loc 1 61 0
	.loc 1 63 0
	movh.a	%a12, hi:iterator
	ld.w	%d15, [%a12] lo:iterator
	movh.a	%a15, hi:Encoder_Values
	lea	%a15, [%a15] lo:Encoder_Values
	add	%d15, -1
	addsc.a	%a2, %a15, %d15, 3
	.loc 1 61 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 63 0
	ld.w	%d4, [%a2]0
	ld.w	%d15, [%a12] lo:iterator
	add	%d15, -1
	addsc.a	%a2, %a15, %d15, 3
	ld.w	%d15, [%a2] 4
	add.f	%d4, %d4, %d15
	call	__extendsfdf2
.LVL5:
	mov	%e4, %d3, %d2
	movh	%d7, 16352
	movh	%d6, 34079
	addi	%d7, %d7, 20971
	addi	%d6, %d6, -18350
	call	__muldf3
.LVL6:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__muldf3
.LVL7:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL8:
	.loc 1 64 0
	ld.w	%d15, [%a12] lo:iterator
	.loc 1 63 0
	movh.a	%a2, hi:Delta
	.loc 1 64 0
	add	%d15, -1
	.loc 1 63 0
	lea	%a13, [%a2] lo:Delta
	st.w	[%a2] lo:Delta, %d2
	.loc 1 64 0
	addsc.a	%a2, %a15, %d15, 3
	.loc 1 63 0
	mov	%d8, %d2
	.loc 1 64 0
	ld.w	%d4, [%a2]0
	ld.w	%d15, [%a12] lo:iterator
	.loc 1 66 0
	movh.a	%a12, hi:Current_position
	.loc 1 64 0
	add	%d15, -1
	addsc.a	%a15, %a15, %d15, 3
	ld.w	%d15, [%a15] 4
	.loc 1 66 0
	lea	%a15, [%a12] lo:Current_position
	.loc 1 64 0
	sub.f	%d4, %d4, %d15
	call	__extendsfdf2
.LVL9:
	mov	%e4, %d3, %d2
	movh	%d7, 16352
	movh	%d6, 34079
	addi	%d7, %d7, 20971
	addi	%d6, %d6, -18350
	call	__muldf3
.LVL10:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16425
	call	__divdf3
.LVL11:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL12:
	.loc 1 70 0
	movh	%d4, 16128
	.loc 1 68 0
	ld.w	%d15, [%a15] 8
	.loc 1 70 0
	mul.f	%d4, %d2, %d4
	.loc 1 66 0
	movh.a	%a3, hi:Old_position
	add.f	%d4, %d15, %d4
	lea	%a2, [%a3] lo:Old_position
	ld.w	%d11, [%a12] lo:Current_position
	.loc 1 67 0
	ld.w	%d10, [%a15] 4
	lea	%a4, [%SP] 4
	mov.aa	%a5, %SP
	.loc 1 64 0
	mov	%d9, %d2
	.loc 1 66 0
	st.w	[%a3] lo:Old_position, %d11
	.loc 1 67 0
	st.w	[%a2] 4, %d10
	.loc 1 68 0
	st.w	[%a2] 8, %d15
	.loc 1 64 0
	st.w	[%a13] 4, %d2
	call	sincosf
.LVL13:
	ld.w	%d2, [%SP]0
	.loc 1 72 0
	add.f	%d15, %d9, %d15
	.loc 1 70 0
	mul.f	%d2, %d8, %d2
	.loc 1 74 0
	mov	%d4, %d15
	.loc 1 70 0
	add.f	%d11, %d11, %d2
	.loc 1 71 0
	ld.w	%d2, [%SP] 4
	.loc 1 72 0
	st.w	[%a15] 8, %d15
	.loc 1 71 0
	mul.f	%d8, %d8, %d2
	.loc 1 70 0
	st.w	[%a12] lo:Current_position, %d11
	.loc 1 71 0
	add.f	%d10, %d10, %d8
	st.w	[%a15] 4, %d10
	.loc 1 74 0
	call	__extendsfdf2
.LVL14:
	movh	%d7, 49177
	movh	%d6, 21572
	mov	%e4, %d3, %d2
	addi	%d7, %d7, 8699
	addi	%d6, %d6, 11544
	mov	%e8, %d3, %d2
	call	__ledf2
.LVL15:
	jlez	%d2, .L12
.L6:
	.loc 1 78 0
	movh	%d7, 16409
	movh	%d6, 21572
	mov	%e4, %d9, %d8
	addi	%d7, %d7, 8699
	addi	%d6, %d6, 11544
	call	__gedf2
.LVL16:
	jltz	%d2, .L8
	.loc 1 80 0
	mov	%e4, %d9, %d8
	movh	%d7, 16409
	movh	%d6, 21572
	addi	%d7, %d7, 8699
	addi	%d6, %d6, 11544
	call	fmod
.LVL17:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL18:
	mov	%d15, %d2
	st.w	[%a15] 8, %d2
.L8:
	.loc 1 82 0
	movh	%d4, 17332
	mul.f	%d4, %d15, %d4
	movh.a	%a15, hi:degree_angle
	call	__extendsfdf2
.LVL19:
	mov	%e4, %d3, %d2
	movh	%d7, 16409
	movh	%d6, 21572
	addi	%d7, %d7, 8699
	addi	%d6, %d6, 11544
	call	__divdf3
.LVL20:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL21:
	st.w	[%a15] lo:degree_angle, %d2
	ret
.L12:
	.loc 1 76 0
	mov	%e4, %d9, %d8
	movh	%d7, 16409
	movh	%d6, 21572
	addi	%d7, %d7, 8699
	addi	%d6, %d6, 11544
	call	fmod
.LVL22:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL23:
	st.w	[%a15] 8, %d2
	mov	%d4, %d2
	mov	%d15, %d2
	call	__extendsfdf2
.LVL24:
	mov	%e8, %d3, %d2
	j	.L6
.LFE287:
	.size	update_position, .-update_position
.section .text.Find_error,"ax",@progbits
	.align 1
	.global	Find_error
	.type	Find_error, @function
Find_error:
.LFB288:
	.loc 1 88 0
	.loc 1 89 0
	movh.a	%a4, hi:Desired_position
	movh.a	%a3, hi:Current_position
	ld.w	%d15, [%a3] lo:Current_position
	ld.w	%d5, [%a4] lo:Desired_position
	lea	%a15, [%a3] lo:Current_position
	lea	%a2, [%a4] lo:Desired_position
	sub.f	%d5, %d5, %d15
	.loc 1 90 0
	ld.w	%d4, [%a2] 4
	ld.w	%d15, [%a15] 4
	.loc 1 89 0
	movh.a	%a12, hi:Delta_ref
	.loc 1 90 0
	sub.f	%d4, %d4, %d15
	.loc 1 89 0
	lea	%a13, [%a12] lo:Delta_ref
	st.w	[%a12] lo:Delta_ref, %d5
	.loc 1 90 0
	st.w	[%a13] 4, %d4
	.loc 1 92 0
	call	atan2f
.LVL25:
	ld.w	%d15, [%a15] 8
	.loc 1 93 0
	ld.w	%d4, [%a13] 4
	.loc 1 92 0
	sub.f	%d2, %d2, %d15
	.loc 1 93 0
	ld.w	%d15, [%a12] lo:Delta_ref
	mul.f	%d4, %d4, %d4
	mul.f	%d15, %d15, %d15
	.loc 1 92 0
	movh.a	%a14, hi:Error
	lea	%a2, [%a14] lo:Error
	.loc 1 93 0
	add.f	%d4, %d4, %d15
	.loc 1 92 0
	st.w	[%a2] 4, %d2
	.loc 1 93 0
	call	__extendsfdf2
.LVL26:
	mov	%e4, %d3, %d2
	call	sqrt
.LVL27:
	ld.w	%d5, [%a12] lo:Delta_ref
	ld.w	%d4, [%a13] 4
	mov	%e8, %d3, %d2
	call	atan2f
.LVL28:
	ld.w	%d4, [%a15] 8
	sub.f	%d4, %d2, %d4
	call	cosf
.LVL29:
	mov	%d4, %d2
	call	__extendsfdf2
.LVL30:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	call	__muldf3
.LVL31:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL32:
	st.w	[%a14] lo:Error, %d2
	ret
.LFE288:
	.size	Find_error, .-Find_error
.section .text.position_data,"ax",@progbits
	.align 1
	.global	position_data
	.type	position_data, @function
position_data:
.LFB285:
	.loc 1 30 0
	.loc 1 31 0
	movh.a	%a15, hi:iterator
	movh.a	%a13, hi:interruptLeft_counter
	ld.w	%d2, [%a15] lo:iterator
	ld.w	%d15, [%a13] lo:interruptLeft_counter
	movh.a	%a2, hi:Encoder_Values
	utof	%d15, %d15
	lea	%a2, [%a2] lo:Encoder_Values
	addsc.a	%a3, %a2, %d2, 3
	.loc 1 32 0
	movh.a	%a12, hi:interruptRight_counter
	.loc 1 31 0
	st.w	[%a3]0, %d15
	.loc 1 32 0
	ld.w	%d2, [%a15] lo:iterator
	ld.w	%d15, [%a12] lo:interruptRight_counter
	addsc.a	%a2, %a2, %d2, 3
	utof	%d15, %d15
	st.w	[%a2] 4, %d15
	.loc 1 34 0
	ld.w	%d15, [%a15] lo:iterator
	add	%d15, 1
	st.w	[%a15] lo:iterator, %d15
	.loc 1 36 0
	call	update_position
.LVL33:
	.loc 1 37 0
	call	Find_error
.LVL34:
	.loc 1 39 0
	ld.w	%d2, [%a15] lo:iterator
	movh.a	%a2, hi:Current_position
	ld.w	%d15, [%a2] lo:Current_position
	lea	%a4, [%a2] lo:Current_position
	movh.a	%a2, hi:Position_Values
	add	%d2, -1
	lea	%a2, [%a2] lo:Position_Values
	addsc.a	%a3, %a2, %d2, 3
	st.w	[%a3]0, %d15
	.loc 1 40 0
	ld.w	%d2, [%a15] lo:iterator
	ld.w	%d15, [%a4] 4
	add	%d2, -1
	addsc.a	%a15, %a2, %d2, 3
	st.w	[%a15] 4, %d15
	.loc 1 41 0
	ld.w	%d15, [%a13] lo:interruptLeft_counter
	add	%d15, 1
	st.w	[%a13] lo:interruptLeft_counter, %d15
	.loc 1 42 0
	ld.w	%d15, [%a12] lo:interruptRight_counter
	add	%d15, 1
	st.w	[%a12] lo:interruptRight_counter, %d15
	ret
.LFE285:
	.size	position_data, .-position_data
	.global	Delta_ref
.section .bss.Delta_ref,"aw",@nobits
	.align 2
	.type	Delta_ref, @object
	.size	Delta_ref, 8
Delta_ref:
	.zero	8
	.global	Error
.section .bss.Error,"aw",@nobits
	.align 2
	.type	Error, @object
	.size	Error, 8
Error:
	.zero	8
	.global	Desired_position
.section .bss.Desired_position,"aw",@nobits
	.align 2
	.type	Desired_position, @object
	.size	Desired_position, 12
Desired_position:
	.zero	12
	.global	Delta
.section .bss.Delta,"aw",@nobits
	.align 2
	.type	Delta, @object
	.size	Delta, 8
Delta:
	.zero	8
	.global	Current_position
.section .bss.Current_position,"aw",@nobits
	.align 2
	.type	Current_position, @object
	.size	Current_position, 12
Current_position:
	.zero	12
	.global	Old_position
.section .bss.Old_position,"aw",@nobits
	.align 2
	.type	Old_position, @object
	.size	Old_position, 12
Old_position:
	.zero	12
	.global	iterator
.section .bss.iterator,"aw",@nobits
	.align 2
	.type	iterator, @object
	.size	iterator, 4
iterator:
	.zero	4
	.global	Position_Values
.section .bss.Position_Values,"aw",@nobits
	.align 2
	.type	Position_Values, @object
	.size	Position_Values, 800
Position_Values:
	.zero	800
	.global	Encoder_Values
.section .bss.Encoder_Values,"aw",@nobits
	.align 2
	.type	Encoder_Values, @object
	.size	Encoder_Values, 800
Encoder_Values:
	.zero	800
	.global	degree_angle
.section .bss.degree_angle,"aw",@nobits
	.align 2
	.type	degree_angle, @object
	.size	degree_angle, 4
degree_angle:
	.zero	4
	.global	y
.section .bss.y,"aw",@nobits
	.align 2
	.type	y, @object
	.size	y, 4
y:
	.zero	4
	.global	x
.section .bss.x,"aw",@nobits
	.align 2
	.type	x, @object
	.size	x, 4
x:
	.zero	4
	.global	theta
.section .bss.theta,"aw",@nobits
	.align 2
	.type	theta, @object
	.size	theta, 4
theta:
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
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.byte	0x4
	.uaword	.LCFI0-.LFB287
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "0_Src/AppSw/Tricore/Position/position.h"
	.file 5 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
	.file 6 "<built-in>"
	.file 7 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\math.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x809
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/Position/position.c"
	.string	"C:\\\\Robot_Project\\\\Robot_Project_TC297-B-Ongoing"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x181
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x18d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x241
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x7d
	.uaword	0x268
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x7f
	.uaword	0x23b
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0x80
	.uaword	0x1ec
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x81
	.uaword	0x242
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x76
	.uaword	0x2ee
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x1f
	.uaword	0x326
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x21
	.uaword	0x16e
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x22
	.uaword	0x16e
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0x23
	.uaword	0x16e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"old_position"
	.byte	0x4
	.byte	0x24
	.uaword	0x2fd
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x26
	.uaword	0x363
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x28
	.uaword	0x16e
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x29
	.uaword	0x16e
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0x2a
	.uaword	0x16e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"current_position"
	.byte	0x4
	.byte	0x2b
	.uaword	0x33a
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x2d
	.uaword	0x3a3
	.uleb128 0x7
	.string	"Position"
	.byte	0x4
	.byte	0x2f
	.uaword	0x16e
	.byte	0
	.uleb128 0x7
	.string	"Angle"
	.byte	0x4
	.byte	0x30
	.uaword	0x16e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"delta"
	.byte	0x4
	.byte	0x31
	.uaword	0x37b
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x33
	.uaword	0x3d9
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x35
	.uaword	0x16e
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x36
	.uaword	0x16e
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0x37
	.uaword	0x16e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"desired_position"
	.byte	0x4
	.byte	0x38
	.uaword	0x3b0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x3a
	.uaword	0x419
	.uleb128 0x7
	.string	"linear"
	.byte	0x4
	.byte	0x3c
	.uaword	0x16e
	.byte	0
	.uleb128 0x7
	.string	"angular"
	.byte	0x4
	.byte	0x3d
	.uaword	0x16e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"error"
	.byte	0x4
	.byte	0x3e
	.uaword	0x3f1
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x40
	.uaword	0x445
	.uleb128 0x7
	.string	"dx"
	.byte	0x4
	.byte	0x42
	.uaword	0x16e
	.byte	0
	.uleb128 0x7
	.string	"dy"
	.byte	0x4
	.byte	0x43
	.uaword	0x16e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"delta_ref"
	.byte	0x4
	.byte	0x44
	.uaword	0x426
	.uleb128 0xb
	.byte	0x1
	.string	"init_array"
	.byte	0x1
	.byte	0x2d
	.uaword	.LFB286
	.uaword	.LFE286
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x48f
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1a2
	.uaword	.LLST0
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1a2
	.uaword	.LLST1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"update_position"
	.byte	0x1
	.byte	0x3c
	.uaword	.LFB287
	.uaword	.LFE287
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x515
	.uleb128 0xe
	.uaword	.LVL13
	.uaword	0x764
	.uaword	0x4e2
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x12
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x22
	.byte	0
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0x79e
	.uaword	0x4fd
	.uleb128 0xf
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x177
	.byte	0
	.uleb128 0x10
	.uaword	.LVL22
	.uaword	0x79e
	.uleb128 0xf
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x177
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Find_error"
	.byte	0x1
	.byte	0x57
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x558
	.uleb128 0x11
	.uaword	.LVL25
	.uaword	0x7bc
	.uleb128 0x11
	.uaword	.LVL27
	.uaword	0x7dd
	.uleb128 0x11
	.uaword	.LVL28
	.uaword	0x7bc
	.uleb128 0x11
	.uaword	.LVL29
	.uaword	0x7f6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"position_data"
	.byte	0x1
	.byte	0x1d
	.uaword	.LFB285
	.uaword	.LFE285
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58c
	.uleb128 0x11
	.uaword	.LVL33
	.uaword	0x48f
	.uleb128 0x11
	.uaword	.LVL34
	.uaword	0x515
	.byte	0
	.uleb128 0x12
	.uaword	0x268
	.uaword	0x59c
	.uleb128 0x13
	.uaword	0x292
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x5
	.byte	0x96
	.uaword	0x5b9
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x58c
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa
	.uaword	0x5d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	theta
	.uleb128 0x17
	.uaword	0x16e
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xb
	.uaword	0x5d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	x
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0xc
	.uaword	0x5d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	y
	.uleb128 0x18
	.string	"degree_angle"
	.byte	0x1
	.byte	0xd
	.uaword	0x5d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	degree_angle
	.uleb128 0x12
	.uaword	0x16e
	.uaword	0x626
	.uleb128 0x13
	.uaword	0x292
	.byte	0x63
	.uleb128 0x13
	.uaword	0x292
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.string	"Encoder_Values"
	.byte	0x1
	.byte	0xf
	.uaword	0x643
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Encoder_Values
	.uleb128 0x17
	.uaword	0x610
	.uleb128 0x18
	.string	"Position_Values"
	.byte	0x1
	.byte	0x10
	.uaword	0x666
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Position_Values
	.uleb128 0x17
	.uaword	0x610
	.uleb128 0x14
	.string	"interruptLeft_counter"
	.byte	0x1
	.byte	0x11
	.uaword	0x68a
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1fa
	.uleb128 0x14
	.string	"interruptRight_counter"
	.byte	0x1
	.byte	0x12
	.uaword	0x68a
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"iterator"
	.byte	0x1
	.byte	0x13
	.uaword	0x6c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	iterator
	.uleb128 0x17
	.uaword	0x1a2
	.uleb128 0x18
	.string	"Old_position"
	.byte	0x1
	.byte	0x15
	.uaword	0x326
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Old_position
	.uleb128 0x18
	.string	"Current_position"
	.byte	0x1
	.byte	0x16
	.uaword	0x363
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Current_position
	.uleb128 0x18
	.string	"Delta"
	.byte	0x1
	.byte	0x17
	.uaword	0x3a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Delta
	.uleb128 0x18
	.string	"Desired_position"
	.byte	0x1
	.byte	0x18
	.uaword	0x3d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Desired_position
	.uleb128 0x18
	.string	"Error"
	.byte	0x1
	.byte	0x19
	.uaword	0x419
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Error
	.uleb128 0x18
	.string	"Delta_ref"
	.byte	0x1
	.byte	0x1a
	.uaword	0x445
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Delta_ref
	.uleb128 0x19
	.byte	0x1
	.string	"__builtin_sincosf"
	.byte	0x6
	.byte	0
	.string	"sincosf"
	.byte	0x1
	.byte	0x1
	.uaword	0x798
	.uleb128 0x1a
	.uaword	0x16e
	.uleb128 0x1a
	.uaword	0x798
	.uleb128 0x1a
	.uaword	0x798
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x16e
	.uleb128 0x1b
	.byte	0x1
	.string	"fmod"
	.byte	0x7
	.byte	0x8a
	.byte	0x1
	.uaword	0x177
	.byte	0x1
	.uaword	0x7bc
	.uleb128 0x1a
	.uaword	0x177
	.uleb128 0x1a
	.uaword	0x177
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"atan2f"
	.byte	0x7
	.uahalf	0x12e
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uaword	0x7dd
	.uleb128 0x1a
	.uaword	0x16e
	.uleb128 0x1a
	.uaword	0x16e
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"sqrt"
	.byte	0x7
	.byte	0x89
	.byte	0x1
	.uaword	0x177
	.byte	0x1
	.uaword	0x7f6
	.uleb128 0x1a
	.uaword	0x177
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"cosf"
	.byte	0x7
	.uahalf	0x121
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x16e
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE286
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB286
	.uaword	.LFE286
	.uaword	.LFB287
	.uaword	.LFE287
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB285
	.uaword	.LFE285
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"theta"
	.extern	interruptRight_counter,STT_OBJECT,4
	.extern	interruptLeft_counter,STT_OBJECT,4
	.extern	cosf,STT_FUNC,0
	.extern	sqrt,STT_FUNC,0
	.extern	atan2f,STT_FUNC,0
	.extern	fmod,STT_FUNC,0
	.extern	sincosf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
