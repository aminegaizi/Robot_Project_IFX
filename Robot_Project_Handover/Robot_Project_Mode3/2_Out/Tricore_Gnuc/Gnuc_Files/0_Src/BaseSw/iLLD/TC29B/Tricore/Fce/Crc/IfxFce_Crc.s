	.file	"IfxFce_Crc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxFce_Crc_calculateCrc16,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_calculateCrc16
	.type	IfxFce_Crc_calculateCrc16, @function
IfxFce_Crc_calculateCrc16:
.LFB230:
	.file 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Fce/Crc/IfxFce_Crc.c"
	.loc 1 37 0
.LVL0:
	.loc 1 43 0
	movh	%d15, 64207
	.loc 1 38 0
	ld.a	%a2, [%a4]0
.LVL1:
	.loc 1 43 0
	addi	%d15, %d15, -13570
	mov.a	%a15, %d4
	st.w	[%a2] 116, %d15
	.loc 1 44 0
	st.w	[%a2] 112, %d15
	.loc 1 45 0
	ld.hu	%d15, [%a4] 8
	st.w	[%a2] 116, %d15
	.loc 1 46 0
	st.w	[%a2] 112, %d4
	.loc 1 49 0
	st.w	[%a2] 120, %d5
.LVL2:
	add.a	%a15, -1
	.loc 1 52 0
	jz	%d4, .L4
.LVL3:
.L5:
	.loc 1 54 0 discriminator 3
	ld.hu	%d15, [%a5]0
	st.w	[%a2] 96, %d15
	add.a	%a5, 2
.LVL4:
	loop	%a15, .L5
.L4:
	.loc 1 58 0
	ld.w	%d2, [%a2] 100
.LVL5:
	.loc 1 60 0
	extr.u	%d2, %d2, 0, 16
.LVL6:
	ret
.LFE230:
	.size	IfxFce_Crc_calculateCrc16, .-IfxFce_Crc_calculateCrc16
.section .text.IfxFce_Crc_calculateCrc32,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_calculateCrc32
	.type	IfxFce_Crc_calculateCrc32, @function
IfxFce_Crc_calculateCrc32:
.LFB231:
	.loc 1 65 0
.LVL7:
	.loc 1 73 0
	ld.bu	%d15, [%a4] 12
	.loc 1 66 0
	ld.a	%a2, [%a4]0
.LVL8:
	.loc 1 73 0
	jnz	%d15, .L10
	.loc 1 75 0
	movh	%d15, 64207
	addi	%d15, %d15, -13570
	.loc 1 81 0
	lea	%a3, [%a2] 32
.LVL9:
	.loc 1 75 0
	st.w	[%a2] 52, %d15
	.loc 1 76 0
	st.w	[%a2] 48, %d15
	.loc 1 77 0
	ld.w	%d15, [%a4] 8
	st.w	[%a2] 52, %d15
	.loc 1 78 0
	st.w	[%a2] 48, %d4
	.loc 1 79 0
	st.w	[%a2] 56, %d5
.L11:
.LVL10:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 95 0
	jz	%d4, .L16
.LVL11:
.L18:
	.loc 1 97 0 discriminator 3
	ld.w	%d15, [%a5]0
	st.w	[%a3]0, %d15
	add.a	%a5, 4
.LVL12:
	loop	%a15, .L18
.L16:
	.loc 1 101 0
	ld.bu	%d15, [%a4] 12
	jz	%d15, .L22
	.loc 1 107 0
	ld.w	%d2, [%a2] 68
.LVL13:
	.loc 1 111 0
	ret
.LVL14:
.L10:
	.loc 1 85 0
	movh	%d15, 64207
	addi	%d15, %d15, -13570
	.loc 1 91 0
	lea	%a3, [%a2] 64
.LVL15:
	.loc 1 85 0
	st.w	[%a2] 84, %d15
	.loc 1 86 0
	st.w	[%a2] 80, %d15
	.loc 1 87 0
	ld.w	%d15, [%a4] 8
	st.w	[%a2] 84, %d15
	.loc 1 88 0
	st.w	[%a2] 80, %d4
	.loc 1 89 0
	st.w	[%a2] 88, %d5
	j	.L11
.LVL16:
.L22:
	.loc 1 103 0
	ld.w	%d2, [%a2] 36
.LVL17:
	ret
.LFE231:
	.size	IfxFce_Crc_calculateCrc32, .-IfxFce_Crc_calculateCrc32
.section .text.IfxFce_Crc_calculateCrc8,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_calculateCrc8
	.type	IfxFce_Crc_calculateCrc8, @function
IfxFce_Crc_calculateCrc8:
.LFB232:
	.loc 1 115 0
.LVL18:
	.loc 1 121 0
	movh	%d15, 64207
	.loc 1 116 0
	ld.a	%a2, [%a4]0
.LVL19:
	.loc 1 121 0
	addi	%d15, %d15, -13570
	addsc.a	%a15, %a5, %d4, 0
	st.w	[%a2] 148, %d15
	.loc 1 122 0
	st.w	[%a2] 144, %d15
	.loc 1 123 0
	ld.bu	%d15, [%a4] 8
	st.w	[%a2] 148, %d15
	.loc 1 124 0
	st.w	[%a2] 144, %d4
	mov.d	%d15, %a5
	not	%d15
	.loc 1 127 0
	st.w	[%a2] 152, %d5
.LVL20:
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 132 0
	jz	%d4, .L26
.LVL21:
.L27:
	.loc 1 134 0 discriminator 3
	ld.bu	%d15, [%a5]0
	st.w	[%a2] 128, %d15
.LVL22:
	add.a	%a5, 1
.LVL23:
	loop	%a15, .L27
.LVL24:
.L26:
	.loc 1 137 0
	ld.w	%d2, [%a2] 132
.LVL25:
	.loc 1 139 0
	and	%d2, %d2, 255
.LVL26:
	ret
.LFE232:
	.size	IfxFce_Crc_calculateCrc8, .-IfxFce_Crc_calculateCrc8
.section .text.IfxFce_Crc_clearErrorFlags,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_clearErrorFlags
	.type	IfxFce_Crc_clearErrorFlags, @function
IfxFce_Crc_clearErrorFlags:
.LFB233:
	.loc 1 144 0
.LVL27:
	.loc 1 145 0
	ld.bu	%d15, [%a4] 4
	.loc 1 147 0
	ld.a	%a15, [%a4]0
	.loc 1 145 0
	jz	%d15, .L35
	.loc 1 149 0
	jeq	%d15, 1, .L36
.LVL28:
.LBB20:
.LBB21:
	.file 2 "0_Src/BaseSw/iLLD/TC29B/Tricore/Fce/Std/IfxFce.h"
	.loc 2 188 0
	ld.bu	%d15, [%a4] 12
	jz	%d15, .L37
	.loc 2 194 0
	mov	%d15, 15
	st.w	[%a15] 76, %d15
