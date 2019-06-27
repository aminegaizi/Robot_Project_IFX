	.file	"IfxEbu_BFlashSpansion.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEbu_BFlashSpansion_cmdSetBurstConfig,"ax",@progbits
	.align 1
	.global	IfxEbu_BFlashSpansion_cmdSetBurstConfig
	.type	IfxEbu_BFlashSpansion_cmdSetBurstConfig, @function
IfxEbu_BFlashSpansion_cmdSetBurstConfig:
.LFB215:
	.file 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Ebu/BFlashSpansion/IfxEbu_BFlashSpansion.c"
	.loc 1 36 0
.LVL0:
	.loc 1 41 0
	movh	%d2, 170
	.loc 1 37 0
	ld.a	%a15, [%a4] 8
.LVL1:
	.loc 1 41 0
	addi	%d2, %d2, 170
	.loc 1 39 0
	ld.hu	%d15, [%a4] 12
.LVL2:
	.loc 1 41 0
	st.w	[%a15] 5460, %d2
.LVL3:
	.loc 1 42 0
	sh	%d2, -1
	st.w	[%a15] 2728, %d2
	.loc 1 43 0
	movh	%d2, 208
	addi	%d2, %d2, 208
	st.w	[%a15] 5460, %d2
	.loc 1 44 0
	sh	%d2, %d15, 16
	or	%d15, %d2
.LVL4:
	st.w	[%a15] 2728, %d15
	ret
.LFE215:
	.size	IfxEbu_BFlashSpansion_cmdSetBurstConfig, .-IfxEbu_BFlashSpansion_cmdSetBurstConfig
.section .text.IfxEbu_BFlashSpansion_eraseBlock,"ax",@progbits
	.align 1
	.global	IfxEbu_BFlashSpansion_eraseBlock
	.type	IfxEbu_BFlashSpansion_eraseBlock, @function
IfxEbu_BFlashSpansion_eraseBlock:
.LFB216:
	.loc 1 49 0
.LVL5:
	.loc 1 55 0
	movh	%d2, 170
	.loc 1 50 0
	ld.a	%a15, [%a4] 8
.LVL6:
	.loc 1 55 0
	addi	%d2, %d2, 170
	.loc 1 56 0
	sh	%d15, %d2, -1
	.loc 1 57 0
	movh	%d3, 128
	addi	%d3, %d3, 128
	.loc 1 55 0
	st.w	[%a15] 5460, %d2
	.loc 1 56 0
	st.w	[%a15] 2728, %d15
	.loc 1 57 0
	st.w	[%a15] 5460, %d3
	.loc 1 58 0
	st.w	[%a15] 5460, %d2
	.loc 1 59 0
	st.w	[%a15] 2728, %d15
	.loc 1 60 0
	sh	%d15, %d3, -3
	st.w	[%a15] 5460, %d15
.LVL7:
.LBB23:
.LBB24:
	.loc 1 302 0
	ld.a	%a15, [%a4] 8
.LVL8:
.LBB25:
.LBB26:
	.file 2 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1382 0
#APP
	# 1382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L3:
.LBE26:
.LBE25:
	.loc 1 312 0
	ld.w	%d2, [%a15]0
.LVL9:
	.loc 1 313 0
	ld.w	%d15, [%a15]0
.LVL10:
	.loc 1 314 0
	jne	%d2, %d15, .L3
.LBE24:
.LBE23:
	.loc 1 63 0
	ret
.LFE216:
	.size	IfxEbu_BFlashSpansion_eraseBlock, .-IfxEbu_BFlashSpansion_eraseBlock
.section .text.IfxEbu_BFlashSpansion_initMemory,"ax",@progbits
	.align 1
	.global	IfxEbu_BFlashSpansion_initMemory
	.type	IfxEbu_BFlashSpansion_initMemory, @function
IfxEbu_BFlashSpansion_initMemory:
.LFB217:
	.loc 1 67 0
.LVL11:
	.loc 1 68 0
	ld.a	%a12, [%a5]0
.LVL12:
	.loc 1 70 0
	ld.bu	%d15, [%a5] 5
	.loc 1 71 0
	ld.w	%d3, [%a5] 64
	st.w	[%a4] 8, %d3
	.loc 1 70 0
	st.b	[%a4] 4, %d15
	.loc 1 69 0
	st.a	[%a4]0, %a12
	.loc 1 67 0
	mov.aa	%a15, %a5
	mov.aa	%a13, %a4
.LBB27:
	.loc 1 74 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL13:
	.loc 1 75 0
	mov	%d4, %d2
	.loc 1 74 0
	mov	%d15, %d2
.LVL14:
	.loc 1 75 0
	call	IfxScuWdt_clearCpuEndinit
.LVL15:
	.loc 1 77 0
	ld.bu	%d4, [%a15] 4
	mov.aa	%a4, %a12
	call	IfxEbu_setExternalClockRatio
.LVL16:
	.loc 1 79 0
	mov	%d4, %d15
	call	IfxScuWdt_setCpuEndinit
.LVL17:
.LBE27:
.LBB28:
	.loc 1 86 0
	ld.bu	%d2, [%a15] 56
	.loc 1 85 0
	mov	%d15, 0
.LVL18:
	.loc 1 86 0
	ins.t	%d15, %d15,0, %d2,0
.LVL19:
	.loc 1 87 0
	ld.bu	%d2, [%a15] 57
	ins.t	%d15, %d15,1, %d2,0
	.loc 1 88 0
	ld.bu	%d2, [%a15] 58
	ins.t	%d15, %d15,2, %d2,0
	.loc 1 89 0
	ld.bu	%d2, [%a15] 59
	ins.t	%d15, %d15,3, %d2,0
	.loc 1 90 0
	ld.bu	%d2, [%a15] 60
	insert	%d15, %d15, %d2, 4, 4
	.loc 1 91 0
	ld.bu	%d2, [%a15] 61
	insert	%d15, %d15, %d2, 8, 4
	.loc 1 92 0
	ld.w	%d2, [%a15] 64
	insert	%d15, %d2, %d15, 0, 12
	.loc 1 94 0
	ld.bu	%d2, [%a15] 5
	add	%d2, 6
	addsc.a	%a2, %a12, %d2, 2
	st.w	[%a2]0, %d15
.LBE28:
	.loc 1 100 0
	ld.bu	%d15, [%a15] 32
.LVL20:
	jz	%d15, .L10
.LBB29:
	.loc 1 131 0
	ld.bu	%d2, [%a15] 16
	.loc 1 130 0
	mov	%d15, 0
.LVL21:
	.loc 1 131 0
	insert	%d15, %d15, %d2, 0, 3
.LVL22:
	.loc 1 132 0
	ld.bu	%d2, [%a15] 13
	ins.t	%d15, %d15,5, %d2,0
	.loc 1 133 0
	ld.bu	%d2, [%a15] 14
	ins.t	%d15, %d15,6, %d2,0
	.loc 1 134 0
	ld.bu	%d2, [%a15] 12
	ins.t	%d15, %d15,16, %d2,0
	.loc 1 135 0
	ld.bu	%d2, [%a15] 11
	ins.t	%d15, %d15,17, %d2,0
	.loc 1 136 0
	ld.bu	%d2, [%a15] 8
	insert	%d15, %d15, %d2, 22, 2
	.loc 1 137 0
	ld.bu	%d2, [%a15] 6
	insert	%d15, %d15, %d2, 28, 4
	.loc 1 138 0
	ld.bu	%d2, [%a15] 5
	addsc.a	%a2, %a12, %d2, 3
	addsc.a	%a2, %a2, %d2, 3
	st.w	[%a2] 40, %d15
.LBE29:
.LBB30:
	.loc 1 145 0
	ld.bu	%d5, [%a15] 32
	ld.bu	%d4, [%a15] 28
	addi	%d3, %d5, 1
	and	%d2, %d3, 15
	and	%d4, %d4, 15
	mul	%d4, %d2
	.loc 1 144 0
	mov	%d15, 0
.LVL23:
	.loc 1 145 0
	insert	%d15, %d15, %d4, 28, 4
.LVL24:
	.loc 1 146 0
	ld.bu	%d4, [%a15] 29
	and	%d4, %d4, 15
	mul	%d4, %d2
	insert	%d15, %d15, %d4, 24, 4
	.loc 1 147 0
	ld.bu	%d4, [%a15] 30
	and	%d4, %d4, 15
	mul	%d4, %d2
	insert	%d15, %d15, %d4, 20, 4
	.loc 1 149 0
	ld.bu	%d4, [%a15] 33
	.loc 1 148 0
	insert	%d15, %d15, %d5, 16, 2
	.loc 1 149 0
	and	%d4, %d4, 15
	mul	%d4, %d2
	insert	%d15, %d15, %d4, 12, 4
	.loc 1 150 0
	ld.bu	%d4, [%a15] 34
	and	%d4, %d4, 31
	mul	%d4, %d3
	insert	%d15, %d15, %d4, 7, 5
	.loc 1 151 0
	ld.bu	%d4, [%a15] 35
	and	%d4, %d4, 7
	mul	%d3, %d4
	insert	%d15, %d15, %d3, 4, 3
	.loc 1 152 0
	ld.bu	%d3, [%a15] 36
	and	%d3, %d3, 15
	mul	%d2, %d3
.LVL25:
.L9:
	insert	%d15, %d15, %d2, 0, 4
.LVL26:
	.loc 1 154 0
	ld.bu	%d2, [%a15] 5
	addsc.a	%a2, %a12, %d2, 3
	addsc.a	%a2, %a2, %d2, 3
	st.w	[%a2] 44, %d15
.LBE30:
.LBB31:
	.loc 1 163 0
	ld.bu	%d2, [%a15] 26
	.loc 1 162 0
	mov	%d15, 0
.LVL27:
	.loc 1 163 0
	insert	%d15, %d15, %d2, 0, 3
.LVL28:
	.loc 1 164 0
	ld.bu	%d2, [%a15] 20
	insert	%d15, %d15, %d2, 22, 2
	.loc 1 165 0
	ld.bu	%d2, [%a15] 18
	insert	%d15, %d15, %d2, 28, 4
	.loc 1 166 0
	ld.bu	%d2, [%a15] 5
	add	%d2, 3
	addsc.a	%a2, %a12, %d2, 3
	addsc.a	%a2, %a2, %d2, 3
	st.w	[%a2]0, %d15
.LBE31:
.LBB32:
	.loc 1 172 0
	ld.bu	%d2, [%a15] 38
	.loc 1 171 0
	mov	%d15, 0
.LVL29:
	.loc 1 172 0
	insert	%d15, %d15, %d2, 28, 4
.LVL30:
	.loc 1 173 0
	ld.bu	%d2, [%a15] 39
	insert	%d15, %d15, %d2, 24, 4
	.loc 1 174 0
	ld.bu	%d2, [%a15] 40
	insert	%d15, %d15, %d2, 20, 4
	.loc 1 175 0
	ld.bu	%d2, [%a15] 43
	insert	%d15, %d15, %d2, 12, 4
	.loc 1 176 0
	ld.bu	%d2, [%a15] 44
	insert	%d15, %d15, %d2, 7, 5
	.loc 1 177 0
	ld.bu	%d2, [%a15] 45
	insert	%d15, %d15, %d2, 4, 3
	.loc 1 178 0
	ld.bu	%d2, [%a15] 46
	insert	%d15, %d15, %d2, 0, 4
	.loc 1 180 0
	ld.bu	%d2, [%a15] 5
	addsc.a	%a2, %a12, %d2, 3
	addsc.a	%a2, %a2, %d2, 3
	st.w	[%a2] 52, %d15
.LBE32:
.LBB33:
	.loc 1 188 0
	ld.bu	%d2, [%a15] 52
	.loc 1 187 0
	mov	%d15, 0
.LVL31:
	.loc 1 188 0
	insert	%d15, %d15, %d2, 16, 8
.LVL32:
	.loc 1 189 0
	ld.bu	%d2, [%a15] 49
	insert	%d15, %d15, %d2, 6, 2
	.loc 1 190 0
	ld.bu	%d2, [%a15] 50
	ins.t	%d15, %d15,5, %d2,0
	.loc 1 191 0
	ld.bu	%d2, [%a15] 48
	ins.t	%d15, %d15,31, %d2,0
.LBE33:
.LBB34:
.LBB35:
	.loc 1 41 0
	movh	%d2, 170
	addi	%d2, %d2, 170
.LBE35:
.LBE34:
.LBB38:
	.loc 1 192 0
	st.w	[%a12] 4, %d15
.LBE38:
.LBB39:
.LBB36:
	.loc 1 37 0
	ld.a	%a15, [%a13] 8
.LVL33:
.LBE36:
.LBE39:
	.loc 1 196 0
	ld.w	%d15, [%a12] 4
.LVL34:
.LBB40:
.LBB37:
	.loc 1 39 0
	ld.hu	%d15, [%a13] 12
.LVL35:
	.loc 1 41 0
	st.w	[%a15] 5460, %d2
.LVL36:
	.loc 1 42 0
	sh	%d2, -1
	st.w	[%a15] 2728, %d2
	.loc 1 43 0
	movh	%d2, 208
	addi	%d2, %d2, 208
	st.w	[%a15] 5460, %d2
	.loc 1 44 0
	sh	%d2, %d15, 16
	or	%d15, %d2
.LVL37:
	st.w	[%a15] 2728, %d15
	ret
.LVL38:
.L10:
.LBE37:
.LBE40:
.LBB41:
	.loc 1 105 0
	ld.bu	%d2, [%a15] 78
	insert	%d15, %d15, %d2, 0, 3
.LVL39:
	.loc 1 106 0
	ld.bu	%d2, [%a15] 76
	ins.t	%d15, %d15,6, %d2,0
	.loc 1 107 0
	ld.bu	%d2, [%a15] 70
	insert	%d15, %d15, %d2, 22, 2
	.loc 1 108 0
	ld.bu	%d2, [%a15] 68
	insert	%d15, %d15, %d2, 28, 4
	.loc 1 109 0
	ld.bu	%d2, [%a15] 5
	addsc.a	%a2, %a12, %d2, 3
	addsc.a	%a2, %a2, %d2, 3
	st.w	[%a2] 40, %d15
.LBE41:
.LBB42:
	.loc 1 115 0
	ld.bu	%d2, [%a15] 80
	.loc 1 114 0
	mov	%d15, 0
.LVL40:
	.loc 1 115 0
	insert	%d15, %d15, %d2, 28, 4
.LVL41:
	.loc 1 116 0
	ld.bu	%d2, [%a15] 81
	insert	%d15, %d15, %d2, 24, 4
	.loc 1 117 0
	ld.bu	%d2, [%a15] 82
	insert	%d15, %d15, %d2, 20, 4
	.loc 1 118 0
	ld.bu	%d2, [%a15] 85
	insert	%d15, %d15, %d2, 12, 4
	.loc 1 119 0
	ld.bu	%d2, [%a15] 86
	insert	%d15, %d15, %d2, 7, 5
	.loc 1 120 0
	ld.bu	%d2, [%a15] 87
	insert	%d15, %d15, %d2, 4, 3
	.loc 1 121 0
	ld.bu	%d2, [%a15] 88
	j	.L9
.LBE42:
.LFE217:
	.size	IfxEbu_BFlashSpansion_initMemory, .-IfxEbu_BFlashSpansion_initMemory
.section .text.IfxEbu_BFlashSpansion_initMemoryConfig,"ax",@progbits
	.align 1
	.global	IfxEbu_BFlashSpansion_initMemoryConfig
	.type	IfxEbu_BFlashSpansion_initMemoryConfig, @function
IfxEbu_BFlashSpansion_initMemoryConfig:
.LFB218:
	.loc 1 205 0