.LVL29:
	ret
.LVL30:
.L35:
.LBE21:
.LBE20:
.LBB23:
.LBB24:
	.loc 2 201 0
	mov	%d15, 15
	st.w	[%a15] 140, %d15
	ret
.LVL31:
.L36:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 2 182 0
	mov	%d15, 15
	st.w	[%a15] 108, %d15
	ret
.LVL32:
.L37:
.LBE26:
.LBE25:
.LBB27:
.LBB22:
	.loc 2 190 0
	mov	%d15, 15
	st.w	[%a15] 44, %d15
.LVL33:
	ret
.LBE22:
.LBE27:
.LFE233:
	.size	IfxFce_Crc_clearErrorFlags, .-IfxFce_Crc_clearErrorFlags
.section .text.IfxFce_Crc_deInitModule,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_deInitModule
	.type	IfxFce_Crc_deInitModule, @function
IfxFce_Crc_deInitModule:
.LFB234:
	.loc 1 161 0
.LVL34:
	.loc 1 162 0
	ld.a	%a4, [%a4]0
.LVL35:
	j	IfxFce_resetModule
.LVL36:
.LFE234:
	.size	IfxFce_Crc_deInitModule, .-IfxFce_Crc_deInitModule
.section .text.IfxFce_Crc_getInterruptStatus,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_getInterruptStatus
	.type	IfxFce_Crc_getInterruptStatus, @function
IfxFce_Crc_getInterruptStatus:
.LFB235:
	.loc 1 167 0
.LVL37:
	.loc 1 168 0
	ld.bu	%d15, [%a4] 4
	.loc 1 167 0
	mov.aa	%a15, %a4
	.loc 1 170 0
	ld.a	%a4, [%a4]0
.LVL38:
	.loc 1 168 0
	jz	%d15, .L43
	.loc 1 172 0
	jeq	%d15, 1, .L44
	.loc 1 178 0
	ld.bu	%d4, [%a15] 12
	.loc 1 180 0
	j	IfxFce_getCrc32InterruptStatus
.LVL39:
.L43:
	.loc 1 170 0
	j	IfxFce_getCrc8InterruptStatus
.LVL40:
.L44:
	.loc 1 174 0
	j	IfxFce_getCrc16InterruptStatus
.LVL41:
.LFE235:
	.size	IfxFce_Crc_getInterruptStatus, .-IfxFce_Crc_getInterruptStatus
.section .text.IfxFce_Crc_initCrc,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_initCrc
	.type	IfxFce_Crc_initCrc, @function
IfxFce_Crc_initCrc:
.LFB236:
	.loc 1 184 0
.LVL42:
	.loc 1 185 0
	ld.a	%a13, [%a5]0
	.loc 1 188 0
	ld.bu	%d15, [%a5] 12
	st.b	[%a4] 4, %d15
	.loc 1 189 0
	ld.w	%d15, [%a5] 8
	st.w	[%a4] 8, %d15
	.loc 1 185 0
	st.a	[%a4]0, %a13
.LVL43:
	.loc 1 184 0
	mov.aa	%a15, %a5
	mov.aa	%a12, %a4
	.loc 1 191 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL44:
	.loc 1 192 0
	mov	%d4, %d2
	.loc 1 191 0
	mov	%d8, %d2
.LVL45:
	.loc 1 192 0
	call	IfxScuWdt_clearCpuEndinit
.LVL46:
	.loc 1 196 0
	ld.bu	%d2, [%a15] 16
	.loc 1 195 0
	mov	%d15, 0
.LVL47:
	.loc 1 196 0
	ins.t	%d15, %d15,0, %d2,0
.LVL48:
	.loc 1 197 0
	ld.bu	%d2, [%a15] 17
	ins.t	%d15, %d15,1, %d2,0
	.loc 1 198 0
	ld.bu	%d2, [%a15] 18
	ins.t	%d15, %d15,2, %d2,0
	.loc 1 199 0
	ld.bu	%d2, [%a15] 19
	ins.t	%d15, %d15,3, %d2,0
	.loc 1 200 0
	ld.bu	%d2, [%a15] 4
	ins.t	%d15, %d15,4, %d2,0
	.loc 1 201 0
	ld.bu	%d2, [%a15] 5
	ins.t	%d15, %d15,5, %d2,0
	.loc 1 202 0
	ld.bu	%d2, [%a15] 6
	ins.t	%d15, %d15,8, %d2,0
	.loc 1 203 0
	ld.bu	%d2, [%a15] 7
	ins.t	%d15, %d15,9, %d2,0
	.loc 1 204 0
	ld.bu	%d2, [%a15] 13
	ins.t	%d15, %d15,10, %d2,0
	.loc 1 206 0
	ld.bu	%d2, [%a15] 12
	jz	%d2, .L50
	.loc 1 210 0
	jeq	%d2, 1, .L51
	.loc 1 216 0
	ld.bu	%d2, [%a15] 14
	st.b	[%a12] 12, %d2
	.loc 1 218 0
	jz	%d2, .L52
	.loc 1 224 0
	st.w	[%a13] 72, %d15
	.loc 1 228 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL49:
.L50:
	.loc 1 208 0
	st.w	[%a13] 136, %d15
	.loc 1 228 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL50:
.L51:
	.loc 1 212 0
	st.w	[%a13] 104, %d15
	.loc 1 228 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL51:
.L52:
	.loc 1 220 0
	st.w	[%a13] 40, %d15
	.loc 1 228 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL52:
.LFE236:
	.size	IfxFce_Crc_initCrc, .-IfxFce_Crc_initCrc
.section .text.IfxFce_Crc_initCrcConfig,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_initCrcConfig
	.type	IfxFce_Crc_initCrcConfig, @function
IfxFce_Crc_initCrcConfig:
.LFB237:
	.loc 1 233 0
.LVL53:
	.loc 1 234 0
	ld.w	%d15, [%a5]0
	st.w	[%a4]0, %d15
	.loc 1 235 0
	mov	%d15, 2
	.loc 1 237 0
	mov	%d2, 0
	.loc 1 235 0
	st.b	[%a4] 12, %d15
	.loc 1 236 0
	mov	%d15, 1
	.loc 1 237 0
	st.b	[%a4] 5, %d2
	.loc 1 241 0
	st.b	[%a4] 16, %d2
	.loc 1 236 0
	st.b	[%a4] 4, %d15
	.loc 1 238 0
	st.b	[%a4] 6, %d15
	.loc 1 239 0
	st.b	[%a4] 7, %d15
	.loc 1 240 0
	st.b	[%a4] 13, %d15
	.loc 1 242 0
	st.b	[%a4] 17, %d15
	.loc 1 243 0
	st.b	[%a4] 18, %d15
	.loc 1 244 0
	st.b	[%a4] 19, %d15
	ret