.LVL42:
	.loc 1 207 0
	mov	%d4, 2
	.loc 1 212 0
	mov	%d15, 1
	.loc 1 211 0
	mov	%d3, 3
	.loc 1 207 0
	st.b	[%a4] 4, %d4
	.loc 1 236 0
	st.b	[%a4] 34, %d4
	.loc 1 241 0
	mov	%d4, 6
	.loc 1 208 0
	mov	%d2, 0
	.loc 1 223 0
	mov	%d5, 4
	.loc 1 241 0
	st.b	[%a4] 80, %d4
	.loc 1 242 0
	st.b	[%a4] 81, %d4
	.loc 1 243 0
	st.b	[%a4] 82, %d4
	.loc 1 245 0
	mov	%d4, 11
	.loc 1 215 0
	mov	%d6, 5
	.loc 1 211 0
	st.b	[%a4] 16, %d3
	.loc 1 245 0
	st.b	[%a4] 86, %d4
	.loc 1 250 0
	mov	%d4, 8
	.loc 1 212 0
	st.b	[%a4] 14, %d15
	.loc 1 213 0
	st.b	[%a4] 13, %d15
	.loc 1 214 0
	st.b	[%a4] 8, %d3
	.loc 1 216 0
	st.b	[%a4] 11, %d15
	.loc 1 217 0
	st.b	[%a4] 12, %d15
	.loc 1 222 0
	st.b	[%a4] 70, %d3
	.loc 1 227 0
	st.b	[%a4] 20, %d3
	.loc 1 231 0
	st.b	[%a4] 28, %d15
	.loc 1 233 0
	st.b	[%a4] 30, %d15
	.loc 1 234 0
	st.b	[%a4] 32, %d3
	.loc 1 237 0
	st.b	[%a4] 35, %d15
	.loc 1 238 0
	st.b	[%a4] 36, %d15
	.loc 1 244 0
	st.b	[%a4] 85, %d3
	.loc 1 246 0
	st.b	[%a4] 87, %d3
	.loc 1 247 0
	st.b	[%a4] 88, %d3
	.loc 1 206 0
	st.a	[%a4]0, %a5
	.loc 1 208 0
	st.b	[%a4] 5, %d2
	.loc 1 215 0
	st.b	[%a4] 6, %d6
	.loc 1 220 0
	st.b	[%a4] 78, %d2
	.loc 1 221 0
	st.b	[%a4] 76, %d2
	.loc 1 223 0
	st.b	[%a4] 68, %d5
	.loc 1 226 0
	st.b	[%a4] 26, %d2
	.loc 1 228 0
	st.b	[%a4] 18, %d5
	.loc 1 232 0
	st.b	[%a4] 29, %d2
	.loc 1 235 0
	st.b	[%a4] 33, %d2
	.loc 1 250 0
	st.b	[%a4] 38, %d4
	.loc 1 251 0
	st.b	[%a4] 39, %d4
	.loc 1 262 0
	st.b	[%a4] 50, %d15
	.loc 1 265 0
	st.b	[%a4] 56, %d15
	.loc 1 266 0
	st.b	[%a4] 57, %d15
	.loc 1 271 0
	movh	%d15, 41984
	.loc 1 260 0
	st.b	[%a4] 49, %d3
	.loc 1 261 0
	mov	%d3, -1
	.loc 1 271 0
	st.w	[%a4] 64, %d15
	.loc 1 274 0
	ld.h	%d15, [%a4] 90
	.loc 1 252 0
	st.b	[%a4] 40, %d4
	.loc 1 275 0
	insert	%d15, %d15, 0, 15, 17
	.loc 1 253 0
	st.b	[%a4] 43, %d4
	.loc 1 275 0
	insert	%d15, %d15, 2, 10, 4
	.loc 1 254 0
	st.b	[%a4] 44, %d4
	.loc 1 276 0
	insert	%d15, %d15, 0, 9, 1
	.loc 1 255 0
	st.b	[%a4] 45, %d5
	.loc 1 277 0
	insert	%d15, %d15, 1, 8, 1
	.loc 1 256 0
	st.b	[%a4] 46, %d5
	.loc 1 278 0
	insert	%d15, %d15, 1, 7, 1
	.loc 1 259 0
	st.b	[%a4] 48, %d2
	.loc 1 279 0
	insert	%d15, %d15, 1, 6, 1
	.loc 1 261 0
	st.b	[%a4] 52, %d3
	.loc 1 280 0
	insert	%d15, %d15, 3, 0, 3
	.loc 1 267 0
	st.b	[%a4] 58, %d2
	.loc 1 268 0
	st.b	[%a4] 59, %d2
	.loc 1 269 0
	st.b	[%a4] 60, %d6
	.loc 1 270 0
	st.b	[%a4] 61, %d4
	.loc 1 280 0
	st.h	[%a4] 90, %d15
	ret
.LFE218:
	.size	IfxEbu_BFlashSpansion_initMemoryConfig, .-IfxEbu_BFlashSpansion_initMemoryConfig
.section .text.IfxEbu_BFlashSpansion_programWord,"ax",@progbits
	.align 1
	.global	IfxEbu_BFlashSpansion_programWord
	.type	IfxEbu_BFlashSpansion_programWord, @function
IfxEbu_BFlashSpansion_programWord:
.LFB219:
	.loc 1 285 0
.LVL43:
	.loc 1 291 0
	movh	%d15, 170
	.loc 1 286 0
	ld.a	%a15, [%a4] 8
.LVL44:
	.loc 1 291 0
	addi	%d15, %d15, 170
	st.w	[%a15] 5460, %d15
	.loc 1 292 0
	sh	%d15, -1
	st.w	[%a15] 2728, %d15
	.loc 1 293 0
	movh	%d15, 160
	addi	%d15, %d15, 160
	st.w	[%a15] 5460, %d15
	.loc 1 294 0
	mov.a	%a15, %d4
.LVL45:
	st.w	[%a15]0, %d5
.LVL46:
.LBB43:
.LBB44:
	.loc 1 302 0
	ld.a	%a15, [%a4] 8
.LVL47:
.LBB45:
.LBB46:
	.loc 2 1382 0
#APP
	# 1382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L13:
.LBE46:
.LBE45:
	.loc 1 312 0
	ld.w	%d2, [%a15]0
.LVL48:
	.loc 1 313 0
	ld.w	%d15, [%a15]0
.LVL49:
	.loc 1 314 0
	jne	%d2, %d15, .L13
.LBE44:
.LBE43:
	.loc 1 297 0
	ret
.LFE219:
	.size	IfxEbu_BFlashSpansion_programWord, .-IfxEbu_BFlashSpansion_programWord
.section .text.IfxEbu_BFlashSpansion_waitForReady,"ax",@progbits
	.align 1
	.global	IfxEbu_BFlashSpansion_waitForReady
	.type	IfxEbu_BFlashSpansion_waitForReady, @function
IfxEbu_BFlashSpansion_waitForReady:
.LFB220:
	.loc 1 301 0
.LVL50:
	.loc 1 302 0
	ld.a	%a15, [%a4] 8
.LVL51:
.LBB47:
.LBB48:
	.loc 2 1382 0
#APP
	# 1382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L16:
.LBE48:
.LBE47:
	.loc 1 312 0 discriminator 1
	ld.w	%d2, [%a15]0
.LVL52:
	.loc 1 313 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL53:
	.loc 1 314 0 discriminator 1
	jne	%d2, %d15, .L16
	.loc 1 317 0
	mov	%d2, 1
.LVL54:
	ret