.LFE237:
	.size	IfxFce_Crc_initCrcConfig, .-IfxFce_Crc_initCrcConfig
.section .text.IfxFce_Crc_initModule,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_initModule
	.type	IfxFce_Crc_initModule, @function
IfxFce_Crc_initModule:
.LFB238:
	.loc 1 249 0
.LVL54:
	.loc 1 250 0
	ld.a	%a15, [%a5]0
	.loc 1 249 0
	mov.aa	%a12, %a5
	.loc 1 250 0
	st.a	[%a4]0, %a15
.LVL55:
.LBB28:
.LBB29:
	.loc 2 216 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL56:
	.loc 2 217 0
	mov	%d4, %d2
	.loc 2 216 0
	mov	%d15, %d2
.LVL57:
	.loc 2 217 0
	call	IfxScuWdt_clearCpuEndinit
.LVL58:
	.loc 2 218 0
	ld.w	%d2, [%a15]0
	.loc 2 219 0
	mov	%d4, %d15
	.loc 2 218 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
.LBE29:
.LBE28:
.LBB31:
.LBB32:
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
	.loc 3 256 0
	movh.a	%a15, 61444
.LVL59:
.LBE32:
.LBE31:
.LBB37:
.LBB30:
	.loc 2 219 0
	call	IfxScuWdt_setCpuEndinit
.LVL60:
.LBE30:
.LBE37:
.LBB38:
.LBB35:
	.loc 3 256 0
	lea	%a15, [%a15] -31568
	ld.w	%d2, [%a15]0
	ld.bu	%d3, [%a12] 4
	andn	%d2, %d2, ~(-256)
	or	%d2, %d3
.LBE35:
.LBE38:
	.loc 1 256 0
	ld.bu	%d15, [%a12] 6
.LVL61:
.LBB39:
.LBB36:
	.loc 3 256 0
	st.w	[%a15]0, %d2
.LVL62:
	.loc 3 257 0
	ld.w	%d2, [%a15]0
	insert	%d15, %d2, %d15, 11, 2
.LVL63:
	st.w	[%a15]0, %d15
.LVL64:
.LBB33:
.LBB34:
	.loc 3 232 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a15]0, %d15
.LVL65:
.LBE34:
.LBE33:
.LBE36:
.LBE39:
.LBB40:
.LBB41:
	.loc 3 250 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a15]0, %d15
	ret
.LBE41:
.LBE40:
.LFE238:
	.size	IfxFce_Crc_initModule, .-IfxFce_Crc_initModule
.section .text.IfxFce_Crc_initModuleConfig,"ax",@progbits
	.align 1
	.global	IfxFce_Crc_initModuleConfig
	.type	IfxFce_Crc_initModuleConfig, @function
IfxFce_Crc_initModuleConfig:
.LFB239:
	.loc 1 262 0
.LVL66:
	.loc 1 264 0
	mov	%d15, 0
	.loc 1 263 0
	st.a	[%a4]0, %a5
	.loc 1 264 0
	st.h	[%a4] 4, %d15
	.loc 1 265 0
	st.b	[%a4] 6, %d15
	ret