.LFE220:
	.size	IfxEbu_BFlashSpansion_waitForReady, .-IfxEbu_BFlashSpansion_waitForReady
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
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
	.file 5 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxEbu_regdef.h"
	.file 6 "0_Src/BaseSw/iLLD/TC29B/Tricore/Ebu/Std/IfxEbu.h"
	.file 7 "0_Src/BaseSw/iLLD/TC29B/Tricore/Ebu/BFlashSpansion/IfxEbu_BFlashSpansion.h"
	.file 8 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
	.file 9 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2e62
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC29B/Tricore/Ebu/BFlashSpansion/IfxEbu_BFlashSpansion.c"
	.string	"C:\\\\Robot_Project_Handover\\\\Beeper_Song"
	.uaword	.Ldebug_ranges0+0x38
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
	.byte	0x3
	.byte	0x59
	.uaword	0x1cc
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
	.uaword	0x1f8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0x188
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0x194
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
	.byte	0x3
	.byte	0x68
	.uaword	0x1cc
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
	.uaword	0x285
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x7d
	.uaword	0x2ac
	.uleb128 0x7
	.string	"module"
	.byte	0x4
	.byte	0x7f
	.uaword	0x27f
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x4
	.byte	0x80
	.uaword	0x20e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x4
	.byte	0x81
	.uaword	0x286
	.uleb128 0x8
	.string	"_Ifx_EBU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.uaword	0x4da
	.uleb128 0x9
	.string	"EN0"
	.byte	0x5
	.byte	0x2f
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x5
	.byte	0x30
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"EN2"
	.byte	0x5
	.byte	0x31
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EN3"
	.byte	0x5
	.byte	0x32
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EN4"
	.byte	0x5
	.byte	0x33
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"EN5"
	.byte	0x5
	.byte	0x34
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"EN6"
	.byte	0x5
	.byte	0x35
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"EN7"
	.byte	0x5
	.byte	0x36
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EN8"
	.byte	0x5
	.byte	0x37
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"EN9"
	.byte	0x5
	.byte	0x38
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"EN10"
	.byte	0x5
	.byte	0x39
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"EN11"
	.byte	0x5
	.byte	0x3a
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"EN12"
	.byte	0x5
	.byte	0x3b
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"EN13"
	.byte	0x5
	.byte	0x3c
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"EN14"
	.byte	0x5
	.byte	0x3d
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"EN15"
	.byte	0x5
	.byte	0x3e
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"EN16"
	.byte	0x5
	.byte	0x3f
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EN17"
	.byte	0x5
	.byte	0x40
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EN18"
	.byte	0x5
	.byte	0x41
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"EN19"
	.byte	0x5
	.byte	0x42
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"EN20"
	.byte	0x5
	.byte	0x43
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"EN21"
	.byte	0x5
	.byte	0x44
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"EN22"
	.byte	0x5
	.byte	0x45
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"EN23"
	.byte	0x5
	.byte	0x46
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"EN24"
	.byte	0x5
	.byte	0x47
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"EN25"
	.byte	0x5
	.byte	0x48
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"EN26"
	.byte	0x5
	.byte	0x49
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"EN27"
	.byte	0x5
	.byte	0x4a
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"EN28"
	.byte	0x5
	.byte	0x4b
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"EN29"
	.byte	0x5
	.byte	0x4c
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"EN30"
	.byte	0x5
	.byte	0x4d
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"EN31"
	.byte	0x5
	.byte	0x4e
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x4df
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_EBU_ACCEN0_Bits"
	.byte	0x5
	.byte	0x4f
	.uaword	0x2c6
	.uleb128 0x8
	.string	"_Ifx_EBU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x52
	.uaword	0x53e
	.uleb128 0x9
	.string	"reserved_0"
	.byte	0x5
	.byte	0x54
	.uaword	0x4da
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_ACCEN1_Bits"
	.byte	0x5
	.byte	0x55
	.uaword	0x50a
	.uleb128 0x8
	.string	"_Ifx_EBU_ADDRSEL_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x58
	.uaword	0x5f5
	.uleb128 0x9
	.string	"REGENAB"
	.byte	0x5
	.byte	0x5a
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"ALTENAB"
	.byte	0x5
	.byte	0x5b
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"WPROT"
	.byte	0x5
	.byte	0x5c
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"GLOBALCS"
	.byte	0x5
	.byte	0x5d
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"MASK"
	.byte	0x5
	.byte	0x5e
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"ALTSEG"
	.byte	0x5
	.byte	0x5f
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"BASE"
	.byte	0x5
	.byte	0x60
	.uaword	0x4da
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_ADDRSEL_Bits"
	.byte	0x5
	.byte	0x61
	.uaword	0x559
	.uleb128 0x8
	.string	"_Ifx_EBU_BUSRAP_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x64
	.uaword	0x6ce
	.uleb128 0x9
	.string	"RDDTACS"
	.byte	0x5
	.byte	0x66
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"RDRECOVC"
	.byte	0x5
	.byte	0x67
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"WAITRDC"
	.byte	0x5
	.byte	0x68
	.uaword	0x4da
	.byte	0x4
	.byte	0x5
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"DATAC"
	.byte	0x5
	.byte	0x69
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x5
	.byte	0x6a
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EXTDATA"
	.byte	0x5
	.byte	0x6b
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x5
	.byte	0x6c
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"AHOLDC"
	.byte	0x5
	.byte	0x6d
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"ADDRC"
	.byte	0x5
	.byte	0x6e
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_BUSRAP_Bits"
	.byte	0x5
	.byte	0x6f
	.uaword	0x611
	.uleb128 0x8
	.string	"_Ifx_EBU_BUSRCON_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x72
	.uaword	0x82c
	.uleb128 0x9
	.string	"FETBLEN"
	.byte	0x5
	.byte	0x74
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"FBBMSEL"
	.byte	0x5
	.byte	0x75
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"RESERVED"
	.byte	0x5
	.byte	0x76
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FDBKEN"
	.byte	0x5
	.byte	0x77
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"BFCMSEL"
	.byte	0x5
	.byte	0x78
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"NAA"
	.byte	0x5
	.byte	0x79
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"RES1"
	.byte	0x5
	.byte	0x7a
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"ECSE"
	.byte	0x5
	.byte	0x7b
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EBSE"
	.byte	0x5
	.byte	0x7c
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"DBA"
	.byte	0x5
	.byte	0x7d
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"WAITINV"
	.byte	0x5
	.byte	0x7e
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"BCGEN"
	.byte	0x5
	.byte	0x7f
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PORTW"
	.byte	0x5
	.byte	0x80
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"WAIT"
	.byte	0x5
	.byte	0x81
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"AAP"
	.byte	0x5
	.byte	0x82
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"LCKABRT"
	.byte	0x5
	.byte	0x83
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"AGEN"
	.byte	0x5
	.byte	0x84
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_BUSRCON_Bits"
	.byte	0x5
	.byte	0x85
	.uaword	0x6e9
	.uleb128 0x8
	.string	"_Ifx_EBU_BUSWAP_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x88
	.uaword	0x905
	.uleb128 0x9
	.string	"WRDTACS"
	.byte	0x5
	.byte	0x8a
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"WRRECOVC"
	.byte	0x5
	.byte	0x8b
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"WAITWRC"
	.byte	0x5
	.byte	0x8c
	.uaword	0x4da
	.byte	0x4
	.byte	0x5
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"DATAC"
	.byte	0x5
	.byte	0x8d
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x5
	.byte	0x8e
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EXTDATA"
	.byte	0x5
	.byte	0x8f
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x5
	.byte	0x90
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"AHOLDC"
	.byte	0x5
	.byte	0x91
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"ADDRC"
	.byte	0x5
	.byte	0x92
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_BUSWAP_Bits"
	.byte	0x5
	.byte	0x93
	.uaword	0x848
	.uleb128 0x8
	.string	"_Ifx_EBU_BUSWCON_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x96
	.uaword	0xa39
	.uleb128 0x9
	.string	"FETBLEN"
	.byte	0x5
	.byte	0x98
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"FBBMSEL"
	.byte	0x5
	.byte	0x99
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"RES"
	.byte	0x5
	.byte	0x9a
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"NAA"
	.byte	0x5
	.byte	0x9b
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"RES0"
	.byte	0x5
	.byte	0x9c
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"ECSE"
	.byte	0x5
	.byte	0x9d
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EBSE"
	.byte	0x5
	.byte	0x9e
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"RES1"
	.byte	0x5
	.byte	0x9f
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"WAITINV"
	.byte	0x5
	.byte	0xa0
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"BCGEN"
	.byte	0x5
	.byte	0xa1
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PORTW"
	.byte	0x5
	.byte	0xa2
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"WAIT"
	.byte	0x5
	.byte	0xa3
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"AAP"
	.byte	0x5
	.byte	0xa4
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"LOCKCS"
	.byte	0x5
	.byte	0xa5
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"AGEN"
	.byte	0x5
	.byte	0xa6
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_BUSWCON_Bits"
	.byte	0x5
	.byte	0xa7
	.uaword	0x920
	.uleb128 0x8
	.string	"_Ifx_EBU_CLC_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xaa
	.uaword	0xb40
	.uleb128 0x9
	.string	"DISR"
	.byte	0x5
	.byte	0xac
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"DISS"
	.byte	0x5
	.byte	0xad
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x5
	.byte	0xae
	.uaword	0x4da
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EPE"
	.byte	0x5
	.byte	0xaf
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"reserved_9"
	.byte	0x5
	.byte	0xb0
	.uaword	0x4da
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"SYNC"
	.byte	0x5
	.byte	0xb1
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"DIV2"
	.byte	0x5
	.byte	0xb2
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EBUDIV"
	.byte	0x5
	.byte	0xb3
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"SYNCACK"
	.byte	0x5
	.byte	0xb4
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"DIV2ACK"
	.byte	0x5
	.byte	0xb5
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"EBUDIVACK"
	.byte	0x5
	.byte	0xb6
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x5
	.byte	0xb7
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_CLC_Bits"
	.byte	0x5
	.byte	0xb8
	.uaword	0xa55
	.uleb128 0x8
	.string	"_Ifx_EBU_EXTBOOT_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xbb
	.uaword	0xbbc
	.uleb128 0x9
	.string	"CFGEND"
	.byte	0x5
	.byte	0xbd
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"CFGERR"
	.byte	0x5
	.byte	0xbe
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x5
	.byte	0xbf
	.uaword	0x4da
	.byte	0x4
	.byte	0x1d
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"EBUCFG"
	.byte	0x5
	.byte	0xc0
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_EXTBOOT_Bits"
	.byte	0x5
	.byte	0xc1
	.uaword	0xb58
	.uleb128 0x8
	.string	"_Ifx_EBU_ID_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xc4
	.uaword	0xc06
	.uleb128 0x9
	.string	"ID_VALUE"
	.byte	0x5
	.byte	0xc6
	.uaword	0x4da
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_ID_Bits"
	.byte	0x5
	.byte	0xc7
	.uaword	0xbd8
	.uleb128 0x8
	.string	"_Ifx_EBU_MODCON_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xca
	.uaword	0xd64
	.uleb128 0x9
	.string	"STS"
	.byte	0x5
	.byte	0xcc
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"LCKABRT"
	.byte	0x5
	.byte	0xcd
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"SDTRI"
	.byte	0x5
	.byte	0xce
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"CLK_COMB"
	.byte	0x5
	.byte	0xcf
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EXTLOCK"
	.byte	0x5
	.byte	0xd0
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"ARBSYNC"
	.byte	0x5
	.byte	0xd1
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"ARBMODE"
	.byte	0x5
	.byte	0xd2
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"TIMEOUTC"
	.byte	0x5
	.byte	0xd3
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"LOCKTIMEOUT"
	.byte	0x5
	.byte	0xd4
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"FIFO_BYPASS"
	.byte	0x5
	.byte	0xd5
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"FAST_SRI"
	.byte	0x5
	.byte	0xd6
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"OCDS_SUSP_DIS"
	.byte	0x5
	.byte	0xd7
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"reserved_27"
	.byte	0x5
	.byte	0xd8
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"BUSSTATE"
	.byte	0x5
	.byte	0xd9
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"ALE"
	.byte	0x5
	.byte	0xda
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_MODCON_Bits"
	.byte	0x5
	.byte	0xdb
	.uaword	0xc1d
	.uleb128 0x8
	.string	"_Ifx_EBU_SDR_CON_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xde
	.uaword	0xe70
	.uleb128 0x9
	.string	"CRAS"
	.byte	0x5
	.byte	0xe0
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"CRFSH"
	.byte	0x5
	.byte	0xe1
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"CRSC"
	.byte	0x5
	.byte	0xe2
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"CRP"
	.byte	0x5
	.byte	0xe3
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"AWIDTH"
	.byte	0x5
	.byte	0xe4
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"CRCD"
	.byte	0x5
	.byte	0xe5
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"CRC"
	.byte	0x5
	.byte	0xe6
	.uaword	0x4da
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"BANKM"
	.byte	0x5
	.byte	0xe7
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"reserved_25"
	.byte	0x5
	.byte	0xe8
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"CLKDIS"
	.byte	0x5
	.byte	0xe9
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PWR_MODE"
	.byte	0x5
	.byte	0xea
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"SDCMSEL"
	.byte	0x5
	.byte	0xeb
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_SDR_CON_Bits"
	.byte	0x5
	.byte	0xec
	.uaword	0xd7f
	.uleb128 0x8
	.string	"_Ifx_EBU_SDR_MOD_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xef
	.uaword	0xf34
	.uleb128 0x9
	.string	"BURSTL"
	.byte	0x5
	.byte	0xf1
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"BTYP"
	.byte	0x5
	.byte	0xf2
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"CASLAT"
	.byte	0x5
	.byte	0xf3
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"OPMODE"
	.byte	0x5
	.byte	0xf4
	.uaword	0x4da
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x5
	.byte	0xf5
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"COLDSTART"
	.byte	0x5
	.byte	0xf6
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"XOPM"
	.byte	0x5
	.byte	0xf7
	.uaword	0x4da
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"XBA"
	.byte	0x5
	.byte	0xf8
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EBU_SDR_MOD_Bits"
	.byte	0x5
	.byte	0xf9
	.uaword	0xe8c
	.uleb128 0x8
	.string	"_Ifx_EBU_SDR_REF_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xfc
	.uaword	0x106a
	.uleb128 0x9
	.string	"REFRESHC"
	.byte	0x5
	.byte	0xfe
	.uaword	0x4da
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REFRESHR"
	.byte	0x5
	.byte	0xff
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"SELFREXST"
	.byte	0x5
	.uahalf	0x100
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"SELFREX"
	.byte	0x5
	.uahalf	0x101
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"SELFRENST"
	.byte	0x5
	.uahalf	0x102
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"SELFREN"
	.byte	0x5
	.uahalf	0x103
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"AUTOSELFR"
	.byte	0x5
	.uahalf	0x104
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"ERFSHC"
	.byte	0x5
	.uahalf	0x105
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"SELFREX_DLY"
	.byte	0x5
	.uahalf	0x106
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"ARFSH"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"RES_DLY"
	.byte	0x5
	.uahalf	0x108
	.uaword	0x4da
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"reserved_28"
	.byte	0x5
	.uahalf	0x109
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR_REF_Bits"
	.byte	0x5
	.uahalf	0x10a
	.uaword	0xf50
	.uleb128 0xe
	.string	"_Ifx_EBU_SDR_STAT_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x10f9
	.uleb128 0xc
	.string	"REFERR"
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"SDRMBUSY"
	.byte	0x5
	.uahalf	0x110
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"SDERR"
	.byte	0x5
	.uahalf	0x111
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"reserved_3"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x4da
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR_STAT_Bits"
	.byte	0x5
	.uahalf	0x113
	.uaword	0x1087
	.uleb128 0xe
	.string	"_Ifx_EBU_USERCON_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x116
	.uaword	0x11c7
	.uleb128 0xc
	.string	"DIP"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"NAF"
	.byte	0x5
	.uahalf	0x119
	.uaword	0x4da
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"RES1"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"ADDIO"
	.byte	0x5
	.uahalf	0x11b
	.uaword	0x4da
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"reserved_20"
	.byte	0x5
	.uahalf	0x11c
	.uaword	0x4da
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"RES"
	.byte	0x5
	.uahalf	0x11d
	.uaword	0x4da
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"ADVIO"
	.byte	0x5
	.uahalf	0x11e
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"ADDLSW"
	.byte	0x5
	.uahalf	0x11f
	.uaword	0x4da
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_USERCON_Bits"
	.byte	0x5
	.uahalf	0x120
	.uaword	0x1117
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x128
	.uaword	0x120c
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x12a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x12b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x12c
	.uaword	0x4ef
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_ACCEN0"
	.byte	0x5
	.uahalf	0x12d
	.uaword	0x11e4
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x130
	.uaword	0x124b
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x132
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x133
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x134
	.uaword	0x53e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_ACCEN1"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x1223
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x138
	.uaword	0x128a
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x5f5
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_ADDRSEL"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x1262
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x140
	.uaword	0x12ca
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x142
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x6ce
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_BUSRAP"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x12a2
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x148
	.uaword	0x1309
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x14a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x14b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x82c
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_BUSRCON"
	.byte	0x5
	.uahalf	0x14d
	.uaword	0x12e1
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1349
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x154
	.uaword	0x905
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_BUSWAP"
	.byte	0x5
	.uahalf	0x155
	.uaword	0x1321
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x158
	.uaword	0x1388
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x15a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x15b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x15c
	.uaword	0xa39
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_BUSWCON"
	.byte	0x5
	.uahalf	0x15d
	.uaword	0x1360
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x160
	.uaword	0x13c8
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x162
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x163
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x164
	.uaword	0xb40
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_CLC"
	.byte	0x5
	.uahalf	0x165
	.uaword	0x13a0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x168
	.uaword	0x1404
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x16a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x16b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x16c
	.uaword	0xbbc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_EXTBOOT"
	.byte	0x5
	.uahalf	0x16d
	.uaword	0x13dc
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x170
	.uaword	0x1444
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x172
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x173
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x174
	.uaword	0xc06
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_ID"
	.byte	0x5
	.uahalf	0x175
	.uaword	0x141c
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x178
	.uaword	0x147f
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x17a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x17b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x17c
	.uaword	0xd64
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_MODCON"
	.byte	0x5
	.uahalf	0x17d
	.uaword	0x1457
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x180
	.uaword	0x14be
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x182
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x183
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x184
	.uaword	0xe70
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR_CON"
	.byte	0x5
	.uahalf	0x185
	.uaword	0x1496
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x188
	.uaword	0x14fe
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x18a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x18b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x18c
	.uaword	0xf34
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR_MOD"
	.byte	0x5
	.uahalf	0x18d
	.uaword	0x14d6
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x190
	.uaword	0x153e
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x192
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x193
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x194
	.uaword	0x106a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR_REF"
	.byte	0x5
	.uahalf	0x195
	.uaword	0x1516
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x198
	.uaword	0x157e
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x19a
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x19b
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x19c
	.uaword	0x10f9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR_STAT"
	.byte	0x5
	.uahalf	0x19d
	.uaword	0x1556
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x1a0
	.uaword	0x15bf
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x1a2
	.uaword	0x4df
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x1a3
	.uaword	0x1a9
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x1a4
	.uaword	0x11c7
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_USERCON"
	.byte	0x5
	.uahalf	0x1a5
	.uaword	0x1597
	.uleb128 0xe
	.string	"_Ifx_EBU_BUS"
	.byte	0x10
	.byte	0x5
	.uahalf	0x1b0
	.uaword	0x1624
	.uleb128 0x11
	.string	"RCON"
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0x1309
	.byte	0
	.uleb128 0x11
	.string	"RAP"
	.byte	0x5
	.uahalf	0x1b3
	.uaword	0x12ca
	.byte	0x4
	.uleb128 0x11
	.string	"WCON"
	.byte	0x5
	.uahalf	0x1b4
	.uaword	0x1388
	.byte	0x8
	.uleb128 0x11
	.string	"WAP"
	.byte	0x5
	.uahalf	0x1b5
	.uaword	0x1349
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_BUS"
	.byte	0x5
	.uahalf	0x1b6
	.uaword	0x1638
	.uleb128 0xa
	.uaword	0x15d7
	.uleb128 0xe
	.string	"_Ifx_EBU_SDR"
	.byte	0x10
	.byte	0x5
	.uahalf	0x1b9
	.uaword	0x1689
	.uleb128 0x11
	.string	"CON"
	.byte	0x5
	.uahalf	0x1bb
	.uaword	0x14be
	.byte	0
	.uleb128 0x11
	.string	"MOD"
	.byte	0x5
	.uahalf	0x1bc
	.uaword	0x14fe
	.byte	0x4
	.uleb128 0x11
	.string	"REF"
	.byte	0x5
	.uahalf	0x1bd
	.uaword	0x153e
	.byte	0x8
	.uleb128 0x11
	.string	"STAT"
	.byte	0x5
	.uahalf	0x1be
	.uaword	0x157e
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU_SDR"
	.byte	0x5
	.uahalf	0x1bf
	.uaword	0x169d
	.uleb128 0xa
	.uaword	0x163d
	.uleb128 0x12
	.string	"_Ifx_EBU"
	.uahalf	0x400
	.byte	0x5
	.uahalf	0x1cc
	.uaword	0x17a5
	.uleb128 0x11
	.string	"CLC"
	.byte	0x5
	.uahalf	0x1ce
	.uaword	0x13c8
	.byte	0
	.uleb128 0x11
	.string	"MODCON"
	.byte	0x5
	.uahalf	0x1cf
	.uaword	0x147f
	.byte	0x4
	.uleb128 0x11
	.string	"ID"
	.byte	0x5
	.uahalf	0x1d0
	.uaword	0x1444
	.byte	0x8
	.uleb128 0x11
	.string	"USERCON"
	.byte	0x5
	.uahalf	0x1d1
	.uaword	0x15bf
	.byte	0xc
	.uleb128 0x11
	.string	"EXTBOOT"
	.byte	0x5
	.uahalf	0x1d2
	.uaword	0x1404
	.byte	0x10
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x5
	.uahalf	0x1d3
	.uaword	0x17a5
	.byte	0x14
	.uleb128 0x11
	.string	"ADDRSEL"
	.byte	0x5
	.uahalf	0x1d4
	.uaword	0x17c1
	.byte	0x18
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x1d5
	.uaword	0x17a5
	.byte	0x24
	.uleb128 0x11
	.string	"BUS"
	.byte	0x5
	.uahalf	0x1d6
	.uaword	0x17e1
	.byte	0x28
	.uleb128 0x11
	.string	"reserved_58"
	.byte	0x5
	.uahalf	0x1d7
	.uaword	0x17e6
	.byte	0x58
	.uleb128 0x11
	.string	"SDR"
	.byte	0x5
	.uahalf	0x1d8
	.uaword	0x1689
	.byte	0x68
	.uleb128 0x11
	.string	"reserved_78"
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x17f6
	.byte	0x78
	.uleb128 0x11
	.string	"ACCEN0"
	.byte	0x5
	.uahalf	0x1da
	.uaword	0x120c
	.byte	0xb0
	.uleb128 0x11
	.string	"ACCEN1"
	.byte	0x5
	.uahalf	0x1db
	.uaword	0x124b
	.byte	0xb4
	.uleb128 0x11
	.string	"reserved_B8"
	.byte	0x5
	.uahalf	0x1dc
	.uaword	0x1806
	.byte	0xb8
	.byte	0
	.uleb128 0x14
	.uaword	0x1cc
	.uaword	0x17b5
	.uleb128 0x15
	.uaword	0x17b5
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.uaword	0x128a
	.uaword	0x17d1
	.uleb128 0x15
	.uaword	0x17b5
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uaword	0x1624
	.uaword	0x17e1
	.uleb128 0x15
	.uaword	0x17b5
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	0x17d1
	.uleb128 0x14
	.uaword	0x1cc
	.uaword	0x17f6
	.uleb128 0x15
	.uaword	0x17b5
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.uaword	0x1cc
	.uaword	0x1806
	.uleb128 0x15
	.uaword	0x17b5
	.byte	0x37
	.byte	0
	.uleb128 0x14
	.uaword	0x1cc
	.uaword	0x1817
	.uleb128 0x16
	.uaword	0x17b5
	.uahalf	0x347
	.byte	0
	.uleb128 0xd
	.string	"Ifx_EBU"
	.byte	0x5
	.uahalf	0x1dd
	.uaword	0x1827
	.uleb128 0xa
	.uaword	0x16a2
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0x32
	.uaword	0x1877
	.uleb128 0x18
	.string	"IfxEbu_ChipSelect_0"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_ChipSelect_1"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_ChipSelect_2"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_ChipSelect"
	.byte	0x6
	.byte	0x36
	.uaword	0x182c
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0x39
	.uaword	0x194d
	.uleb128 0x18
	.string	"IfxEbu_ExternalClockRatio_1"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_ExternalClockRatio_2"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_ExternalClockRatio_3"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_ExternalClockRatio_4"
	.sleb128 3
	.uleb128 0x18
	.string	"IfxEbu_ExternalClockRatio_6"
	.sleb128 4
	.uleb128 0x18
	.string	"IfxEbu_ExternalClockRatio_8"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_ExternalClockRatio"
	.byte	0x6
	.byte	0x40
	.uaword	0x1890
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0x4b
	.uaword	0x19e4
	.uleb128 0x18
	.string	"IfxEbu_ArbitrationSignalSynchronization_synchronous"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_ArbitrationSignalSynchronization_asynchronous"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_ArbitrationSignalSynchronization"
	.byte	0x6
	.byte	0x4e
	.uaword	0x196e
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0x8d
	.uaword	0x1b62
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_muxedAsynchronousType"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_muxedBurstType"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_nandFlash"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_muxedCellularRam"
	.sleb128 3
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_demuxedAsynchronousType"
	.sleb128 4
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_demuxedBurstType"
	.sleb128 5
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_demuxedPageMode"
	.sleb128 6
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_demuxedCellularRam"
	.sleb128 7
	.uleb128 0x18
	.string	"IfxEbu_DeviceType_sdram"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_DeviceType"
	.byte	0x6
	.byte	0x97
	.uaword	0x1a13
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0x9a
	.uaword	0x1be4
	.uleb128 0x18
	.string	"IfxEbu_ExtendedData_0"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_ExtendedData_1"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_ExtendedData_2"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_ExtendedData_3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_ExtendedData"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b7b
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0xb2
	.uaword	0x1c91
	.uleb128 0x18
	.string	"IfxEbu_ExternalBusMode_noBus"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_ExternalBusMode_arbiter"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_ExternalBusMode_participant"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_ExternalBusMode_soleMaster"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_ExternalBusMode"
	.byte	0x6
	.byte	0xb7
	.uaword	0x1bff
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0xba
	.uaword	0x1d83
	.uleb128 0x18
	.string	"IfxEbu_ExternalDeviceInterface_8bitMultiplexed"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_ExternalDeviceInterface_16bitMultiplexed"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_ExternalDeviceInterface_twin16bitMultiplexed"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_ExternalDeviceInterface_32bitMultiplexed"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_ExternalDeviceInterface"
	.byte	0x6
	.byte	0xbf
	.uaword	0x1caf
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0xd2
	.uaword	0x1f78
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_0"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_1"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_2"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_3"
	.sleb128 3
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_4"
	.sleb128 4
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_5"
	.sleb128 5
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_6"
	.sleb128 6
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_7"
	.sleb128 7
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_8"
	.sleb128 8
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_9"
	.sleb128 9
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_10"
	.sleb128 10
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_11"
	.sleb128 11
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_12"
	.sleb128 12
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_13"
	.sleb128 13
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_14"
	.sleb128 14
	.uleb128 0x18
	.string	"IfxEbu_MemoryRegionMask_15"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_MemoryRegionMask"
	.byte	0x6
	.byte	0xe3
	.uaword	0x1da9
	.uleb128 0x19
	.byte	0x1
	.byte	0x6
	.uahalf	0x121
	.uaword	0x2029
	.uleb128 0x18
	.string	"IfxEbu_SynchronousBurstLength_1"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_SynchronousBurstLength_2"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_SynchronousBurstLength_4"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxEbu_SynchronousBurstLength_8"
	.sleb128 3
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_SynchronousBurstLength"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1f97
	.uleb128 0x19
	.byte	0x1
	.byte	0x6
	.uahalf	0x129
	.uaword	0x20b5
	.uleb128 0x18
	.string	"IfxEbu_WaitControl_off"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxEbu_WaitControl_asynchronous"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxEbu_WaitControl_synchronous"
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_WaitControl"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x204f
	.uleb128 0x1a
	.byte	0xc
	.byte	0x6
	.uahalf	0x133
	.uaword	0x2183
	.uleb128 0x11
	.string	"regionEnabled"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x23d
	.byte	0
	.uleb128 0x11
	.string	"alternateSegmentEnabled"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x23d
	.byte	0x1
	.uleb128 0x11
	.string	"writeProtection"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x23d
	.byte	0x2
	.uleb128 0x11
	.string	"combinedChipSelect"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x23d
	.byte	0x3
	.uleb128 0x11
	.string	"addressMask"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x1f78
	.byte	0x4
	.uleb128 0x11
	.string	"alternateSegment"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x21c
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_MemoryRegionConfig"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x20d0
	.uleb128 0x1a
	.byte	0x6
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x222d
	.uleb128 0x11
	.string	"aleMode"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x23d
	.byte	0
	.uleb128 0x11
	.string	"arbMode"
	.byte	0x6
	.uahalf	0x141
	.uaword	0x1c91
	.byte	0x1
	.uleb128 0x11
	.string	"arbSignalSynchronization"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x19e4
	.byte	0x2
	.uleb128 0x11
	.string	"sdramTri"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x23d
	.byte	0x3
	.uleb128 0x11
	.string	"lockTimeout"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x11
	.string	"clockComb"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x23d
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_ModuleConfig"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x21a5
	.uleb128 0x1a
	.byte	0xa
	.byte	0x6
	.uahalf	0x148
	.uaword	0x22c8
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x1bf
	.byte	0
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x14b
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x1be4
	.byte	0x3
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x13
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x150
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x13
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x151
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x6
	.uahalf	0x152
	.uaword	0x1bf
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_ReadAccessParameter"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x2249
	.uleb128 0x1a
	.byte	0xc
	.byte	0x6
	.uahalf	0x155
	.uaword	0x23a8
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0x6
	.uahalf	0x157
	.uaword	0x1b62
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0x6
	.uahalf	0x158
	.uaword	0x20b5
	.byte	0x1
	.uleb128 0x13
	.uaword	.LASF17
	.byte	0x6
	.uahalf	0x159
	.uaword	0x1d83
	.byte	0x2
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x13
	.uaword	.LASF19
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x23d
	.byte	0x4
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x23d
	.byte	0x5
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x23d
	.byte	0x6
	.uleb128 0x11
	.string	"burstFlashClockMode"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x23d
	.byte	0x7
	.uleb128 0x11
	.string	"burstFlashClockFeedback"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x23d
	.byte	0x8
	.uleb128 0x13
	.uaword	.LASF22
	.byte	0x6
	.uahalf	0x160
	.uaword	0x23d
	.byte	0x9
	.uleb128 0x13
	.uaword	.LASF23
	.byte	0x6
	.uahalf	0x161
	.uaword	0x2029
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_ReadConfig"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x22eb
	.uleb128 0x1a
	.byte	0xa
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x2441
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x1bf
	.byte	0
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x1be4
	.byte	0x3
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x190
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x191
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x13
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x192
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x13
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x193
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x6
	.uahalf	0x194
	.uaword	0x1bf
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_WriteAccessParameter"
	.byte	0x6
	.uahalf	0x195
	.uaword	0x23c2
	.uleb128 0x1a
	.byte	0xa
	.byte	0x6
	.uahalf	0x197
	.uaword	0x24e4
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0x6
	.uahalf	0x199
	.uaword	0x1b62
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x20b5
	.byte	0x1
	.uleb128 0x13
	.uaword	.LASF17
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x1d83
	.byte	0x2
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x13
	.uaword	.LASF19
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x23d
	.byte	0x4
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x23d
	.byte	0x5
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x23d
	.byte	0x6
	.uleb128 0x13
	.uaword	.LASF22
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x23d
	.byte	0x7
	.uleb128 0x13
	.uaword	.LASF23
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x2029
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"IfxEbu_WriteConfig"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x2465
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.byte	0x62
	.uaword	0x25f1
	.uleb128 0xb
	.uaword	.LASF23
	.byte	0x7
	.byte	0x64
	.uaword	0x1ea
	.byte	0x2
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"reserved_1"
	.byte	0x7
	.byte	0x65
	.uaword	0x1ea
	.byte	0x2
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"clockConfiguration"
	.byte	0x7
	.byte	0x66
	.uaword	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"burstSequence"
	.byte	0x7
	.byte	0x67
	.uaword	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"waitConfiguration"
	.byte	0x7
	.byte	0x68
	.uaword	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"dataOutputConfiguration"
	.byte	0x7
	.byte	0x69
	.uaword	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"automaticSleepModeDisable"
	.byte	0x7
	.byte	0x6a
	.uaword	0x1ea
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"reserved"
	.byte	0x7
	.byte	0x6b
	.uaword	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"readMode"
	.byte	0x7
	.byte	0x6c
	.uaword	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_BFlashSpansion_BurstCfgBits"
	.byte	0x7
	.byte	0x6d
	.uaword	0x24ff
	.uleb128 0x1b
	.byte	0x2
	.byte	0x7
	.byte	0x6f
	.uaword	0x2636
	.uleb128 0x1c
	.string	"U"
	.byte	0x7
	.byte	0x71
	.uaword	0x1ea
	.uleb128 0x1c
	.string	"B"
	.byte	0x7
	.byte	0x72
	.uaword	0x25f1
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_BFlashSpansion_BurstCfg"
	.byte	0x7
	.byte	0x73
	.uaword	0x261b
	.uleb128 0x6
	.byte	0x10
	.byte	0x7
	.byte	0x75
	.uaword	0x2695
	.uleb128 0x7
	.string	"ebu"
	.byte	0x7
	.byte	0x77
	.uaword	0x2695
	.byte	0
	.uleb128 0x1d
	.uaword	.LASF24
	.byte	0x7
	.byte	0x78
	.uaword	0x1877
	.byte	0x4
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x7
	.byte	0x79
	.uaword	0x21c
	.byte	0x8
	.uleb128 0x1d
	.uaword	.LASF25
	.byte	0x7
	.byte	0x7a
	.uaword	0x2636
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1817
	.uleb128 0x3
	.string	"IfxEbu_BFlashSpansion"
	.byte	0x7
	.byte	0x7b
	.uaword	0x265c
	.uleb128 0x6
	.byte	0x5c
	.byte	0x7
	.byte	0x7d
	.uaword	0x27de
	.uleb128 0x7
	.string	"module"
	.byte	0x7
	.byte	0x7f
	.uaword	0x2695
	.byte	0
	.uleb128 0x7
	.string	"externalClockRatio"
	.byte	0x7
	.byte	0x80
	.uaword	0x194d
	.byte	0x4
	.uleb128 0x1d
	.uaword	.LASF24
	.byte	0x7
	.byte	0x81
	.uaword	0x1877
	.byte	0x5
	.uleb128 0x7
	.string	"syncReadConfig"
	.byte	0x7
	.byte	0x82
	.uaword	0x23a8
	.byte	0x6
	.uleb128 0x7
	.string	"asyncWriteConfig"
	.byte	0x7
	.byte	0x83
	.uaword	0x24e4
	.byte	0x12
	.uleb128 0x7
	.string	"syncReadAccessParameter"
	.byte	0x7
	.byte	0x84
	.uaword	0x22c8
	.byte	0x1c
	.uleb128 0x7
	.string	"asyncWriteAccessParameter"
	.byte	0x7
	.byte	0x85
	.uaword	0x2441
	.byte	0x26
	.uleb128 0x7
	.string	"moduleConfig"
	.byte	0x7
	.byte	0x86
	.uaword	0x222d
	.byte	0x30
	.uleb128 0x7
	.string	"memoryRegionConfig"
	.byte	0x7
	.byte	0x87
	.uaword	0x2183
	.byte	0x38
	.uleb128 0x7
	.string	"asyncReadConfig"
	.byte	0x7
	.byte	0x88
	.uaword	0x23a8
	.byte	0x44
	.uleb128 0x7
	.string	"asyncReadAccessParameter"
	.byte	0x7
	.byte	0x89
	.uaword	0x22c8
	.byte	0x50
	.uleb128 0x1d
	.uaword	.LASF25
	.byte	0x7
	.byte	0x8a
	.uaword	0x2636
	.byte	0x5a
	.byte	0
	.uleb128 0x3
	.string	"IfxEbu_BFlashSpansion_Config"
	.byte	0x7
	.byte	0x8b
	.uaword	0x26b8
	.uleb128 0x1e
	.byte	0x1
	.string	"IfxEbu_BFlashSpansion_cmdSetBurstConfig"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uaword	0x286e
	.uleb128 0x1f
	.uaword	.LASF26
	.byte	0x1
	.byte	0x23
	.uaword	0x286e
	.uleb128 0x1f
	.uaword	.LASF25
	.byte	0x1
	.byte	0x23
	.uaword	0x2636
	.uleb128 0x20
	.uaword	.LASF27
	.byte	0x1
	.byte	0x25
	.uaword	0x2874
	.uleb128 0x21
	.string	"addr2"
	.byte	0x1
	.byte	0x26
	.uaword	0x2874
	.uleb128 0x21
	.string	"cfg"
	.byte	0x1
	.byte	0x27
	.uaword	0x1ea
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x269b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x287a
	.uleb128 0xa
	.uaword	0x21c
	.uleb128 0x22
	.string	"__dsync"
	.byte	0x2
	.uahalf	0x564
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.byte	0x1
	.string	"IfxEbu_BFlashSpansion_waitForReady"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	0x23d
	.byte	0x1
	.uaword	0x28f4
	.uleb128 0x24
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x286e
	.uleb128 0x25
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x2874
	.uleb128 0x26
	.string	"data1"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x21c
	.uleb128 0x26
	.string	"data2"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x21c
	.byte	0
	.uleb128 0x27
	.uaword	0x2802
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2934
	.uleb128 0x28
	.uaword	0x2834
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.uaword	0x283f
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.uaword	0x284a
	.byte	0x4
	.byte	0x8f
	.sleb128 5460
	.byte	0x9f
	.uleb128 0x29
	.uaword	0x2855
	.byte	0x4
	.byte	0x8f
	.sleb128 2728
	.byte	0x9f
	.uleb128 0x2a
	.uaword	0x2862
	.uaword	.LLST0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEbu_BFlashSpansion_eraseBlock"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x29f3
	.uleb128 0x2c
	.uaword	.LASF26
	.byte	0x1
	.byte	0x30
	.uaword	0x286e
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.string	"blockAddress"
	.byte	0x1
	.byte	0x30
	.uaword	0x21c
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF27
	.byte	0x1
	.byte	0x32
	.uaword	0x2874
	.uaword	.LLST1
	.uleb128 0x2f
	.string	"addr2"
	.byte	0x1
	.byte	0x33
	.uaword	0x2874
	.uaword	.LLST2
	.uleb128 0x30
	.uaword	0x288d
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x3e
	.uleb128 0x28
	.uaword	0x28bf
	.byte	0x1
	.byte	0x64
	.uleb128 0x31
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x29
	.uaword	0x28cb
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	0x28d7
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.uaword	0x28e5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x32
	.uaword	0x287f
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.uahalf	0x132
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEbu_BFlashSpansion_initMemory"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2bf9
	.uleb128 0x33
	.uaword	.LASF26
	.byte	0x1
	.byte	0x42
	.uaword	0x286e
	.uaword	.LLST3
	.uleb128 0x34
	.string	"config"
	.byte	0x1
	.byte	0x42
	.uaword	0x2bf9
	.uaword	.LLST4
	.uleb128 0x35
	.string	"ebu"
	.byte	0x1
	.byte	0x44
	.uaword	0x2695
	.byte	0x1
	.byte	0x6c
	.uleb128 0x36
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0x2ab9
	.uleb128 0x2f
	.string	"password"
	.byte	0x1
	.byte	0x4a
	.uaword	0x1ea
	.uaword	.LLST5
	.uleb128 0x37
	.uaword	.LVL13
	.uaword	0x2db8
	.uleb128 0x38
	.uaword	.LVL15
	.uaword	0x2de4
	.uaword	0x2a94
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL16
	.uaword	0x2e0e
	.uaword	0x2aa8
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL17
	.uaword	0x2e41
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0x2ada
	.uleb128 0x2f
	.string	"addrsel"
	.byte	0x1
	.byte	0x54
	.uaword	0x128a
	.uaword	.LLST6
	.byte	0
	.uleb128 0x36
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0x2afb
	.uleb128 0x2f
	.string	"busrcon"
	.byte	0x1
	.byte	0x81
	.uaword	0x1309
	.uaword	.LLST7
	.byte	0
	.uleb128 0x36
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0x2b1b
	.uleb128 0x2f
	.string	"busrap"
	.byte	0x1
	.byte	0x8f
	.uaword	0x12ca
	.uaword	.LLST8
	.byte	0
	.uleb128 0x36
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0x2b3c
	.uleb128 0x2f
	.string	"buswcon"
	.byte	0x1
	.byte	0xa1
	.uaword	0x1388
	.uaword	.LLST9
	.byte	0
	.uleb128 0x36
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0x2b5c
	.uleb128 0x2f
	.string	"buswap"
	.byte	0x1
	.byte	0xaa
	.uaword	0x1349
	.uaword	.LLST10
	.byte	0
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0
	.uaword	0x2b78
	.uleb128 0x2f
	.string	"modcon"
	.byte	0x1
	.byte	0xba
	.uaword	0x147f
	.uaword	.LLST11
	.byte	0
	.uleb128 0x3c
	.uaword	0x2802
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xc8
	.uaword	0x2bbb
	.uleb128 0x3d
	.uaword	0x283f
	.uleb128 0x3e
	.uaword	0x2834
	.uaword	.LLST12
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.uaword	0x284a
	.uaword	.LLST13
	.uleb128 0x2a
	.uaword	0x2855
	.uaword	.LLST14
	.uleb128 0x2a
	.uaword	0x2862
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0x2bdc
	.uleb128 0x2f
	.string	"busrcon"
	.byte	0x1
	.byte	0x67
	.uaword	0x1309
	.uaword	.LLST16
	.byte	0
	.uleb128 0x31
	.uaword	.LBB42
	.uaword	.LBE42
	.uleb128 0x2f
	.string	"busrap"
	.byte	0x1
	.byte	0x71
	.uaword	0x12ca
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bff
	.uleb128 0x40
	.uaword	0x27de
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEbu_BFlashSpansion_initMemoryConfig"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c5d
	.uleb128 0x2d
	.string	"config"
	.byte	0x1
	.byte	0xcc
	.uaword	0x2c5d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.string	"ebu"
	.byte	0x1
	.byte	0xcc
	.uaword	0x2695
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x27de
	.uleb128 0x41
	.byte	0x1
	.string	"IfxEbu_BFlashSpansion_programWord"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d43
	.uleb128 0x42
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x286e
	.byte	0x1
	.byte	0x64
	.uleb128 0x43
	.string	"address"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x21c
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.string	"data"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x21c
	.byte	0x1
	.byte	0x55
	.uleb128 0x44
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x2874
	.uaword	.LLST18
	.uleb128 0x45
	.string	"addr2"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x2874
	.uaword	.LLST19
	.uleb128 0x46
	.string	"addr3"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x2874
	.byte	0x1
	.byte	0x54
	.uleb128 0x47
	.uaword	0x288d
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.uahalf	0x128
	.uleb128 0x28
	.uaword	0x28bf
	.byte	0x1
	.byte	0x64
	.uleb128 0x31
	.uaword	.LBB44
	.uaword	.LBE44
	.uleb128 0x29
	.uaword	0x28cb
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	0x28d7
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.uaword	0x28e5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x32
	.uaword	0x287f
	.uaword	.LBB45
	.uaword	.LBE45
	.byte	0x1
	.uahalf	0x132
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x288d
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d86
	.uleb128 0x28
	.uaword	0x28bf
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	0x28cb
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2a
	.uaword	0x28d7
	.uaword	.LLST20
	.uleb128 0x29
	.uaword	0x28e5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x32
	.uaword	0x287f
	.uaword	.LBB47
	.uaword	.LBE47
	.byte	0x1
	.uahalf	0x132
	.byte	0
	.uleb128 0x14
	.uaword	0x2ac
	.uaword	0x2d96
	.uleb128 0x15
	.uaword	0x17b5
	.byte	0x2
	.byte	0
	.uleb128 0x48
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0x2db3
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x2d86
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x8
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x1ea
	.byte	0x1
	.uleb128 0x4a
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x8
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x2e0e
	.uleb128 0x4b
	.uaword	0x1ea
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxEbu_setExternalClockRatio"
	.byte	0x6
	.uahalf	0x1b8
	.byte	0x1
	.byte	0x1
	.uaword	0x2e41
	.uleb128 0x4b
	.uaword	0x2695
	.uleb128 0x4b
	.uaword	0x194d
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x8
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.uaword	0x1ea
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x4
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x26
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0x8f
	.sleb128 5460
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2728
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-1
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15-1
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0x8f
	.sleb128 5460
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2728
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x8d
	.sleb128 12
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0x8f
	.sleb128 5460
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2728
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0
	.uaword	0
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF26:
	.string	"bflash"
.LASF24:
	.string	"chipSelect"
.LASF6:
	.string	"addressCycle"
.LASF23:
	.string	"burstLength"
.LASF22:
	.string	"synchronousBurstBuffer"
.LASF16:
	.string	"waitControl"
.LASF15:
	.string	"deviceType"
.LASF10:
	.string	"externalClock"
.LASF14:
	.string	"recoveryRegion"
.LASF20:
	.string	"earlyBurst"
.LASF9:
	.string	"extendedData"
.LASF2:
	.string	"reserved_2"
.LASF12:
	.string	"waitState"
.LASF7:
	.string	"addressHold"
.LASF17:
	.string	"deviceInterface"
.LASF3:
	.string	"reserved_24"
.LASF8:
	.string	"commandDelay"
.LASF13:
	.string	"recoveryAccess"
.LASF19:
	.string	"polarityWait"
.LASF18:
	.string	"byteControl"
.LASF5:
	.string	"baseAddress"
.LASF11:
	.string	"dataHold"
.LASF0:
	.string	"EXTCLOCK"
.LASF21:
	.string	"earlyChipSelect"
.LASF1:
	.string	"CMDDELAY"
.LASF25:
	.string	"burstCfg"
.LASF4:
	.string	"reserved_14"
.LASF27:
	.string	"addr1"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxEbu_setExternalClockRatio,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