.LFE239:
	.size	IfxFce_Crc_initModuleConfig, .-IfxFce_Crc_initModuleConfig
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
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFce_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxSrc_cfg.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h"
	.file 9 "0_Src/BaseSw/iLLD/TC29B/Tricore/Fce/Crc/IfxFce_Crc.h"
	.file 10 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
	.file 11 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x272b
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC29B/Tricore/Fce/Crc/IfxFce_Crc.c"
	.string	"C:\\\\Robot_Project_Handover\\\\Robot_Project_Mode3"
	.uaword	.Ldebug_ranges0+0x50
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1be
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x1ea
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x17a
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x186
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x1be
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
	.uaword	0x277
	.uleb128 0x5
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x5
	.byte	0x55
	.uaword	0x1dc
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x7d
	.uaword	0x2b2
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x7f
	.uaword	0x271
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x80
	.uaword	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x81
	.uaword	0x28c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.uaword	0x1be
	.uaword	0x2f8
	.uleb128 0x9
	.uaword	0x2dc
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"_Ifx_FCE_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x50c
	.uleb128 0xb
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x2f8
	.uleb128 0xa
	.string	"_Ifx_FCE_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x55b
	.uleb128 0xb
	.string	"reserved_0"
	.byte	0x6
	.byte	0x54
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x527
	.uleb128 0xa
	.string	"_Ifx_FCE_CFG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x64b
	.uleb128 0xb
	.string	"CMI"
	.byte	0x6
	.byte	0x5a
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CEI"
	.byte	0x6
	.byte	0x5b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"LEI"
	.byte	0x6
	.byte	0x5c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"BEI"
	.byte	0x6
	.byte	0x5d
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"CCE"
	.byte	0x6
	.byte	0x5e
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"ALR"
	.byte	0x6
	.byte	0x5f
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"reserved_6"
	.byte	0x6
	.byte	0x60
	.uaword	0x2cc
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"REFIN"
	.byte	0x6
	.byte	0x61
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"REFOUT"
	.byte	0x6
	.byte	0x62
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"XSEL"
	.byte	0x6
	.byte	0x63
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"reserved_11"
	.byte	0x6
	.byte	0x64
	.uaword	0x2cc
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_CFG_Bits"
	.byte	0x6
	.byte	0x65
	.uaword	0x576
	.uleb128 0xa
	.string	"_Ifx_FCE_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x68
	.uaword	0x6ad
	.uleb128 0xb
	.string	"DISR"
	.byte	0x6
	.byte	0x6a
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"DISS"
	.byte	0x6
	.byte	0x6b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.byte	0x6c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_CLC_Bits"
	.byte	0x6
	.byte	0x6d
	.uaword	0x663
	.uleb128 0xa
	.string	"_Ifx_FCE_CTR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x70
	.uaword	0x72d
	.uleb128 0xb
	.string	"FCM"
	.byte	0x6
	.byte	0x72
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"FRM_CFG"
	.byte	0x6
	.byte	0x73
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"FRM_CHECK"
	.byte	0x6
	.byte	0x74
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x6
	.byte	0x75
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_CTR_Bits"
	.byte	0x6
	.byte	0x76
	.uaword	0x6c5
	.uleb128 0xa
	.string	"_Ifx_FCE_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x79
	.uaword	0x79b
	.uleb128 0xb
	.string	"MOD_REV"
	.byte	0x6
	.byte	0x7b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MOD_TYPE"
	.byte	0x6
	.byte	0x7c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x6
	.byte	0x7d
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_ID_Bits"
	.byte	0x6
	.byte	0x7e
	.uaword	0x745
	.uleb128 0xa
	.string	"_Ifx_FCE_IN0_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x81
	.uaword	0x7e2
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0x83
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_CHECK_Bits"
	.byte	0x6
	.byte	0x84
	.uaword	0x7b2
	.uleb128 0xa
	.string	"_Ifx_FCE_IN0_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x87
	.uaword	0x82e
	.uleb128 0xb
	.string	"CRC"
	.byte	0x6
	.byte	0x89
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_CRC_Bits"
	.byte	0x6
	.byte	0x8a
	.uaword	0x800
	.uleb128 0xa
	.string	"_Ifx_FCE_IN0_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x8d
	.uaword	0x876
	.uleb128 0xb
	.string	"IR"
	.byte	0x6
	.byte	0x8f
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_IR_Bits"
	.byte	0x6
	.byte	0x90
	.uaword	0x84a
	.uleb128 0xa
	.string	"_Ifx_FCE_IN0_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x93
	.uaword	0x8bf
	.uleb128 0xb
	.string	"RES"
	.byte	0x6
	.byte	0x95
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_RES_Bits"
	.byte	0x6
	.byte	0x96
	.uaword	0x891
	.uleb128 0xa
	.string	"_Ifx_FCE_IN1_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x99
	.uaword	0x90b
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0x9b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_CHECK_Bits"
	.byte	0x6
	.byte	0x9c
	.uaword	0x8db
	.uleb128 0xa
	.string	"_Ifx_FCE_IN1_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x9f
	.uaword	0x957
	.uleb128 0xb
	.string	"CRC"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_CRC_Bits"
	.byte	0x6
	.byte	0xa2
	.uaword	0x929
	.uleb128 0xa
	.string	"_Ifx_FCE_IN1_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.uaword	0x99f
	.uleb128 0xb
	.string	"IR"
	.byte	0x6
	.byte	0xa7
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_IR_Bits"
	.byte	0x6
	.byte	0xa8
	.uaword	0x973
	.uleb128 0xa
	.string	"_Ifx_FCE_IN1_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xab
	.uaword	0x9e8
	.uleb128 0xb
	.string	"RES"
	.byte	0x6
	.byte	0xad
	.uaword	0x2cc
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_RES_Bits"
	.byte	0x6
	.byte	0xae
	.uaword	0x9ba
	.uleb128 0xa
	.string	"_Ifx_FCE_IN2_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb1
	.uaword	0xa43
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0xb3
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.byte	0xb4
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_CHECK_Bits"
	.byte	0x6
	.byte	0xb5
	.uaword	0xa04
	.uleb128 0xa
	.string	"_Ifx_FCE_IN2_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb8
	.uaword	0xa9e
	.uleb128 0xb
	.string	"CRC"
	.byte	0x6
	.byte	0xba
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.byte	0xbb
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_CRC_Bits"
	.byte	0x6
	.byte	0xbc
	.uaword	0xa61
	.uleb128 0xa
	.string	"_Ifx_FCE_IN2_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xbf
	.uaword	0xaf5
	.uleb128 0xb
	.string	"IR"
	.byte	0x6
	.byte	0xc1
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.byte	0xc2
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_IR_Bits"
	.byte	0x6
	.byte	0xc3
	.uaword	0xaba
	.uleb128 0xa
	.string	"_Ifx_FCE_IN2_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc6
	.uaword	0xb4d
	.uleb128 0xb
	.string	"RES"
	.byte	0x6
	.byte	0xc8
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.byte	0xc9
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_RES_Bits"
	.byte	0x6
	.byte	0xca
	.uaword	0xb10
	.uleb128 0xa
	.string	"_Ifx_FCE_IN3_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xcd
	.uaword	0xba8
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0xcf
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.byte	0xd0
	.uaword	0x2cc
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_CHECK_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0xb69
	.uleb128 0xa
	.string	"_Ifx_FCE_IN3_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0xc03
	.uleb128 0xb
	.string	"CRC"
	.byte	0x6
	.byte	0xd6
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.byte	0xd7
	.uaword	0x2cc
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_CRC_Bits"
	.byte	0x6
	.byte	0xd8
	.uaword	0xbc6
	.uleb128 0xa
	.string	"_Ifx_FCE_IN3_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xdb
	.uaword	0xc5a
	.uleb128 0xb
	.string	"IR"
	.byte	0x6
	.byte	0xdd
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.byte	0xde
	.uaword	0x2cc
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_IR_Bits"
	.byte	0x6
	.byte	0xdf
	.uaword	0xc1f
	.uleb128 0xa
	.string	"_Ifx_FCE_IN3_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe2
	.uaword	0xcb2
	.uleb128 0xb
	.string	"RES"
	.byte	0x6
	.byte	0xe4
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.byte	0xe5
	.uaword	0x2cc
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_RES_Bits"
	.byte	0x6
	.byte	0xe6
	.uaword	0xc75
	.uleb128 0xa
	.string	"_Ifx_FCE_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe9
	.uaword	0xd1c
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.byte	0xeb
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"RSTSTAT"
	.byte	0x6
	.byte	0xec
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.byte	0xed
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_KRST0_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0xcce
	.uleb128 0xa
	.string	"_Ifx_FCE_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0xd71
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.byte	0xf3
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x6
	.byte	0xf4
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_KRST1_Bits"
	.byte	0x6
	.byte	0xf5
	.uaword	0xd36
	.uleb128 0xa
	.string	"_Ifx_FCE_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf8
	.uaword	0xdc8
	.uleb128 0xb
	.string	"CLR"
	.byte	0x6
	.byte	0xfa
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x6
	.byte	0xfb
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_KRSTCLR_Bits"
	.byte	0x6
	.byte	0xfc
	.uaword	0xd8b
	.uleb128 0xa
	.string	"_Ifx_FCE_LENGTH_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xff
	.uaword	0xe22
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x101
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x102
	.uaword	0x2cc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_LENGTH_Bits"
	.byte	0x6
	.uahalf	0x103
	.uaword	0xde4
	.uleb128 0xf
	.string	"_Ifx_FCE_STS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x106
	.uaword	0xeaa
	.uleb128 0x10
	.string	"CMF"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"CEF"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"LEF"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"BEF"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_STS_Bits"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0xe3e
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x115
	.uaword	0xeeb
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x50c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_ACCEN0"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0xec3
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x11d
	.uaword	0xf2a
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x11f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x120
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x121
	.uaword	0x55b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_ACCEN1"
	.byte	0x6
	.uahalf	0x122
	.uaword	0xf02
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x125
	.uaword	0xf69
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x128
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x129
	.uaword	0x64b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_CFG"
	.byte	0x6
	.uahalf	0x12a
	.uaword	0xf41
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x12d
	.uaword	0xfa5
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x6ad
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_CLC"
	.byte	0x6
	.uahalf	0x132
	.uaword	0xf7d
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x135
	.uaword	0xfe1
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x72d
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_CTR"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0xfb9
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x101d
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x141
	.uaword	0x79b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_ID"
	.byte	0x6
	.uahalf	0x142
	.uaword	0xff5
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1058
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x148
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x7e2
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN0_CHECK"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x1030
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x109a
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x150
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x82e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN0_CRC"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x1072
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x155
	.uaword	0x10da
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x157
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x158
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x159
	.uaword	0x876
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN0_IR"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x10b2
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x1119
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x160
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x8bf
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN0_RES"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x10f1
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x165
	.uaword	0x1159
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x167
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x90b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN1_CHECK"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1131
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x119b
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x957
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN1_CRC"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x1173
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x175
	.uaword	0x11db
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x179
	.uaword	0x99f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN1_IR"
	.byte	0x6
	.uahalf	0x17a
	.uaword	0x11b3
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x121a
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x9e8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN1_RES"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x11f2
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x185
	.uaword	0x125a
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x187
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x189
	.uaword	0xa43
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN2_CHECK"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1232
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x129c
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x190
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x191
	.uaword	0xa9e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN2_CRC"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x1274
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x195
	.uaword	0x12dc
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x199
	.uaword	0xaf5
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN2_IR"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x12b4
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x131b
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0xb4d
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN2_RES"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x12f3
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0x135b
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0xba8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN3_CHECK"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1333
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0x139d
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1b0
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0xc03
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN3_CRC"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1375
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x13dd
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1b8
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0xc5a
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN3_IR"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x13b5
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0x141c
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0xcb2
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN3_RES"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x13f4
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x145c
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1c8
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0xd1c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_KRST0"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1434
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cd
	.uaword	0x149a
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0xd71
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_KRST1"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x1472
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d5
	.uaword	0x14d8
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0xdc8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_KRSTCLR"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x14b0
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1dd
	.uaword	0x1518
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1e0
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0xe22
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_LENGTH"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x14f0
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e5
	.uaword	0x1557
	.uleb128 0x12
	.string	"U"
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x2cc
	.uleb128 0x12
	.string	"I"
	.byte	0x6
	.uahalf	0x1e8
	.uaword	0x19b
	.uleb128 0x12
	.string	"B"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0xeaa
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_STS"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x152f
	.uleb128 0xf
	.string	"_Ifx_FCE_IN0"
	.byte	0x20
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x15e9
	.uleb128 0x13
	.string	"IR"
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x10da
	.byte	0
	.uleb128 0x13
	.string	"RES"
	.byte	0x6
	.uahalf	0x1f8
	.uaword	0x1119
	.byte	0x4
	.uleb128 0x13
	.string	"CFG"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0xf69
	.byte	0x8
	.uleb128 0x13
	.string	"STS"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x1557
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x1518
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1058
	.byte	0x14
	.uleb128 0x13
	.string	"CRC"
	.byte	0x6
	.uahalf	0x1fd
	.uaword	0x109a
	.byte	0x18
	.uleb128 0x13
	.string	"CTR"
	.byte	0x6
	.uahalf	0x1fe
	.uaword	0xfe1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN0"
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x15fd
	.uleb128 0x15
	.uaword	0x156b
	.uleb128 0xf
	.string	"_Ifx_FCE_IN1"
	.byte	0x20
	.byte	0x6
	.uahalf	0x202
	.uaword	0x1680
	.uleb128 0x13
	.string	"IR"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x11db
	.byte	0
	.uleb128 0x13
	.string	"RES"
	.byte	0x6
	.uahalf	0x205
	.uaword	0x121a
	.byte	0x4
	.uleb128 0x13
	.string	"CFG"
	.byte	0x6
	.uahalf	0x206
	.uaword	0xf69
	.byte	0x8
	.uleb128 0x13
	.string	"STS"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1557
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x208
	.uaword	0x1518
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x209
	.uaword	0x1159
	.byte	0x14
	.uleb128 0x13
	.string	"CRC"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x119b
	.byte	0x18
	.uleb128 0x13
	.string	"CTR"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0xfe1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN1"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1694
	.uleb128 0x15
	.uaword	0x1602
	.uleb128 0xf
	.string	"_Ifx_FCE_IN2"
	.byte	0x20
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1717
	.uleb128 0x13
	.string	"IR"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x12dc
	.byte	0
	.uleb128 0x13
	.string	"RES"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x131b
	.byte	0x4
	.uleb128 0x13
	.string	"CFG"
	.byte	0x6
	.uahalf	0x213
	.uaword	0xf69
	.byte	0x8
	.uleb128 0x13
	.string	"STS"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1557
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x215
	.uaword	0x1518
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x216
	.uaword	0x125a
	.byte	0x14
	.uleb128 0x13
	.string	"CRC"
	.byte	0x6
	.uahalf	0x217
	.uaword	0x129c
	.byte	0x18
	.uleb128 0x13
	.string	"CTR"
	.byte	0x6
	.uahalf	0x218
	.uaword	0xfe1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN2"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x172b
	.uleb128 0x15
	.uaword	0x1699
	.uleb128 0xf
	.string	"_Ifx_FCE_IN3"
	.byte	0x20
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x17ae
	.uleb128 0x13
	.string	"IR"
	.byte	0x6
	.uahalf	0x21e
	.uaword	0x13dd
	.byte	0
	.uleb128 0x13
	.string	"RES"
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x141c
	.byte	0x4
	.uleb128 0x13
	.string	"CFG"
	.byte	0x6
	.uahalf	0x220
	.uaword	0xf69
	.byte	0x8
	.uleb128 0x13
	.string	"STS"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x1557
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1518
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x223
	.uaword	0x135b
	.byte	0x14
	.uleb128 0x13
	.string	"CRC"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x139d
	.byte	0x18
	.uleb128 0x13
	.string	"CTR"
	.byte	0x6
	.uahalf	0x225
	.uaword	0xfe1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE_IN3"
	.byte	0x6
	.uahalf	0x226
	.uaword	0x17c2
	.uleb128 0x15
	.uaword	0x1730
	.uleb128 0x16
	.string	"_Ifx_FCE"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x233
	.uaword	0x18ad
	.uleb128 0x13
	.string	"CLC"
	.byte	0x6
	.uahalf	0x235
	.uaword	0xfa5
	.byte	0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x236
	.uaword	0x2e8
	.byte	0x4
	.uleb128 0x13
	.string	"ID"
	.byte	0x6
	.uahalf	0x237
	.uaword	0x101d
	.byte	0x8
	.uleb128 0x13
	.string	"reserved_C"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x18ad
	.byte	0xc
	.uleb128 0x13
	.string	"IN0"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x15e9
	.byte	0x20
	.uleb128 0x13
	.string	"IN1"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0x1680
	.byte	0x40
	.uleb128 0x13
	.string	"IN2"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x1717
	.byte	0x60
	.uleb128 0x13
	.string	"IN3"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x17ae
	.byte	0x80
	.uleb128 0x13
	.string	"reserved_A0"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x18bd
	.byte	0xa0
	.uleb128 0x13
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x23e
	.uaword	0x14d8
	.byte	0xec
	.uleb128 0x13
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x149a
	.byte	0xf0
	.uleb128 0x13
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x240
	.uaword	0x145c
	.byte	0xf4
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x241
	.uaword	0xf2a
	.byte	0xf8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x242
	.uaword	0xeeb
	.byte	0xfc
	.byte	0
	.uleb128 0x8
	.uaword	0x1be
	.uaword	0x18bd
	.uleb128 0x9
	.uaword	0x2dc
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.uaword	0x1be
	.uaword	0x18cd
	.uleb128 0x9
	.uaword	0x2dc
	.byte	0x4b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FCE"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x18dd
	.uleb128 0x15
	.uaword	0x17c7
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0x32
	.uaword	0x1932
	.uleb128 0x18
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x7
	.byte	0x37
	.uaword	0x18e2
	.uleb128 0xa
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x1a62
	.uleb128 0xb
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0x2cc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x8
	.byte	0x30
	.uaword	0x2cc
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0x2cc
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"reserved_13"
	.byte	0x8
	.byte	0x33
	.uaword	0x2cc
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0x2cc
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"reserved_22"
	.byte	0x8
	.byte	0x35
	.uaword	0x2cc
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"reserved_31"
	.byte	0x8
	.byte	0x3d
	.uaword	0x2cc
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x1944
	.uleb128 0x19
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x1a9f
	.uleb128 0x1a
	.string	"U"
	.byte	0x8
	.byte	0x48
	.uaword	0x2cc
	.uleb128 0x1a
	.string	"I"
	.byte	0x8
	.byte	0x49
	.uaword	0x19b
	.uleb128 0x1a
	.string	"B"
	.byte	0x8
	.byte	0x4a
	.uaword	0x1a62
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4b
	.uaword	0x1a7b
	.uleb128 0x17
	.byte	0x1
	.byte	0x2
	.byte	0x39
	.uaword	0x1aea
	.uleb128 0x18
	.string	"IfxFce_Crc32Kernel_0"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxFce_Crc32Kernel_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxFce_Crc32Kernel"
	.byte	0x2
	.byte	0x3c
	.uaword	0x1ab3
	.uleb128 0x17
	.byte	0x1
	.byte	0x2
	.byte	0x41
	.uaword	0x1b48
	.uleb128 0x18
	.string	"IfxFce_CrcMode_8"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxFce_CrcMode_16"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxFce_CrcMode_32"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxFce_CrcMode"
	.byte	0x2
	.byte	0x45
	.uaword	0x1b04
	.uleb128 0x1b
	.byte	0x4
	.byte	0x9
	.uahalf	0x164
	.uaword	0x1bb9
	.uleb128 0x13
	.string	"crcMismatch"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x22f
	.byte	0
	.uleb128 0x13
	.string	"configError"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x22f
	.byte	0x1
	.uleb128 0x13
	.string	"lengthError"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x22f
	.byte	0x2
	.uleb128 0x13
	.string	"busError"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x22f
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"IfxFce_Crc_EnabledInterrupts"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x1b5e
	.uleb128 0x1b
	.byte	0x4
	.byte	0x9
	.uahalf	0x172
	.uaword	0x1bf5
	.uleb128 0x13
	.string	"fce"
	.byte	0x9
	.uahalf	0x174
	.uaword	0x1bf5
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x18cd
	.uleb128 0xe
	.string	"IfxFce_Crc"
	.byte	0x9
	.uahalf	0x175
	.uaword	0x1bde
	.uleb128 0x1b
	.byte	0x8
	.byte	0x9
	.uahalf	0x179
	.uaword	0x1c54
	.uleb128 0x13
	.string	"fce"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x13
	.string	"isrPriority"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x1dc
	.byte	0x4
	.uleb128 0x13
	.string	"isrTypeOfService"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x1932
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"IfxFce_Crc_Config"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x1c0e
	.uleb128 0x1b
	.byte	0x10
	.byte	0x9
	.uahalf	0x182
	.uaword	0x1cb0
	.uleb128 0x13
	.string	"fce"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x13
	.string	"crcMode"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x1b48
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x186
	.uaword	0x20e
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x187
	.uaword	0x1aea
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"IfxFce_Crc_Crc"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x1c6e
	.uleb128 0x1b
	.byte	0x14
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x1dbe
	.uleb128 0x13
	.string	"fce"
	.byte	0x9
	.uahalf	0x18e
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x13
	.string	"crcCheckCompared"
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x22f
	.byte	0x4
	.uleb128 0x13
	.string	"automaticLengthReload"
	.byte	0x9
	.uahalf	0x190
	.uaword	0x22f
	.byte	0x5
	.uleb128 0x13
	.string	"dataByteReflectionEnabled"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x22f
	.byte	0x6
	.uleb128 0x13
	.string	"crc32BitReflectionEnabled"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x22f
	.byte	0x7
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x193
	.uaword	0x20e
	.byte	0x8
	.uleb128 0x13
	.string	"crcMode"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x1b48
	.byte	0xc
	.uleb128 0x13
	.string	"crcResultInverted"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x22f
	.byte	0xd
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x196
	.uaword	0x1aea
	.byte	0xe
	.uleb128 0x13
	.string	"enabledInterrupts"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x1bb9
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"IfxFce_Crc_CrcConfig"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x1cc7
	.uleb128 0x1c
	.string	"IfxSrc_clearRequest"
	.byte	0x3
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x1e04
	.uleb128 0x1d
	.string	"src"
	.byte	0x3
	.byte	0xe6
	.uaword	0x1e04
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1e0a
	.uleb128 0x15
	.uaword	0x1a9f
	.uleb128 0x1e
	.string	"IfxFce_getSrcPointer"
	.byte	0x2
	.byte	0xdf
	.byte	0x1
	.uaword	0x1e04
	.byte	0x3
	.uaword	0x1e3d
	.uleb128 0x1d
	.string	"fce"
	.byte	0x2
	.byte	0xdf
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x1c
	.string	"IfxFce_clearCrc8ErrorFlags"
	.byte	0x2
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.uaword	0x1e6d
	.uleb128 0x1d
	.string	"fce"
	.byte	0x2
	.byte	0xc7
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x1c
	.string	"IfxFce_clearCrc16ErrorFlags"
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.byte	0x3
	.uaword	0x1e9e
	.uleb128 0x1d
	.string	"fce"
	.byte	0x2
	.byte	0xb4
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x1c
	.string	"IfxFce_clearCrc32ErrorFlags"
	.byte	0x2
	.byte	0xba
	.byte	0x1
	.byte	0x3
	.uaword	0x1eda
	.uleb128 0x1d
	.string	"fce"
	.byte	0x2
	.byte	0xba
	.uaword	0x1bf5
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x2
	.byte	0xba
	.uaword	0x1aea
	.byte	0
	.uleb128 0x1c
	.string	"IfxFce_enableModule"
	.byte	0x2
	.byte	0xd6
	.byte	0x1
	.byte	0x3
	.uaword	0x1f0e
	.uleb128 0x1d
	.string	"fce"
	.byte	0x2
	.byte	0xd6
	.uaword	0x1bf5
	.uleb128 0x20
	.uaword	.LASF17
	.byte	0x2
	.byte	0xd8
	.uaword	0x1dc
	.byte	0
	.uleb128 0x1c
	.string	"IfxSrc_init"
	.byte	0x3
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x1f53
	.uleb128 0x1d
	.string	"src"
	.byte	0x3
	.byte	0xfe
	.uaword	0x1e04
	.uleb128 0x1d
	.string	"typOfService"
	.byte	0x3
	.byte	0xfe
	.uaword	0x1932
	.uleb128 0x1d
	.string	"priority"
	.byte	0x3
	.byte	0xfe
	.uaword	0x278
	.byte	0
	.uleb128 0x1c
	.string	"IfxSrc_enable"
	.byte	0x3
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x1f76
	.uleb128 0x1d
	.string	"src"
	.byte	0x3
	.byte	0xf8
	.uaword	0x1e04
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxFce_Crc_calculateCrc16"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	0x1dc
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2019
	.uleb128 0x22
	.string	"fce"
	.byte	0x1
	.byte	0x24
	.uaword	0x2019
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x1
	.byte	0x24
	.uaword	0x201f
	.uaword	.LLST0
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0x24
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.byte	0x24
	.uaword	0x1dc
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x26
	.uaword	0x1bf5
	.byte	0x1
	.byte	0x62
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x1
	.byte	0x27
	.uaword	0x20e
	.uaword	.LLST1
	.uleb128 0x26
	.uaword	.LASF14
	.byte	0x1
	.byte	0x28
	.uaword	0x1dc
	.uaword	.LLST2
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x29
	.uaword	0x202a
	.uaword	.LLST3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1cb0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2025
	.uleb128 0x27
	.uaword	0x1dc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1dc
	.uleb128 0x21
	.byte	0x1
	.string	"IfxFce_Crc_calculateCrc32"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x20e4
	.uleb128 0x22
	.string	"fce"
	.byte	0x1
	.byte	0x40
	.uaword	0x2019
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x1
	.byte	0x40
	.uaword	0x20e4
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0x40
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.byte	0x40
	.uaword	0x20e
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x42
	.uaword	0x1bf5
	.byte	0x1
	.byte	0x62
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x1
	.byte	0x43
	.uaword	0x20e
	.uaword	.LLST5
	.uleb128 0x26
	.uaword	.LASF14
	.byte	0x1
	.byte	0x44
	.uaword	0x20e
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x45
	.uaword	0x20ef
	.uaword	.LLST7
	.uleb128 0x28
	.string	"inPtr"
	.byte	0x1
	.byte	0x46
	.uaword	0x20f5
	.uaword	.LLST8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20ea
	.uleb128 0x27
	.uaword	0x20e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20fb
	.uleb128 0x15
	.uaword	0x20e
	.uleb128 0x21
	.byte	0x1
	.string	"IfxFce_Crc_calculateCrc8"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x1b1
	.uaword	.LFB232
	.uaword	.LFE232
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x21a2
	.uleb128 0x22
	.string	"fce"
	.byte	0x1
	.byte	0x72
	.uaword	0x2019
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x1
	.byte	0x72
	.uaword	0x21a2
	.uaword	.LLST9
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0x72
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.byte	0x72
	.uaword	0x1b1
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x74
	.uaword	0x1bf5
	.byte	0x1
	.byte	0x62
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x1
	.byte	0x75
	.uaword	0x20e
	.uaword	.LLST10
	.uleb128 0x26
	.uaword	.LASF14
	.byte	0x1
	.byte	0x76
	.uaword	0x1b1
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x77
	.uaword	0x21ad
	.uaword	.LLST12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21a8
	.uleb128 0x27
	.uaword	0x1b1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1b1
	.uleb128 0x29
	.byte	0x1
	.string	"IfxFce_Crc_clearErrorFlags"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	.LFB233
	.uaword	.LFE233
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x224c
	.uleb128 0x22
	.string	"fce"
	.byte	0x1
	.byte	0x8f
	.uaword	0x2019
	.byte	0x1
	.byte	0x64
	.uleb128 0x2a
	.uaword	0x1e9e
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9b
	.uaword	0x2215
	.uleb128 0x2b
	.uaword	0x1ece
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	0x1ec3
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2c
	.uaword	0x1e3d
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x93
	.uaword	0x2232
	.uleb128 0x2b
	.uaword	0x1e61
	.uaword	.LLST15
	.byte	0
	.uleb128 0x2d
	.uaword	0x1e6d
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x97
	.uleb128 0x2b
	.uaword	0x1e92
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxFce_Crc_deInitModule"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.uaword	.LFB234
	.uaword	.LFE234
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2292
	.uleb128 0x2e
	.string	"fce"
	.byte	0x1
	.byte	0xa0
	.uaword	0x2019
	.uaword	.LLST17
	.uleb128 0x2f
	.uaword	.LVL36
	.byte	0x1
	.uaword	0x25f4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxFce_Crc_getInterruptStatus"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	0x1557
	.uaword	.LFB235
	.uaword	.LFE235
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x22f6
	.uleb128 0x2e
	.string	"fce"
	.byte	0x1
	.byte	0xa6
	.uaword	0x2019
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	.LVL39
	.byte	0x1
	.uaword	0x2617
	.uleb128 0x2f
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x264f
	.uleb128 0x2f
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x2681
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxFce_Crc_initCrc"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	.LFB236
	.uaword	.LFE236
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x23db
	.uleb128 0x2e
	.string	"fceCrc"
	.byte	0x1
	.byte	0xb7
	.uaword	0x2019
	.uaword	.LLST19
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x1
	.byte	0xb7
	.uaword	0x23db
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0xba
	.uaword	0x1bf5
	.byte	0x1
	.byte	0x6d
	.uleb128 0x26
	.uaword	.LASF17
	.byte	0x1
	.byte	0xbf
	.uaword	0x1dc
	.uaword	.LLST21
	.uleb128 0x28
	.string	"tempCFG"
	.byte	0x1
	.byte	0xc2
	.uaword	0xf69
	.uaword	.LLST22
	.uleb128 0x30
	.uaword	.LVL44
	.uaword	0x26b4
	.uleb128 0x31
	.uaword	.LVL46
	.uaword	0x26e0
	.uaword	0x238a
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL49
	.byte	0x1
	.uaword	0x270a
	.uaword	0x239f
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL50
	.byte	0x1
	.uaword	0x270a
	.uaword	0x23b4
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x270a
	.uaword	0x23c9
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL52
	.byte	0x1
	.uaword	0x270a
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23e1
	.uleb128 0x27
	.uaword	0x1dbe
	.uleb128 0x29
	.byte	0x1
	.string	"IfxFce_Crc_initCrcConfig"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	.LFB237
	.uaword	.LFE237
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x242e
	.uleb128 0x24
	.uaword	.LASF16
	.byte	0x1
	.byte	0xe8
	.uaword	0x242e
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.string	"fce"
	.byte	0x1
	.byte	0xe8
	.uaword	0x2434
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1dbe
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1bfb
	.uleb128 0x29
	.byte	0x1
	.string	"IfxFce_Crc_initModule"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2560
	.uleb128 0x2e
	.string	"fce"
	.byte	0x1
	.byte	0xf8
	.uaword	0x2434
	.uaword	.LLST23
	.uleb128 0x2e
	.string	"config"
	.byte	0x1
	.byte	0xf8
	.uaword	0x2560
	.uaword	.LLST24
	.uleb128 0x26
	.uaword	.LASF12
	.byte	0x1
	.byte	0xfb
	.uaword	0x1bf5
	.uaword	.LLST25
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.byte	0xff
	.uaword	0x1e04
	.uleb128 0x2a
	.uaword	0x1eda
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xfd
	.uaword	0x24f8
	.uleb128 0x2b
	.uaword	0x1ef7
	.uaword	.LLST25
	.uleb128 0x36
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x37
	.uaword	0x1f02
	.uaword	.LLST27
	.uleb128 0x30
	.uaword	.LVL56
	.uaword	0x26b4
	.uleb128 0x31
	.uaword	.LVL58
	.uaword	0x26e0
	.uaword	0x24e6
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL60
	.uaword	0x270a
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x1f0e
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x100
	.uaword	0x2544
	.uleb128 0x2b
	.uaword	0x1f42
	.uaword	.LLST28
	.uleb128 0x2b
	.uaword	0x1f2e
	.uaword	.LLST29
	.uleb128 0x3a
	.uaword	0x1f23
	.sleb128 -268204880
	.uleb128 0x3b
	.uaword	0x1ddb
	.uaword	.LBB33
	.uaword	.LBE33
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x3a
	.uaword	0x1df8
	.sleb128 -268204880
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x1f53
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x101
	.uleb128 0x3a
	.uaword	0x1f6a
	.sleb128 -268204880
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2566
	.uleb128 0x27
	.uaword	0x1c54
	.uleb128 0x3c
	.byte	0x1
	.string	"IfxFce_Crc_initModuleConfig"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x25bc
	.uleb128 0x3d
	.string	"config"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x25bc
	.byte	0x1
	.byte	0x64
	.uleb128 0x3d
	.string	"fce"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1bf5
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c54
	.uleb128 0x8
	.uaword	0x2b2
	.uaword	0x25d2
	.uleb128 0x9
	.uaword	0x2dc
	.byte	0x2
	.byte	0
	.uleb128 0x3e
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xb
	.byte	0x96
	.uaword	0x25ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.uaword	0x25c2
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxFce_resetModule"
	.byte	0x2
	.byte	0x64
	.byte	0x1
	.byte	0x1
	.uaword	0x2617
	.uleb128 0x40
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IfxFce_getCrc32InterruptStatus"
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.uaword	0x1557
	.byte	0x1
	.uaword	0x264f
	.uleb128 0x40
	.uaword	0x1bf5
	.uleb128 0x40
	.uaword	0x1aea
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IfxFce_getCrc8InterruptStatus"
	.byte	0x2
	.byte	0xac
	.byte	0x1
	.uaword	0x1557
	.byte	0x1
	.uaword	0x2681
	.uleb128 0x40
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IfxFce_getCrc16InterruptStatus"
	.byte	0x2
	.byte	0x9f
	.byte	0x1
	.uaword	0x1557
	.byte	0x1
	.uaword	0x26b4
	.uleb128 0x40
	.uaword	0x1bf5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xa
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x1dc
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xa
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x270a
	.uleb128 0x40
	.uaword	0x1dc
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xa
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x1dc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3
	.uaword	.LFE230
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE230
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16
	.uaword	.LFE231
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL15
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21
	.uaword	.LFE232
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35
	.uaword	.LFE234
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44-1
	.uaword	.LFE236
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL44-1
	.uaword	.LFE236
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46-1
	.uaword	.LFE236
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL48
	.uaword	.LFE236
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56-1
	.uaword	.LFE238
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56-1
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58-1
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x8c
	.sleb128 6
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	.LFB232
	.uaword	.LFE232
	.uaword	.LFB233
	.uaword	.LFE233
	.uaword	.LFB234
	.uaword	.LFE234
	.uaword	.LFB235
	.uaword	.LFE235
	.uaword	.LFB236
	.uaword	.LFE236
	.uaword	.LFB237
	.uaword	.LFE237
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"crcStartValue"
.LASF5:
	.string	"LENGTH"
.LASF9:
	.string	"crcData"
.LASF7:
	.string	"expectedCrc"
.LASF10:
	.string	"crcDataLength"
.LASF13:
	.string	"inputDataCounter"
.LASF12:
	.string	"fceSFR"
.LASF15:
	.string	"dataPtr"
.LASF1:
	.string	"CHECK"
.LASF4:
	.string	"reserved_1"
.LASF0:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_4"
.LASF3:
	.string	"reserved_8"
.LASF16:
	.string	"crcConfig"
.LASF14:
	.string	"crcResultValue"
.LASF8:
	.string	"crc32Kernel"
.LASF2:
	.string	"reserved_16"
.LASF17:
	.string	"password"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxFce_getCrc16InterruptStatus,STT_FUNC,0
	.extern	IfxFce_getCrc8InterruptStatus,STT_FUNC,0
	.extern	IfxFce_getCrc32InterruptStatus,STT_FUNC,0
	.extern	IfxFce_resetModule,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
