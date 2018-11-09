	.file	"IfxVadc_Adc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxVadc_Adc_deInitGroup,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_deInitGroup
	.type	IfxVadc_Adc_deInitGroup, @function
IfxVadc_Adc_deInitGroup:
.LFB352:
	.file 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.c"
	.loc 1 118 0
.LVL0:
	.loc 1 125 0
	ld.bu	%d15, [%a4] 8
	ld.a	%a12, [%a4]0
.LVL1:
	addi	%d15, %d15, 16
	ld.a	%a13, [%a4] 4
.LVL2:
	and	%d15, 255
	mov.aa	%a4, %a12
.LVL3:
	mov	%d4, %d15
	call	IfxVadc_enableAccess
.LVL4:
.LBB224:
.LBB225:
	.file 2 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
	.loc 2 2136 0
	ld.w	%d2, [%a13]0
.LBE225:
.LBE224:
	.loc 1 127 0
	mov.aa	%a4, %a12
.LBB228:
.LBB226:
	.loc 2 2136 0
	andn	%d2, %d2, ~(-4)
.LBE226:
.LBE228:
	.loc 1 127 0
	mov	%d4, %d15
.LBB229:
.LBB227:
	.loc 2 2136 0
	st.w	[%a13]0, %d2
.LBE227:
.LBE229:
	.loc 1 127 0
	j	IfxVadc_disableAccess
.LVL5:
.LFE352:
	.size	IfxVadc_Adc_deInitGroup, .-IfxVadc_Adc_deInitGroup
.section .text.IfxVadc_Adc_disableModule,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_disableModule
	.type	IfxVadc_Adc_disableModule, @function
IfxVadc_Adc_disableModule:
.LFB353:
	.loc 1 132 0
.LVL6:
	.loc 1 132 0
	mov.aa	%a15, %a4
.LVL7:
.LBB230:
.LBB231:
	.loc 2 1742 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL8:
	.loc 2 1743 0
	mov	%d4, %d2
	.loc 2 1742 0
	mov	%d15, %d2
.LVL9:
	.loc 2 1743 0
	call	IfxScuWdt_clearCpuEndinit
.LVL10:
	.loc 2 1744 0
	ld.w	%d2, [%a15]0
	.loc 2 1745 0
	mov	%d4, %d15
	.loc 2 1744 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
	.loc 2 1745 0
	j	IfxScuWdt_setCpuEndinit
.LVL11:
.LBE231:
.LBE230:
.LFE353:
	.size	IfxVadc_Adc_disableModule, .-IfxVadc_Adc_disableModule
.section .text.IfxVadc_Adc_getChannelConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_getChannelConfig
	.type	IfxVadc_Adc_getChannelConfig, @function
IfxVadc_Adc_getChannelConfig:
.LFB354:
	.loc 1 138 0
.LVL12:
	.loc 1 139 0
	ld.a	%a2, [%a4] 4
	.loc 1 140 0
	ld.b	%d2, [%a4]0
	.loc 1 138 0
	mov.aa	%a12, %a4
	ld.a	%a13, [%a2] 4
.LVL13:
.LBB232:
.LBB233:
	.loc 2 1862 0
	addi	%d15, %d2, 96
.LBE233:
.LBE232:
	.loc 1 143 0
	st.a	[%a5] 20, %a2
.LVL14:
.LBB236:
.LBB234:
	.loc 2 1862 0
	addsc.a	%a2, %a13, %d15, 2
.LVL15:
.LBE234:
.LBE236:
	.loc 1 142 0
	st.b	[%a5] 12, %d2
.LBB237:
.LBB235:
	.loc 2 1862 0
	ld.w	%d15, [%a2]0
.LVL16:
.LBE235:
.LBE237:
	.loc 1 138 0
	mov.aa	%a15, %a5
	.loc 1 149 0
	extr.u	%d3, %d15, 0, 2
	st.b	[%a5] 13, %d3
	.loc 1 150 0
	extr.u	%d3, %d15, 11, 1
	st.b	[%a5] 14, %d3
	.loc 1 151 0
	extr.u	%d3, %d15, 16, 4
	st.b	[%a5] 15, %d3
	.loc 1 152 0
	extr.u	%d3, %d15, 20, 1
	st.b	[%a5]0, %d3
.LVL17:
	.loc 1 153 0
	extr.u	%d3, %d15, 4, 2
	st.b	[%a5] 16, %d3
	.loc 1 154 0
	extr.u	%d3, %d15, 6, 2
	st.b	[%a5] 17, %d3
	.loc 1 155 0
	extr.u	%d3, %d15, 12, 4
	st.b	[%a5] 18, %d3
	.loc 1 156 0
	extr.u	%d3, %d15, 8, 2
	st.b	[%a5] 19, %d3
	.loc 1 157 0
	extr.u	%d3, %d15, 10, 1
	.loc 1 158 0
	extr.u	%d15, %d15, 21, 1
.LVL18:
	.loc 1 157 0
	st.b	[%a5] 1, %d3
	.loc 1 158 0
	st.b	[%a5] 3, %d15
.LVL19:
.LBB238:
.LBB239:
	.loc 2 1818 0
	ld.w	%d15, [%a13] 8
.LVL20:
.LBE239:
.LBE238:
	.loc 1 160 0
	extr.u	%d2, %d15, %d2, 1
.LVL21:
	xor	%d2, %d2, 1
	st.b	[%a5] 2, %d2
	.loc 1 163 0
	ld.a	%a2, [%a4] 4
	.loc 1 164 0
	ld.b	%d8, [%a4]0
.LBB240:
.LBB241:
	.loc 2 1892 0
	ld.w	%d2, [%a13] 288
.LBE241:
.LBE240:
	.loc 1 164 0
	sh	%d8, 2
	.loc 1 165 0
	extr.u	%d8, %d2, %d8, 4
	.loc 1 163 0
	ld.bu	%d15, [%a2] 8
.LVL22:
	.loc 1 165 0
	mov	%e4, %d8, %d15
	call	IfxVadc_getSrcAddress
.LVL23:
	.loc 1 167 0
	ld.w	%d2, [%a2]0
	jnz.t	%d2, 10, .L11
	.loc 1 175 0
	mov	%d2, 0
	st.b	[%a15] 11, %d2
	.loc 1 176 0
	mov	%d2, 0
	st.h	[%a15] 6, %d2
	.loc 1 177 0
	st.b	[%a15] 9, %d2
.L5:
	.loc 1 182 0
	ld.bu	%d2, [%a15] 15
	jge.u	%d2, 8, .L6
.LVL24:
	.loc 1 184 0
	ld.b	%d8, [%a12]0
.LBB242:
.LBB243:
	.loc 2 1876 0
	ld.w	%d2, [%a13] 304
.LVL25:
.LBE243:
.LBE242:
	.loc 1 184 0
	sh	%d8, 2
	extr.u	%d8, %d2, %d8, 4
.LVL26:
	.loc 1 191 0
	and	%d8, %d8, 255
.LVL27:
	mov	%e4, %d8, %d15
	call	IfxVadc_getSrcAddress
.LVL28:
	.loc 1 193 0
	ld.w	%d15, [%a2]0
.LVL29:
	jnz.t	%d15, 10, .L12
.LVL30:
.L8:
	.loc 1 201 0
	mov	%d15, 0
	st.b	[%a15] 10, %d15
	.loc 1 202 0
	mov	%d15, 0
	st.h	[%a15] 4, %d15
	.loc 1 203 0
	st.b	[%a15] 8, %d15
	ret
.LVL31:
.L6:
	.loc 1 188 0
	ld.b	%d8, [%a12]0
.LBB244:
.LBB245:
	.loc 2 1884 0
	ld.w	%d2, [%a13] 308
.LVL32:
.LBE245:
.LBE244:
	.loc 1 188 0
	add	%d8, -8
	sh	%d8, 2
	extr.u	%d8, %d2, %d8, 4
.LVL33:
	.loc 1 191 0
	and	%d8, %d8, 255
.LVL34:
	mov	%e4, %d8, %d15
	call	IfxVadc_getSrcAddress
.LVL35:
	.loc 1 193 0
	ld.w	%d15, [%a2]0
.LVL36:
	jz.t	%d15, 10, .L8
.LVL37:
.L12:
	.loc 1 196 0
	ld.w	%d15, [%a2]0
	.loc 1 195 0
	st.b	[%a15] 10, %d8
	.loc 1 196 0
	and	%d15, 255
	st.h	[%a15] 4, %d15
	.loc 1 197 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 11, 2
	st.b	[%a15] 8, %d15
	ret
.LVL38:
.L11:
	.loc 1 170 0
	ld.w	%d2, [%a2]0
	.loc 1 169 0
	st.b	[%a15] 11, %d8
	.loc 1 170 0
	and	%d2, %d2, 255
	st.h	[%a15] 6, %d2
	.loc 1 171 0
	ld.w	%d2, [%a2]0
	extr.u	%d2, %d2, 11, 2
	st.b	[%a15] 9, %d2
	j	.L5
.LFE354:
	.size	IfxVadc_Adc_getChannelConfig, .-IfxVadc_Adc_getChannelConfig
.section .text.IfxVadc_Adc_getChannelConversionTime,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_getChannelConversionTime
	.type	IfxVadc_Adc_getChannelConversionTime, @function
IfxVadc_Adc_getChannelConversionTime:
.LFB355:
	.loc 1 209 0
.LVL39:
	.loc 1 210 0
	ld.a	%a15, [%a4] 4
.LBB246:
.LBB247:
	.loc 2 1869 0
	ld.b	%d15, [%a4]0
.LBE247:
.LBE246:
	.loc 1 209 0
	mov	%d9, %d4
	.loc 1 210 0
	ld.a	%a2, [%a15] 4
.LVL40:
	ld.bu	%d10, [%a15] 8
.LBB252:
.LBB248:
	.loc 2 1869 0
	addi	%d15, %d15, 96
.LBE248:
.LBE252:
	.loc 1 210 0
	ld.a	%a15, [%a15]0
.LBB253:
.LBB249:
	.loc 2 1869 0
	addsc.a	%a2, %a2, %d15, 2
.LVL41:
.LBE249:
.LBE253:
	.loc 1 209 0
	sub.a	%SP, 8
.LCFI0:
.LBB254:
.LBB250:
	.loc 2 1869 0
	ld.w	%d8, [%a2]0
.LBE250:
.LBE254:
	.loc 1 210 0
	mov.aa	%a4, %a15
.LVL42:
	call	IfxVadc_getAdcAnalogFrequency
.LVL43:
	mov	%d15, %d2
.LVL44:
.LBB255:
.LBB251:
	.loc 2 1869 0
	and	%d8, %d8, 3
.LBE251:
.LBE255:
	.loc 1 210 0
	call	IfxVadc_getAdcModuleFrequency
.LVL45:
	mov.aa	%a4, %a15
	st.w	[%SP]0, %d9
	mov	%e4, %d8, %d10
	mov	%e6, %d2, %d15
	.loc 1 211 0
	j	IfxVadc_getChannelConversionTime
.LVL46:
.LFE355:
	.size	IfxVadc_Adc_getChannelConversionTime, .-IfxVadc_Adc_getChannelConversionTime
.section .text.IfxVadc_Adc_getGroupConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_getGroupConfig
	.type	IfxVadc_Adc_getGroupConfig, @function
IfxVadc_Adc_getGroupConfig:
.LFB356:
	.loc 1 215 0
.LVL47:
	.loc 1 218 0
	ld.a	%a14, [%a4]0
	.loc 1 215 0
	mov.aa	%a13, %a4
	.loc 1 217 0
	ld.a	%a12, [%a4] 4
.LVL48:
	.loc 1 219 0
	mov.aa	%a4, %a14
.LVL49:
	.loc 1 215 0
	mov.aa	%a15, %a5
	.loc 1 219 0
	call	IfxVadc_getAdcAnalogFrequency
.LVL50:
	.loc 1 221 0
	ld.bu	%d15, [%a13] 8
	st.b	[%a15] 4, %d15
	.loc 1 222 0
	st.a	[%a15]0, %a13
.LVL51:
.LBB256:
.LBB257:
	.loc 2 1811 0
	ld.w	%d15, [%a12]0
	extr.u	%d15, %d15, 4, 2
.LBE257:
.LBE256:
	.loc 1 224 0
	st.b	[%a15] 50, %d15
.LVL52:
	mov	%d15, 0
.LVL53:
.L16:
.LBB258:
.LBB259:
	.loc 2 1960 0 discriminator 3
	addi	%d3, %d15, 8
	addsc.a	%a2, %a12, %d3, 2
.LBE259:
.LBE258:
	.loc 1 228 0 discriminator 3
	addsc.a	%a3, %a15, %d15, 3
.LBB261:
.LBB260:
	.loc 2 1960 0 discriminator 3
	ld.w	%d3, [%a2]0
	extr.u	%d3, %d3, 8, 3
.LBE260:
.LBE261:
	.loc 1 228 0 discriminator 3
	st.b	[%a3] 12, %d3
.LVL54:
.LBB262:
.LBB263:
	.loc 2 1977 0 discriminator 3
	ld.w	%d3, [%a2]0
	and	%d3, %d3, 31
.LVL55:
	.loc 2 1979 0 discriminator 3
	lt.u	%d4, %d3, 17
	jnz	%d4, .L15
	.loc 2 1981 0
	addi	%d3, %d3, -15
.LVL56:
	sh	%d3, 4
.LVL57:
.L15:
	.loc 2 1984 0
	add	%d3, 2
.LVL58:
	itof	%d3, %d3
.LVL59:
.LBE263:
.LBE262:
	.loc 1 229 0
	add	%d4, %d15, 1
.LBB265:
.LBB264:
	.loc 2 1984 0
	div.f	%d3, %d3, %d2
.LBE264:
.LBE265:
	.loc 1 229 0
	addsc.a	%a2, %a15, %d4, 3
	st.w	[%a2]0, %d3
.LVL60:
	.loc 1 226 0
	jne	%d15, 1, .L33
.LVL61:
.LBB266:
.LBB267:
	.loc 2 2130 0
	ld.w	%d2, [%a12] 4
.LVL62:
.LBE267:
.LBE266:
	.loc 1 232 0
	jnz.t	%d2, 25, .L47
	.loc 1 255 0
	mov	%d15, 0
.LVL63:
	st.b	[%a15] 24, %d15
	.loc 1 256 0
	st.b	[%a15] 28, %d15
	.loc 1 257 0
	st.b	[%a15] 26, %d15
	.loc 1 258 0
	st.b	[%a15] 29, %d15
	.loc 1 259 0
	st.b	[%a15] 27, %d15
.LVL64:
.LBB268:
.LBB269:
	.loc 2 2124 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 24, 1
.LBE269:
.LBE268:
	.loc 1 262 0
	jeq	%d15, 1, .L48
.L21:
	.loc 1 285 0
	mov	%d15, 0
	st.b	[%a15] 32, %d15
	.loc 1 286 0
	st.b	[%a15] 36, %d15
	.loc 1 287 0
	st.b	[%a15] 34, %d15
	.loc 1 288 0
	st.b	[%a15] 37, %d15
	.loc 1 289 0
	st.b	[%a15] 35, %d15
.LVL65:
.LBB271:
.LBB272:
	.loc 2 2118 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 26, 1
.LBE272:
.LBE271:
	.loc 1 292 0
	jeq	%d15, 1, .L49
.L25:
	.loc 1 315 0
	mov	%d15, 0
	st.b	[%a15] 40, %d15
	.loc 1 316 0
	st.b	[%a15] 44, %d15
	.loc 1 317 0
	st.b	[%a15] 42, %d15
	.loc 1 318 0
	st.b	[%a15] 45, %d15
	.loc 1 319 0
	st.b	[%a15] 43, %d15
.L28:
.LBB274:
.LBB275:
	.loc 2 1991 0
	ld.w	%d2, [%a12] 64
.LBE275:
.LBE274:
	.loc 1 322 0
	ld.bu	%d15, [%a13] 8
.LVL66:
.LBB277:
.LBB276:
	.loc 2 1991 0
	and	%d2, %d2, 3
.LVL67:
.LBE276:
.LBE277:
	.loc 1 322 0
	mov	%d3, %d15
.LBB278:
.LBB279:
	.loc 1 86 0
	jz	%d2, .L29
	.loc 1 92 0
	lt.u	%d6, %d15, 4
	mov	%d3, 0
	mul	%d7, %d15, 11
	sel	%d6, %d6, %d3, 4
	movh	%d1, hi:IfxVadc_Adc_masterIndex
	mov	%d0, %d6
.LVL68:
	mov	%d4, 0
.LVL69:
	addi	%d1, %d1, lo:IfxVadc_Adc_masterIndex
	mov.a	%a2, 3
.LVL70:
.L32:
	.loc 1 96 0
	mov.a	%a4, %d7
	add	%d5, %d4, %d6
	addsc.a	%a3, %a4, %d5, 0
	and	%d3, %d4, 255
.LVL71:
	addsc.a	%a3, %a3, %d1, 0
	ld.bu	%d5, [%a3]0
	jeq	%d5, %d2, .L50
.LVL72:
	add	%d4, 1
.LVL73:
	loop	%a2, .L32
.LBE279:
.LBE278:
	.loc 1 322 0
	mov	%d3, %d15
.LVL74:
.L29:
	st.b	[%a15] 5, %d3
.LVL75:
.LBB281:
.LBB282:
	.loc 2 1924 0
	ld.w	%d2, [%a14] 128
.LVL76:
.LBE282:
.LBE281:
	.loc 1 324 0
	addi	%d15, %d15, 16
	extr.u	%d15, %d2, %d15, 1
	st.b	[%a15] 48, %d15
.LVL77:
	ret
.LVL78:
.L33:
	mov	%d15, 1
.LVL79:
	j	.L16
.LVL80:
.L47:
	.loc 1 234 0
	st.b	[%a15] 52, %d15
.LVL81:
.LBB283:
.LBB284:
	.loc 2 2056 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 4, 2
.LBE284:
.LBE283:
	.loc 1 235 0
	st.b	[%a15] 30, %d2
.LVL82:
.LBB285:
.LBB286:
	.loc 2 2062 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 7, 1
.LBE286:
.LBE285:
	.loc 1 236 0
	st.b	[%a15] 31, %d2
.LVL83:
.LBB287:
.LBB288:
	.loc 2 2068 0
	ld.w	%d2, [%a12] 160
	extr.u	%d2, %d2, 8, 4
.LBE288:
.LBE287:
	.loc 1 238 0
	st.b	[%a15] 27, %d2
.LVL84:
.LBB289:
.LBB290:
	.loc 2 2074 0
	ld.w	%d3, [%a12] 160
.LBE290:
.LBE289:
	.loc 1 241 0
	eq	%d2, %d2, 15
.LBB292:
.LBB291:
	.loc 2 2074 0
	extr.u	%d3, %d3, 13, 2
.LBE291:
.LBE292:
	.loc 1 239 0
	st.b	[%a15] 29, %d3
	.loc 1 241 0
	jnz	%d2, .L18
.LVL85:
.LBB293:
.LBB294:
	.loc 2 2044 0
	ld.w	%d15, [%a12] 164
.LVL86:
	and	%d15, %d15, 3
.LBE294:
.LBE293:
	.loc 1 243 0
	st.b	[%a15] 28, %d15
.LVL87:
.L19:
.LBB295:
.LBB296:
	.loc 2 2050 0
	ld.w	%d15, [%a12] 160
	extr.u	%d15, %d15, 16, 4
.LBE296:
.LBE295:
	.loc 1 250 0
	st.b	[%a15] 26, %d15
.LVL88:
.LBB297:
.LBB298:
	.loc 2 2112 0
	ld.w	%d15, [%a12] 164
	extr.u	%d15, %d15, 4, 1
.LBE298:
.LBE297:
	.loc 1 251 0
	st.b	[%a15] 24, %d15
.LVL89:
.LBB299:
.LBB270:
	.loc 2 2124 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 24, 1
.LBE270:
.LBE299:
	.loc 1 262 0
	jne	%d15, 1, .L21
.LVL90:
.L48:
	.loc 1 264 0
	st.b	[%a15] 51, %d15
.LVL91:
.LBB300:
.LBB301:
	.loc 2 2010 0
	ld.w	%d2, [%a12] 4
	and	%d2, %d2, 3
.LBE301:
.LBE300:
	.loc 1 265 0
	st.b	[%a15] 38, %d2
.LVL92:
.LBB302:
.LBB303:
	.loc 2 2016 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 3, 1
.LBE303:
.LBE302:
	.loc 1 266 0
	st.b	[%a15] 39, %d2
.LVL93:
.LBB304:
.LBB305:
	.loc 2 2022 0
	ld.w	%d2, [%a12] 128
	extr.u	%d2, %d2, 8, 4
.LBE305:
.LBE304:
	.loc 1 268 0
	st.b	[%a15] 35, %d2
.LVL94:
.LBB306:
.LBB307:
	.loc 2 2028 0
	ld.w	%d3, [%a12] 128
.LBE307:
.LBE306:
	.loc 1 271 0
	eq	%d2, %d2, 15
.LBB309:
.LBB308:
	.loc 2 2028 0
	extr.u	%d3, %d3, 13, 2
.LBE308:
.LBE309:
	.loc 1 269 0
	st.b	[%a15] 37, %d3
	.loc 1 271 0
	jnz	%d2, .L22
.LVL95:
.LBB310:
.LBB311:
	.loc 2 1998 0
	ld.w	%d15, [%a12] 132
	and	%d15, %d15, 3
.LBE311:
.LBE310:
	.loc 1 273 0
	st.b	[%a15] 36, %d15
.LVL96:
.L23:
.LBB312:
.LBB313:
	.loc 2 2004 0
	ld.w	%d15, [%a12] 128
	extr.u	%d15, %d15, 16, 4
.LBE313:
.LBE312:
	.loc 1 280 0
	st.b	[%a15] 34, %d15
	.loc 1 281 0
	mov	%d15, 0
	st.b	[%a15] 32, %d15
.LVL97:
.LBB314:
.LBB273:
	.loc 2 2118 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 26, 1
.LBE273:
.LBE314:
	.loc 1 292 0
	jne	%d15, 1, .L25
.LVL98:
.L49:
	.loc 1 294 0
	st.b	[%a15] 53, %d15
.LVL99:
.LBB315:
.LBB316:
	.loc 2 1837 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 8, 2
.LBE316:
.LBE315:
	.loc 1 295 0
	st.b	[%a15] 46, %d2
.LVL100:
.LBB317:
.LBB318:
	.loc 2 1843 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 11, 1
.LBE318:
.LBE317:
	.loc 1 296 0
	st.b	[%a15] 47, %d2
.LVL101:
.LBB319:
.LBB320:
	.loc 2 1849 0
	ld.w	%d2, [%a14] 512
	extr.u	%d2, %d2, 8, 4
.LBE320:
.LBE319:
	.loc 1 298 0
	st.b	[%a15] 43, %d2
.LVL102:
.LBB321:
.LBB322:
	.loc 2 1855 0
	ld.w	%d3, [%a14] 512
.LBE322:
.LBE321:
	.loc 1 301 0
	eq	%d2, %d2, 15
.LBB324:
.LBB323:
	.loc 2 1855 0
	extr.u	%d3, %d3, 13, 2
.LBE323:
.LBE324:
	.loc 1 299 0
	st.b	[%a15] 45, %d3
	.loc 1 301 0
	jnz	%d2, .L26
.LVL103:
.LBB325:
.LBB326:
	.loc 2 1825 0
	ld.w	%d15, [%a14] 516
	and	%d15, %d15, 3
.LBE326:
.LBE325:
	.loc 1 303 0
	st.b	[%a15] 44, %d15
.LVL104:
.L27:
.LBB327:
.LBB328:
	.loc 2 1831 0
	ld.w	%d15, [%a14] 512
	extr.u	%d15, %d15, 16, 4
.LBE328:
.LBE327:
	.loc 1 310 0
	st.b	[%a15] 42, %d15
.LVL105:
.LBB329:
.LBB330:
	.loc 2 2106 0
	ld.w	%d15, [%a14] 516
	extr.u	%d15, %d15, 4, 1
.LBE330:
.LBE329:
	.loc 1 311 0
	st.b	[%a15] 40, %d15
	j	.L28
.LVL106:
.L50:
.LBB331:
.LBB280:
	.loc 1 98 0
	add	%d3, %d0
.LVL107:
	and	%d3, %d3, 255
	j	.L29
.LVL108:
.L22:
.LBE280:
.LBE331:
	.loc 1 275 0
	jz	%d3, .L23
	.loc 1 277 0
	st.b	[%a15] 36, %d15
	j	.L23
.LVL109:
.L26:
	.loc 1 305 0
	jz	%d3, .L27
	.loc 1 307 0
	st.b	[%a15] 44, %d15
	j	.L27
.LVL110:
.L18:
	.loc 1 245 0
	jz	%d3, .L19
	.loc 1 247 0
	st.b	[%a15] 28, %d15
	j	.L19
.LFE356:
	.size	IfxVadc_Adc_getGroupConfig, .-IfxVadc_Adc_getGroupConfig
.section .text.IfxVadc_Adc_initChannel,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initChannel
	.type	IfxVadc_Adc_initChannel, @function
IfxVadc_Adc_initChannel:
.LFB357:
	.loc 1 329 0
.LVL111:
	.loc 1 331 0
	ld.a	%a2, [%a5] 20
	.loc 1 336 0
	ld.b	%d8, [%a5] 12
	.loc 1 329 0
	mov.aa	%a13, %a4
	ld.a	%a14, [%a2]0
.LVL112:
	.loc 1 335 0
	ld.bu	%d15, [%a2] 8
	ld.a	%a12, [%a2] 4
.LVL113:
	.loc 1 339 0
	mov	%d4, %d15
	.loc 1 334 0
	st.a	[%a4] 4, %a2
	.loc 1 339 0
	mov.aa	%a4, %a14
.LVL114:
	.loc 1 329 0
	mov.aa	%a15, %a5
	.loc 1 339 0
	call	IfxVadc_enableAccess
.LVL115:
.LBB332:
.LBB333:
	.loc 2 2334 0
	addi	%d3, %d8, 96
	addsc.a	%a2, %a12, %d3, 2
	ld.bu	%d2, [%a15] 14
	ld.w	%d3, [%a2]0
.LBE333:
.LBE332:
	.loc 1 355 0
	addi	%d9, %d15, 16
.LBB336:
.LBB334:
	.loc 2 2334 0
	ins.t	%d2, %d3,11, %d2,0
.LBE334:
.LBE336:
	.loc 1 355 0
	and	%d9, %d9, 255
	mov.aa	%a4, %a14
.LBB337:
.LBB335:
	.loc 2 2334 0
	st.w	[%a2]0, %d2
.LVL116:
.LBE335:
.LBE337:
.LBB338:
.LBB339:
	.loc 2 2421 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 15
.LBE339:
.LBE338:
	.loc 1 355 0
	mov	%d4, %d9
.LBB341:
.LBB340:
	.loc 2 2421 0
	insert	%d2, %d3, %d2, 16, 4
	st.w	[%a2]0, %d2
.LVL117:
.LBE340:
.LBE341:
.LBB342:
.LBB343:
	.loc 2 2299 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 16
	insert	%d2, %d3, %d2, 4, 2
	st.w	[%a2]0, %d2
.LVL118:
.LBE343:
.LBE342:
.LBB344:
.LBB345:
	.loc 2 2397 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 17
	insert	%d2, %d3, %d2, 6, 2
	st.w	[%a2]0, %d2
.LVL119:
.LBE345:
.LBE344:
.LBB346:
.LBB347:
	.loc 2 2391 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 1
	ins.t	%d2, %d3,10, %d2,0
	st.w	[%a2]0, %d2
.LVL120:
.LBE347:
.LBE346:
.LBB348:
.LBB349:
	.loc 2 2220 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 13
	insert	%d2, %d3, %d2, 0, 2
	st.w	[%a2]0, %d2
.LVL121:
.LBE349:
.LBE348:
.LBB350:
.LBB351:
	.loc 2 2226 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 19
	insert	%d2, %d3, %d2, 8, 2
	st.w	[%a2]0, %d2
.LVL122:
.LBE351:
.LBE350:
.LBB352:
.LBB353:
	.loc 2 2354 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15] 3
	ins.t	%d2, %d3,21, %d2,0
	st.w	[%a2]0, %d2
.LVL123:
.LBE353:
.LBE352:
.LBB354:
.LBB355:
	.loc 2 2172 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15]0
	ins.t	%d2, %d3,20, %d2,0
	st.w	[%a2]0, %d2
.LVL124:
.LBE355:
.LBE354:
.LBB356:
.LBB357:
	.loc 2 2207 0
	ld.bu	%d2, [%a15] 18
	ld.w	%d3, [%a2]0
	insert	%d2, %d3, %d2, 12, 4
	st.w	[%a2]0, %d2
.LVL125:
.LBE357:
.LBE356:
	.loc 1 355 0
	call	IfxVadc_enableAccess
.LVL126:
	.loc 1 357 0
	ld.bu	%d2, [%a15] 2
	jnz	%d2, .L52
.LVL127:
.LBB358:
.LBB359:
	.loc 2 2281 0
	ld.w	%d2, [%a12] 8
	insert	%d8, %d2, 1, %d8, 1
.LVL128:
	st.w	[%a12] 8, %d8
.LVL129:
.L53:
.LBE359:
.LBE358:
	.loc 1 366 0
	mov	%d4, %d9
	mov.aa	%a4, %a14
	call	IfxVadc_disableAccess
.LVL130:
.LBB360:
.LBB361:
	.loc 2 2213 0
	ld.b	%d4, [%a13]0
	ld.w	%d6, [%a12] 288
	sh	%d2, %d4, 2
	mov	%d3, 15
	sh	%d3, %d3, %d2
	andn	%d3, %d6, %d3
.LBE361:
.LBE360:
	.loc 1 368 0
	ld.bu	%d5, [%a15] 11
.LVL131:
.LBB363:
.LBB362:
	.loc 2 2213 0
	st.w	[%a12] 288, %d3
.LVL132:
	.loc 2 2214 0
	ld.w	%d3, [%a12] 288
	sh	%d2, %d5, %d2
	or	%d2, %d3
	st.w	[%a12] 288, %d2
.LBE362:
.LBE363:
	.loc 1 370 0
	ld.hu	%d2, [%a15] 6
	jnz	%d2, .L64
.LVL133:
.L54:
	.loc 1 384 0
	ld.bu	%d2, [%a15] 15
	.loc 1 386 0
	ld.bu	%d4, [%a15] 10
	.loc 1 384 0
	jge.u	%d2, 8, .L55
.LVL134:
.LBB364:
.LBB365:
	.loc 2 2340 0
	ld.w	%d5, [%a12] 304
	sh	%d2, 2
	mov	%d3, 15
	sh	%d3, %d3, %d2
	andn	%d3, %d5, %d3
	.loc 2 2341 0
	sh	%d2, %d4, %d2
	.loc 2 2340 0
	st.w	[%a12] 304, %d3
.LVL135:
	.loc 2 2341 0
	ld.w	%d3, [%a12] 304
	or	%d2, %d3
	st.w	[%a12] 304, %d2
.LVL136:
.L56:
.LBE365:
.LBE364:
	.loc 1 393 0
	ld.hu	%d2, [%a15] 4
	jz	%d2, .L57
.LBB366:
	.loc 1 395 0
	ld.bu	%d5, [%a15] 10
	mov	%d4, %d15
	call	IfxVadc_getSrcAddress
.LVL137:
.LBB367:
.LBB368:
	.loc 2 1797 0
	ld.bu	%d2, [%a15] 15
	addi	%d2, %d2, 128
	addsc.a	%a3, %a12, %d2, 2
	ld.w	%d2, [%a3]0
	insert	%d2, %d2, 15, 31, 1
	st.w	[%a3]0, %d2
.LVL138:
.LBE368:
.LBE367:
.LBB369:
.LBB370:
	.loc 2 1712 0
	mov.u	%d2, 65535
	st.w	[%a12] 276, %d2
.LBE370:
.LBE369:
.LBB371:
.LBB372:
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
	.loc 3 256 0
	ld.w	%d3, [%a2]0
	ld.bu	%d4, [%a15] 4
	andn	%d3, %d3, ~(-256)
	or	%d3, %d4
.LBE372:
.LBE371:
	.loc 1 399 0
	ld.bu	%d2, [%a15] 8
.LVL139:
.LBB376:
.LBB375:
	.loc 3 256 0
	st.w	[%a2]0, %d3
.LVL140:
	.loc 3 257 0
	ld.w	%d3, [%a2]0
	insert	%d2, %d3, %d2, 11, 2
.LVL141:
	st.w	[%a2]0, %d2
.LVL142:
.LBB373:
.LBB374:
	.loc 3 232 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a2]0, %d2
.LVL143:
.LBE374:
.LBE373:
.LBE375:
.LBE376:
.LBB377:
.LBB378:
	.loc 3 250 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a2]0, %d2
.LVL144:
.L57:
.LBE378:
.LBE377:
.LBE366:
	.loc 1 408 0
	mov	%d4, %d15
	mov.aa	%a4, %a14
	call	IfxVadc_disableAccess
.LVL145:
	.loc 1 410 0
	ld.bu	%d15, [%a15] 15
.LVL146:
	st.b	[%a13] 1, %d15
	.loc 1 411 0
	ld.bu	%d15, [%a15] 12
	st.b	[%a13]0, %d15
	.loc 1 414 0
	mov	%d2, 0
	ret
.LVL147:
.L55:
.LBB379:
.LBB380:
	.loc 2 2347 0
	add	%d2, -8
.LVL148:
	ld.w	%d5, [%a12] 308
	sh	%d2, 2
	mov	%d3, 15
	sh	%d3, %d3, %d2
	andn	%d3, %d5, %d3
	.loc 2 2348 0
	sh	%d2, %d4, %d2
	.loc 2 2347 0
	st.w	[%a12] 308, %d3
.LVL149:
	.loc 2 2348 0
	ld.w	%d3, [%a12] 308
	or	%d2, %d3
	st.w	[%a12] 308, %d2
	j	.L56
.LVL150:
.L52:
.LBE380:
.LBE379:
.LBB381:
.LBB382:
	.loc 2 2166 0
	ld.w	%d2, [%a12] 8
	insert	%d8, %d2, 0, %d8, 1
.LVL151:
	st.w	[%a12] 8, %d8
	j	.L53
.LVL152:
.L64:
.LBE382:
.LBE381:
.LBB383:
	.loc 1 372 0
	ld.bu	%d5, [%a15] 11
.LVL153:
	mov	%d4, %d15
.LVL154:
	call	IfxVadc_getSrcAddress
.LVL155:
.LBB384:
.LBB385:
	.loc 2 1718 0
	ld.b	%d3, [%a15] 12
	mov	%d2, 1
	sh	%d2, %d2, %d3
	st.w	[%a12] 272, %d2
.LVL156:
.LBE385:
.LBE384:
.LBB386:
.LBB387:
	.loc 3 256 0
	ld.w	%d3, [%a2]0
.LVL157:
	ld.bu	%d4, [%a15] 6
	andn	%d3, %d3, ~(-256)
	or	%d3, %d4
.LBE387:
.LBE386:
	.loc 1 375 0
	ld.bu	%d2, [%a15] 9
.LVL158:
.LBB391:
.LBB390:
	.loc 3 256 0
	st.w	[%a2]0, %d3
.LVL159:
	.loc 3 257 0
	ld.w	%d3, [%a2]0
	insert	%d2, %d3, %d2, 11, 2
.LVL160:
	st.w	[%a2]0, %d2
.LVL161:
.LBB388:
.LBB389:
	.loc 3 232 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a2]0, %d2
.LVL162:
.LBE389:
.LBE388:
.LBE390:
.LBE391:
.LBB392:
.LBB393:
	.loc 3 250 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a2]0, %d2
	j	.L54
.LBE393:
.LBE392:
.LBE383:
.LFE357:
	.size	IfxVadc_Adc_initChannel, .-IfxVadc_Adc_initChannel
.section .text.IfxVadc_Adc_initChannelConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initChannelConfig
	.type	IfxVadc_Adc_initChannelConfig, @function
IfxVadc_Adc_initChannelConfig:
.LFB358:
	.loc 1 418 0
.LVL163:
	.loc 1 440 0
	mov.aa	%a2, %a4
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	.loc 1 441 0
	st.a	[%a4] 20, %a5
	ret
.LFE358:
	.size	IfxVadc_Adc_initChannelConfig, .-IfxVadc_Adc_initChannelConfig
.section .text.IfxVadc_Adc_initGroup,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initGroup
	.type	IfxVadc_Adc_initGroup, @function
IfxVadc_Adc_initGroup:
.LFB359:
	.loc 1 446 0
.LVL164:
	.loc 1 448 0
	ld.a	%a2, [%a5]0
	.loc 1 449 0
	ld.bu	%d15, [%a5] 4
	.loc 1 446 0
	mov.aa	%a15, %a5
	.loc 1 448 0
	ld.a	%a12, [%a2]0
.LVL165:
	.loc 1 449 0
	sh	%d8, %d15, 10
	addi	%d2, %d8, 1152
	addsc.a	%a13, %a12, %d2, 0
.LVL166:
	.loc 1 453 0
	ld.w	%d2, [%a2]0
	.loc 1 452 0
	st.a	[%a4] 4, %a13
	.loc 1 453 0
	st.w	[%a4]0, %d2
	.loc 1 455 0
	st.b	[%a4] 8, %d15
	.loc 1 461 0
	addi	%d10, %d15, 16
	.loc 1 456 0
	mov.aa	%a4, %a12
.LVL167:
	call	IfxVadc_getAdcAnalogFrequency
.LVL168:
	.loc 1 461 0
	and	%d10, %d10, 255
	mov.aa	%a4, %a12
	mov	%d4, %d10
	.loc 1 456 0
	mov	%d9, %d2
.LVL169:
	.loc 1 461 0
	call	IfxVadc_enableAccess
.LVL170:
	.loc 1 463 0
	ld.bu	%d2, [%a15] 51
	.loc 1 466 0
	mov.aa	%a4, %a13
	.loc 1 463 0
	jeq	%d2, 1, .L97
	.loc 1 471 0
	mov	%e4, 0
	mov	%e6, 0
	call	IfxVadc_setArbiterPriority
.LVL171:
	.loc 1 474 0
	ld.bu	%d2, [%a15] 52
	.loc 1 478 0
	mov.aa	%a4, %a13
	.loc 1 474 0
	jeq	%d2, 1, .L98
.L69:
	.loc 1 483 0
	mov	%e4, 0
	mov	%d6, 0
	mov	%d7, 1
	call	IfxVadc_setArbiterPriority
.LVL172:
	.loc 1 486 0
	ld.bu	%d2, [%a15] 53
	.loc 1 490 0
	mov.aa	%a4, %a13
	.loc 1 486 0
	jeq	%d2, 1, .L99
.LVL173:
.L71:
	.loc 1 495 0
	mov	%e4, 0
	mov	%d6, 0
	mov	%d7, 2
	call	IfxVadc_setArbiterPriority
.LVL174:
.L72:
	.loc 1 499 0
	ld.bu	%d2, [%a15] 5
	jeq	%d15, %d2, .L73
.LVL175:
.LBB394:
.LBB395:
.LBB396:
	.loc 1 109 0
	madd	%d2, %d2, %d15, 11
	movh.a	%a2, hi:IfxVadc_Adc_masterIndex
	lea	%a2, [%a2] lo:IfxVadc_Adc_masterIndex
	addsc.a	%a2, %a2, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL176:
.LBE396:
.LBE395:
.LBB397:
.LBB398:
	.loc 2 2305 0
	addsc.a	%a2, %a12, %d8, 0
.LVL177:
	and	%d3, %d2, 3
	ld.w	%d4, [%a2] 1216
	insert	%d2, %d4, %d2, 0, 2
	st.w	[%a2] 1216, %d2
.LVL178:
	.loc 2 2306 0
	ld.w	%d4, [%a2] 1216
	mov	%d2, 8
	sh	%d2, %d2, %d3
	or	%d2, %d4
	st.w	[%a2] 1216, %d2
.LVL179:
.L73:
.LBE398:
.LBE397:
.LBE394:
.LBB399:
.LBB400:
	.loc 2 2142 0
	addsc.a	%a2, %a12, %d8, 0
	ld.w	%d2, [%a2] 1152
	andn	%d2, %d2, ~(-4)
	st.w	[%a2] 1152, %d2
.LVL180:
.LBE400:
.LBE399:
.LBB401:
.LBB402:
	.loc 2 2148 0
	ld.bu	%d2, [%a15] 50
	ld.w	%d3, [%a2] 1152
	insert	%d2, %d3, %d2, 4, 2
	st.w	[%a2] 1152, %d2
.LVL181:
.LBE402:
.LBE401:
	.loc 1 517 0
	ld.bu	%d2, [%a15] 51
	jeq	%d2, 1, .L100
.L74:
	.loc 1 562 0
	ld.bu	%d2, [%a15] 52
	jeq	%d2, 1, .L101
.L80:
	.loc 1 605 0
	ld.bu	%d2, [%a15] 53
	jeq	%d2, 1, .L102
.L86:
	.loc 1 648 0
	ld.bu	%d2, [%a15] 5
.LBB403:
.LBB404:
	.loc 2 2142 0
	addsc.a	%a2, %a12, %d8, 0
.LBE404:
.LBE403:
	.loc 1 648 0
	eq	%d2, %d2, %d15
	seln	%d3, %d2, %d2, 3
.LVL182:
.LBB408:
.LBB405:
	.loc 2 2142 0
	ld.w	%d2, [%a2] 1152
.LBE405:
.LBE408:
	.loc 1 652 0
	mov	%d4, %d15
.LBB409:
.LBB406:
	.loc 2 2142 0
	andn	%d2, %d2, ~(-4)
	or	%d2, %d3
.LBE406:
.LBE409:
	.loc 1 652 0
	mov.aa	%a4, %a12
	sh	%d15, %d15, 8
.LVL183:
.LBB410:
.LBB407:
	.loc 2 2142 0
	st.w	[%a2] 1152, %d2
.LBE407:
.LBE410:
	.loc 1 652 0
	ld.bu	%d5, [%a15] 48
	call	IfxVadc_disablePostCalibration
.LVL184:
	mov	%d3, 0
.LBB411:
.LBB412:
.LBB413:
.LBB414:
.LBB415:
.LBB416:
	.file 4 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 177 0
	mov	%d4, 255
.LVL185:
.L92:
.LBE416:
.LBE415:
.LBE414:
.LBE413:
.LBE412:
.LBE411:
	.loc 1 657 0 discriminator 3
	addsc.a	%a2, %a15, %d3, 3
.LBB422:
.LBB423:
	.loc 2 2287 0 discriminator 3
	add	%d2, %d15, %d3
	addi	%d2, %d2, 296
	ld.bu	%d5, [%a2] 12
	addsc.a	%a2, %a12, %d2, 2
	ld.w	%d2, [%a2]0
	insert	%d5, %d2, %d5, 8, 3
.LBE423:
.LBE422:
	.loc 1 659 0 discriminator 3
	addi	%d2, %d3, 1
.LBB425:
.LBB424:
	.loc 2 2287 0 discriminator 3
	st.w	[%a2]0, %d5
.LVL186:
.LBE424:
.LBE425:
	.loc 1 659 0 discriminator 3
	addsc.a	%a2, %a15, %d2, 3
.LBB426:
.LBB421:
.LBB420:
.LBB419:
	.loc 2 1697 0 discriminator 3
	ld.w	%d5, [%a2]0
	mul.f	%d5, %d9, %d5
	ftouz	%d5, %d5
	add	%d5, -2
.LVL187:
	.loc 2 1699 0 discriminator 3
	lt.u	%d6, %d5, 32
	jnz	%d6, .L91
	.loc 2 1701 0
	sh	%d5, -4
.LVL188:
	addi	%d5, %d5, 15
.LVL189:
.L91:
.LBB418:
.LBB417:
	.loc 4 177 0
#APP
	# 177 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d5, %d5, %d4
	# 0 "" 2
.LVL190:
#NO_APP
.LBE417:
.LBE418:
.LBE419:
.LBE420:
	.loc 2 2293 0
	add	%d2, %d15, %d3
	addi	%d2, %d2, 296
	addsc.a	%a2, %a12, %d2, 2
	ld.w	%d2, [%a2]0
	insert	%d5, %d2, %d5, 0, 5
.LVL191:
	st.w	[%a2]0, %d5
.LVL192:
.LBE421:
.LBE426:
	.loc 1 654 0
	jne	%d3, 1, .L93
	.loc 1 662 0
	mov.aa	%a4, %a12
	mov	%d4, %d10
	call	IfxVadc_disableAccess
.LVL193:
	.loc 1 665 0
	mov	%d2, 0
	ret
.LVL194:
.L93:
	mov	%d3, 1
.LVL195:
	j	.L92
.LVL196:
.L97:
	.loc 1 466 0
	ld.bu	%d5, [%a15] 38
	ld.bu	%d6, [%a15] 39
	mov	%d4, 1
	mov	%d7, 0
	call	IfxVadc_setArbiterPriority
.LVL197:
	.loc 1 474 0
	ld.bu	%d2, [%a15] 52
	.loc 1 478 0
	mov.aa	%a4, %a13
	.loc 1 474 0
	jne	%d2, 1, .L69
.LVL198:
.L98:
	.loc 1 478 0
	ld.bu	%d5, [%a15] 30
	ld.bu	%d6, [%a15] 31
	mov	%d4, 1
	mov	%d7, 1
	call	IfxVadc_setArbiterPriority
.LVL199:
	.loc 1 486 0
	ld.bu	%d2, [%a15] 53
	.loc 1 490 0
	mov.aa	%a4, %a13
	.loc 1 486 0
	jne	%d2, 1, .L71
.LVL200:
.L99:
	.loc 1 490 0
	ld.bu	%d5, [%a15] 46
	ld.bu	%d6, [%a15] 47
	mov	%d4, 1
	mov	%d7, 2
	call	IfxVadc_setArbiterPriority
.LVL201:
	j	.L72
.LVL202:
.L102:
.LBB427:
	.loc 1 610 0
	ld.bu	%d2, [%a15] 45
	jnz	%d2, .L103
.L87:
	.loc 1 631 0
	ld.bu	%d2, [%a15] 43
	ne	%d2, %d2, 15
	jz	%d2, .L89
.L90:
.LBB428:
.LBB429:
	.loc 2 2186 0
	ld.w	%d3, [%a12] 512
.LBE429:
.LBE428:
	.loc 1 633 0
	ld.bu	%d4, [%a15] 42
.LBB432:
.LBB430:
	.loc 2 2187 0
	insert	%d3, %d3, 1, 23, 1
.LVL203:
.LBE430:
.LBE432:
	.loc 1 633 0
	ld.bu	%d2, [%a15] 44
.LVL204:
.LBB433:
.LBB431:
	.loc 2 2188 0
	insert	%d3, %d3, %d4, 16, 4
	.loc 2 2189 0
	st.w	[%a12] 512, %d3
.LVL205:
	.loc 2 2190 0
	ld.w	%d3, [%a12] 516
.LVL206:
	insert	%d2, %d3, %d2, 0, 2
.LVL207:
	st.w	[%a12] 516, %d2
.LVL208:
.L89:
.LBE431:
.LBE433:
	.loc 1 640 0
	ld.bu	%d2, [%a15] 40
.LVL209:
.LBB434:
.LBB435:
	.loc 2 2154 0
	seln	%d3, %d2, %d2, 16
	ld.w	%d2, [%a12] 516
.LVL210:
	andn	%d2, %d2, ~(-17)
	or	%d2, %d3
	st.w	[%a12] 516, %d2
.LVL211:
	j	.L86
.LVL212:
.L101:
.LBE435:
.LBE434:
.LBE427:
.LBB448:
	.loc 1 567 0
	ld.bu	%d2, [%a15] 29
.LBB449:
.LBB450:
	.loc 2 1791 0
	addsc.a	%a2, %a12, %d8, 0
.LBE450:
.LBE449:
	.loc 1 567 0
	jnz	%d2, .L104
.LVL213:
.LBB452:
.LBB453:
	.loc 2 1757 0
	ld.w	%d2, [%a2] 1316
	andn	%d2, %d2, ~(-5)
	st.w	[%a2] 1316, %d2
.LVL214:
.L84:
.LBE453:
.LBE452:
	.loc 1 589 0
	ld.bu	%d2, [%a15] 27
	ne	%d2, %d2, 15
	jz	%d2, .L83
.L85:
.LBB454:
.LBB455:
	.loc 2 2361 0
	addsc.a	%a2, %a12, %d8, 0
.LBE455:
.LBE454:
	.loc 1 591 0
	ld.bu	%d4, [%a15] 26
.LBB458:
.LBB456:
	.loc 2 2361 0
	ld.w	%d3, [%a2] 1312
.LBE456:
.LBE458:
	.loc 1 591 0
	ld.bu	%d2, [%a15] 28
.LVL215:
.LBB459:
.LBB457:
	.loc 2 2362 0
	insert	%d3, %d3, 1, 23, 1
.LVL216:
	.loc 2 2363 0
	insert	%d3, %d3, %d4, 16, 4
	.loc 2 2364 0
	st.w	[%a2] 1312, %d3
.LVL217:
	.loc 2 2365 0
	ld.w	%d3, [%a2] 1316
.LVL218:
	insert	%d2, %d3, %d2, 0, 2
.LVL219:
	st.w	[%a2] 1316, %d2
.LVL220:
.L83:
.LBE457:
.LBE459:
	.loc 1 598 0
	ld.bu	%d2, [%a15] 24
.LVL221:
.LBB460:
.LBB461:
	.loc 2 2160 0
	addsc.a	%a2, %a12, %d8, 0
	seln	%d3, %d2, %d2, 16
	ld.w	%d2, [%a2] 1316
.LVL222:
	andn	%d2, %d2, ~(-17)
	or	%d2, %d3
	st.w	[%a2] 1316, %d2
.LVL223:
	j	.L80
.LVL224:
.L100:
.LBE461:
.LBE460:
.LBE448:
.LBB473:
	.loc 1 522 0
	ld.bu	%d2, [%a15] 37
	jnz	%d2, .L105
.LVL225:
.LBB474:
.LBB475:
	.loc 2 1751 0
	ld.w	%d2, [%a2] 1284
	andn	%d2, %d2, ~(-5)
	st.w	[%a2] 1284, %d2
.LVL226:
.L78:
.LBE475:
.LBE474:
	.loc 1 545 0
	ld.bu	%d2, [%a15] 35
	ne	%d2, %d2, 15
	jz	%d2, .L77
.L79:
.LBB476:
.LBB477:
	.loc 2 2313 0
	addsc.a	%a2, %a12, %d8, 0
.LBE477:
.LBE476:
	.loc 1 547 0
	ld.bu	%d4, [%a15] 34
.LBB480:
.LBB478:
	.loc 2 2313 0
	ld.w	%d3, [%a2] 1280
.LBE478:
.LBE480:
	.loc 1 547 0
	ld.bu	%d2, [%a15] 36
.LVL227:
.LBB481:
.LBB479:
	.loc 2 2314 0
	insert	%d3, %d3, 1, 23, 1
.LVL228:
	.loc 2 2315 0
	insert	%d3, %d3, %d4, 16, 4
	.loc 2 2316 0
	st.w	[%a2] 1280, %d3
.LVL229:
	.loc 2 2317 0
	ld.w	%d3, [%a2] 1284
.LVL230:
	insert	%d2, %d3, %d2, 0, 2
.LVL231:
	st.w	[%a2] 1284, %d2
.LVL232:
.L77:
.LBE479:
.LBE481:
	.loc 1 554 0
	ld.bu	%d3, [%a15] 32
.LVL233:
.LBB482:
.LBB483:
	.loc 2 1724 0
	addsc.a	%a2, %a12, %d8, 0
	mov	%d2, 1024
	sel	%d3, %d3, %d2, 0
.LVL234:
	ld.w	%d2, [%a2] 1284
	insert	%d2, %d2, 0, 10, 1
	or	%d2, %d3
	st.w	[%a2] 1284, %d2
.LVL235:
	j	.L74
.LVL236:
.L103:
.LBE483:
.LBE482:
.LBE473:
.LBB496:
.LBB436:
.LBB437:
	.loc 2 1763 0
	ld.w	%d2, [%a12] 516
	or	%d2, %d2, 4
	st.w	[%a12] 516, %d2
.LBE437:
.LBE436:
.LBB438:
.LBB439:
	.loc 2 2197 0
	ld.w	%d2, [%a12] 512
.LBE439:
.LBE438:
	.loc 1 614 0
	ld.bu	%d4, [%a15] 45
.LBB442:
.LBB440:
	.loc 2 2198 0
	insert	%d2, %d2, 1, 15, 1
.LVL237:
.LBE440:
.LBE442:
	.loc 1 614 0
	ld.bu	%d3, [%a15] 43
.LVL238:
.LBB443:
.LBB441:
	.loc 2 2199 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 2 2200 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 2 2201 0
	st.w	[%a12] 512, %d2
.LVL239:
.LBE441:
.LBE443:
	.loc 1 616 0
	ld.bu	%d2, [%a15] 43
.LVL240:
	eq	%d2, %d2, 15
	jz	%d2, .L90
.LBB444:
.LBB445:
	.loc 2 2186 0
	ld.w	%d2, [%a12] 512
.LBE445:
.LBE444:
	.loc 1 618 0
	ld.bu	%d3, [%a15] 42
.LVL241:
.LBB447:
.LBB446:
	.loc 2 2187 0
	insert	%d2, %d2, 1, 23, 1
.LVL242:
	.loc 2 2188 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 2 2189 0
	st.w	[%a12] 512, %d2
.LVL243:
	.loc 2 2190 0
	ld.w	%d2, [%a12] 516
.LVL244:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a12] 516, %d2
	j	.L87
.LVL245:
.L105:
.LBE446:
.LBE447:
.LBE496:
.LBB497:
.LBB484:
.LBB485:
	.loc 2 1785 0
	ld.w	%d2, [%a2] 1284
	or	%d2, %d2, 4
	st.w	[%a2] 1284, %d2
.LBE485:
.LBE484:
.LBB486:
.LBB487:
	.loc 2 2324 0
	ld.w	%d2, [%a2] 1280
.LBE487:
.LBE486:
	.loc 1 526 0
	ld.bu	%d4, [%a15] 37
.LBB490:
.LBB488:
	.loc 2 2325 0
	insert	%d2, %d2, 1, 15, 1
.LVL246:
.LBE488:
.LBE490:
	.loc 1 526 0
	ld.bu	%d3, [%a15] 35
.LVL247:
.LBB491:
.LBB489:
	.loc 2 2326 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 2 2327 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 2 2328 0
	st.w	[%a2] 1280, %d2
.LVL248:
.LBE489:
.LBE491:
	.loc 1 529 0
	ld.bu	%d2, [%a15] 35
.LVL249:
	eq	%d2, %d2, 15
	jz	%d2, .L79
.LBB492:
.LBB493:
	.loc 2 2313 0
	ld.w	%d2, [%a2] 1280
.LBE493:
.LBE492:
	.loc 1 531 0
	ld.bu	%d3, [%a15] 34
.LVL250:
.LBB495:
.LBB494:
	.loc 2 2314 0
	insert	%d2, %d2, 1, 23, 1
.LVL251:
	.loc 2 2315 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 2 2316 0
	st.w	[%a2] 1280, %d2
.LVL252:
	.loc 2 2317 0
	ld.w	%d2, [%a2] 1284
.LVL253:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a2] 1284, %d2
	j	.L78
.LVL254:
.L104:
.LBE494:
.LBE495:
.LBE497:
.LBB498:
.LBB462:
.LBB451:
	.loc 2 1791 0
	ld.w	%d2, [%a2] 1316
	or	%d2, %d2, 4
	st.w	[%a2] 1316, %d2
.LBE451:
.LBE462:
.LBB463:
.LBB464:
	.loc 2 2372 0
	ld.w	%d2, [%a2] 1312
.LBE464:
.LBE463:
	.loc 1 572 0
	ld.bu	%d4, [%a15] 29
.LBB467:
.LBB465:
	.loc 2 2373 0
	insert	%d2, %d2, 1, 15, 1
.LVL255:
.LBE465:
.LBE467:
	.loc 1 572 0
	ld.bu	%d3, [%a15] 27
.LVL256:
.LBB468:
.LBB466:
	.loc 2 2374 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 2 2375 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 2 2376 0
	st.w	[%a2] 1312, %d2
.LVL257:
.LBE466:
.LBE468:
	.loc 1 574 0
	ld.bu	%d2, [%a15] 27
.LVL258:
	eq	%d2, %d2, 15
	jz	%d2, .L85
.LBB469:
.LBB470:
	.loc 2 2361 0
	ld.w	%d2, [%a2] 1312
.LBE470:
.LBE469:
	.loc 1 576 0
	ld.bu	%d3, [%a15] 26
.LVL259:
.LBB472:
.LBB471:
	.loc 2 2362 0
	insert	%d2, %d2, 1, 23, 1
.LVL260:
	.loc 2 2363 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 2 2364 0
	st.w	[%a2] 1312, %d2
.LVL261:
	.loc 2 2365 0
	ld.w	%d2, [%a2] 1316
.LVL262:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a2] 1316, %d2
	j	.L84
.LBE471:
.LBE472:
.LBE498:
.LFE359:
	.size	IfxVadc_Adc_initGroup, .-IfxVadc_Adc_initGroup
.section .text.IfxVadc_Adc_initGroupConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initGroupConfig
	.type	IfxVadc_Adc_initGroupConfig, @function
IfxVadc_Adc_initGroupConfig:
.LFB360:
	.loc 1 669 0
.LVL263:
	.loc 1 711 0
	movh	%d15, 13702
	addi	%d15, %d15, 14269
	mov.aa	%a2, %a4
	mov	%e2, 0
	lea	%a15, 7-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	st.w	[%a4] 8, %d15
	st.w	[%a4] 16, %d15
	mov	%d15, 1
	.loc 1 713 0
	st.a	[%a4]0, %a5
	.loc 1 711 0
	st.b	[%a4] 30, %d15
	st.b	[%a4] 32, %d15
	st.b	[%a4] 38, %d15
	st.b	[%a4] 46, %d15
	.loc 1 713 0
	ret
.LFE360:
	.size	IfxVadc_Adc_initGroupConfig, .-IfxVadc_Adc_initGroupConfig
.section .text.IfxVadc_Adc_initModule,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initModule
	.type	IfxVadc_Adc_initModule, @function
IfxVadc_Adc_initModule:
.LFB361:
	.loc 1 720 0
.LVL264:
	.loc 1 722 0
	ld.a	%a15, [%a5]0
.LVL265:
	.loc 1 720 0
	mov.aa	%a12, %a5
	.loc 1 723 0
	st.a	[%a4]0, %a15
.LVL266:
.LBB499:
.LBB500:
	.loc 2 1775 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL267:
	.loc 2 1777 0
	mov	%d4, %d2
	.loc 2 1775 0
	mov	%d15, %d2
.LVL268:
	.loc 2 1777 0
	call	IfxScuWdt_clearCpuEndinit
.LVL269:
	.loc 2 1778 0
	mov	%d2, 0
	.loc 2 1779 0
	mov	%d4, %d15
.LBE500:
.LBE499:
	.loc 1 734 0
	mov	%d15, 1
.LVL270:
.LBB502:
.LBB501:
	.loc 2 1778 0
	st.w	[%a15]0, %d2
	.loc 2 1779 0
	call	IfxScuWdt_setCpuEndinit
.LVL271:
.LBE501:
.LBE502:
	.loc 1 729 0
	ld.bu	%d4, [%a12] 33
	mov.aa	%a4, %a15
	call	IfxVadc_selectPowerSupplyVoltage
.LVL272:
	.loc 1 732 0
	ld.w	%d4, [%a12] 24
	mov.aa	%a4, %a15
	ftouz	%d4, %d4
	call	IfxVadc_initializeFAdcI
.LVL273:
	jnz	%d2, .L117
.L108:
	.loc 1 771 0
	mov	%d2, %d15
	ret
.L117:
	.loc 1 742 0
	ld.w	%d4, [%a12] 20
	mov.aa	%a4, %a15
	ftouz	%d4, %d4
	call	IfxVadc_initializeFAdcD
.LVL274:
	.loc 1 744 0
	mov.aa	%a4, %a15
	call	IfxVadc_getAdcAnalogFrequency
.LVL275:
	mov	%d3, 0
.LBB503:
.LBB504:
.LBB505:
.LBB506:
.LBB507:
.LBB508:
	.loc 4 177 0
	mov	%d6, 255
.LVL276:
.L110:
.LBE508:
.LBE507:
.LBE506:
.LBE505:
.LBE504:
.LBE503:
	.loc 1 750 0 discriminator 3
	add	%d15, %d3, 1
.LBB514:
.LBB515:
	.loc 2 2269 0 discriminator 3
	addi	%d4, %d3, 40
.LBE515:
.LBE514:
	.loc 1 750 0 discriminator 3
	addsc.a	%a2, %a12, %d15, 3
.LBB518:
.LBB516:
	.loc 2 2269 0 discriminator 3
	addsc.a	%a3, %a15, %d4, 2
	ld.bu	%d15, [%a2]0
	ld.w	%d5, [%a3]0
.LBE516:
.LBE518:
	.loc 1 752 0 discriminator 3
	addsc.a	%a2, %a12, %d3, 3
.LBB519:
.LBB517:
	.loc 2 2269 0 discriminator 3
	insert	%d15, %d5, %d15, 8, 3
	st.w	[%a3]0, %d15
.LVL277:
.LBE517:
.LBE519:
.LBB520:
.LBB513:
.LBB512:
.LBB511:
	.loc 2 1697 0 discriminator 3
	ld.w	%d15, [%a2] 4
	mul.f	%d15, %d2, %d15
	ftouz	%d15, %d15
	add	%d15, -2
.LVL278:
	.loc 2 1699 0 discriminator 3
	lt.u	%d5, %d15, 32
	jnz	%d5, .L109
	.loc 2 1701 0
	sh	%d15, -4
.LVL279:
	addi	%d15, %d15, 15
.LVL280:
.L109:
.LBB510:
.LBB509:
	.loc 4 177 0
#APP
	# 177 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d15, %d15, %d6
	# 0 "" 2
.LVL281:
#NO_APP
.LBE509:
.LBE510:
.LBE511:
.LBE512:
	.loc 2 2275 0
	addsc.a	%a2, %a15, %d4, 2
	ld.w	%d4, [%a2]0
	insert	%d15, %d4, %d15, 0, 5
.LVL282:
	st.w	[%a2]0, %d15
.LVL283:
.LBE513:
.LBE520:
	.loc 1 747 0
	jne	%d3, 1, .L113
	.loc 1 756 0
	ld.bu	%d2, [%a12] 32
.LVL284:
	.loc 1 770 0
	mov	%d15, 0
	.loc 1 756 0
	jne	%d2, 1, .L108
.LVL285:
.L111:
	addi	%d8, %d15, 16
	and	%d8, %d8, 255
	.loc 1 761 0 discriminator 3
	mov.aa	%a4, %a15
	mov	%d4, %d8
	call	IfxVadc_enableAccess
.LVL286:
.LBB521:
.LBB522:
	.loc 2 2142 0 discriminator 3
	sh	%d2, %d15, 10
	addsc.a	%a2, %a15, %d2, 0
.LBE522:
.LBE521:
	.loc 1 763 0 discriminator 3
	mov.aa	%a4, %a15
.LBB525:
.LBB523:
	.loc 2 2142 0 discriminator 3
	ld.w	%d2, [%a2] 1152
.LBE523:
.LBE525:
	.loc 1 763 0 discriminator 3
	mov	%d4, %d8
.LBB526:
.LBB524:
	.loc 2 2142 0 discriminator 3
	or	%d2, %d2, 3
	add	%d15, 1
.LVL287:
	st.w	[%a2] 1152, %d2
.LBE524:
.LBE526:
	.loc 1 763 0 discriminator 3
	call	IfxVadc_disableAccess
.LVL288:
	.loc 1 759 0 discriminator 3
	ne	%d2, %d15, 11
	jnz	%d2, .L111
	.loc 1 767 0
	mov.aa	%a4, %a15
	call	IfxVadc_startupCalibration
.LVL289:
	.loc 1 770 0
	mov	%d15, 0
.LVL290:
	.loc 1 771 0
	mov	%d2, %d15
	ret
.LVL291:
.L113:
	mov	%d3, 1
.LVL292:
	j	.L110
.LFE361:
	.size	IfxVadc_Adc_initModule, .-IfxVadc_Adc_initModule
.section .text.IfxVadc_Adc_initModuleConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initModuleConfig
	.type	IfxVadc_Adc_initModuleConfig, @function
IfxVadc_Adc_initModuleConfig:
.LFB362:
	.loc 1 775 0
.LVL293:
	.loc 1 777 0
	movh	%d15, 19353
	addi	%d15, %d15, -27008
	.loc 1 775 0
	mov.aa	%a15, %a4
	.loc 1 776 0
	st.a	[%a15]0, %a5
	.loc 1 775 0
	mov.aa	%a4, %a5
.LVL294:
	.loc 1 777 0
	st.w	[%a15] 24, %d15
	.loc 1 779 0
	call	IfxVadc_getAdcDigitalFrequency
.LVL295:
	st.w	[%a15] 20, %d2
	.loc 1 780 0
	call	IfxScuCcu_getSpbFrequency
.LVL296:
	st.w	[%a15] 28, %d2
	.loc 1 782 0
	movh	%d2, 13702
	.loc 1 781 0
	mov	%d15, 0
	.loc 1 782 0
	addi	%d2, %d2, 14269
	.loc 1 781 0
	st.b	[%a15] 8, %d15
	.loc 1 782 0
	st.w	[%a15] 4, %d2
	.loc 1 783 0
	st.b	[%a15] 16, %d15
	.loc 1 784 0
	st.w	[%a15] 12, %d2
	.loc 1 785 0
	st.b	[%a15] 32, %d15
	.loc 1 786 0
	st.b	[%a15] 33, %d15
	ret
.LFE362:
	.size	IfxVadc_Adc_initModuleConfig, .-IfxVadc_Adc_initModuleConfig
.section .text.IfxVadc_Adc_initExternalMultiplexerModeConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initExternalMultiplexerModeConfig
	.type	IfxVadc_Adc_initExternalMultiplexerModeConfig, @function
IfxVadc_Adc_initExternalMultiplexerModeConfig:
.LFB363:
	.loc 1 791 0
.LVL297:
	.loc 1 793 0
	mov	%d15, 0
	.loc 1 791 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 801 0
	mov.aa	%a2, %SP
	.loc 1 793 0
	st.b	[%a4] 9, %d15
	.loc 1 794 0
	st.b	[%a4] 8, %d15
	.loc 1 795 0
	st.b	[%a4] 10, %d15
	.loc 1 796 0
	st.b	[%a4] 5, %d15
	.loc 1 797 0
	st.b	[%a4] 6, %d15
	.loc 1 798 0
	st.b	[%a4] 7, %d15
	.loc 1 799 0
	st.b	[%a4] 4, %d15
	.loc 1 800 0
	st.b	[%a4] 28, %d15
	.loc 1 807 0
	mov	%d15, -128
	.loc 1 801 0
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
.LVL298:
	.loc 1 792 0
	st.a	[%a4]0, %a5
	.loc 1 801 0
	mov.aa	%a15, %SP
	.loc 1 807 0
	st.b	[%SP] 12, %d15
	lea	%a4, [%a4] 12
.LVL299:
		# #chunks=2, chunksize=8, remains=0
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
.LVL300:
	ret
.LFE363:
	.size	IfxVadc_Adc_initExternalMultiplexerModeConfig, .-IfxVadc_Adc_initExternalMultiplexerModeConfig
.section .text.IfxVadc_Adc_initExternalMultiplexerMode,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initExternalMultiplexerMode
	.type	IfxVadc_Adc_initExternalMultiplexerMode, @function
IfxVadc_Adc_initExternalMultiplexerMode:
.LFB364:
	.loc 1 812 0
.LVL301:
	.loc 1 814 0
	ld.bu	%d15, [%a5] 8
	.loc 1 812 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 814 0
	sh	%d2, %d15, 10
	addi	%d2, %d2, 1152
	addsc.a	%a14, %a4, %d2, 0
.LVL302:
.LBB527:
.LBB528:
	.loc 2 2256 0
	ld.bu	%d2, [%a5] 10
.LBE528:
.LBE527:
	.loc 1 812 0
	mov.aa	%a13, %a4
	mov.aa	%a15, %a5
.LBB531:
.LBB529:
	.loc 2 2256 0
	jnz	%d2, .L121
	.loc 2 2258 0
	ld.w	%d2, [%a4] 1008
	insert	%d15, %d2, %d15, 0, 4
	st.w	[%a4] 1008, %d15
.LVL303:
.L123:
.LBE529:
.LBE531:
	.loc 1 812 0 discriminator 1
	mov	%d15, 0
.LVL304:
.L122:
	.loc 1 819 0
	addsc.a	%a2, %a15, %d15, 2
	ld.a	%a12, [%a2] 12
	jz.a	%a12, .L124
.LBB532:
.LBB533:
.LBB534:
.LBB535:
	.file 5 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
	.loc 5 568 0
	ld.bu	%d3, [%a12] 12
	ld.bu	%d2, [%a15] 24
	ld.a	%a4, [%a12] 4
	or	%d5, %d3, %d2
	ld.bu	%d4, [%a12] 8
	and	%d5, %d5, 255
.LBE535:
.LBE534:
.LBE533:
.LBE532:
	.loc 1 821 0
	ld.bu	%d8, [%a15] 25
.LVL305:
.LBB539:
.LBB538:
.LBB537:
.LBB536:
	.loc 5 568 0
	call	IfxPort_setPinMode
.LVL306:
.LBE536:
.LBE537:
	.loc 2 2087 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, %d8
	call	IfxPort_setPinPadDriver
.LVL307:
.L124:
	add	%d15, 1
.LVL308:
.LBE538:
.LBE539:
	.loc 1 817 0 discriminator 2
	jne	%d15, 3, .L122
	.loc 1 825 0
	ld.bu	%d15, [%a15] 7
.LVL309:
	st.w	[%SP]0, %d15
	ld.bu	%d4, [%a15] 4
	ld.bu	%d15, [%a15] 28
	ld.bu	%d5, [%a15] 9
	ld.bu	%d6, [%a15] 5
	ld.bu	%d7, [%a15] 6
	st.w	[%SP] 4, %d15
	mov.aa	%a4, %a13
	mov.aa	%a5, %a14
	j	IfxVadc_configExternalMultiplexerMode
.LVL310:
.L121:
.LBB540:
.LBB530:
	.loc 2 2262 0
	ld.w	%d2, [%a4] 1008
	insert	%d15, %d2, %d15, 4, 4
	st.w	[%a4] 1008, %d15
.LVL311:
	j	.L123
.LBE530:
.LBE540:
.LFE364:
	.size	IfxVadc_Adc_initExternalMultiplexerMode, .-IfxVadc_Adc_initExternalMultiplexerMode
.section .rodata.IfxVadc_Adc_masterIndex,"a",@progbits
	.type	IfxVadc_Adc_masterIndex, @object
	.size	IfxVadc_Adc_masterIndex, 121
IfxVadc_Adc_masterIndex:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
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
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.byte	0x4
	.uaword	.LCFI0-.LFB355
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.byte	0x4
	.uaword	.LCFI1-.LFB363
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.byte	0x4
	.uaword	.LCFI2-.LFB364
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 6 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxSrc_cfg.h"
	.file 7 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 8 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
	.file 9 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h"
	.file 10 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxVadc_cfg.h"
	.file 11 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_regdef.h"
	.file 12 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_regdef.h"
	.file 13 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxVadc_PinMap.h"
	.file 14 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
	.file 15 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
	.file 16 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
	.file 17 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdf6f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.c"
	.string	"C:\\\\Robot_Project_IFX\\\\Robot_Project_TC29xB"
	.uaword	.Ldebug_ranges0+0x4a8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.byte	0x32
	.uaword	0x1e1
	.uleb128 0x4
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxSrc_Tos"
	.byte	0x6
	.byte	0x37
	.uaword	0x191
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
	.uleb128 0x5
	.string	"uint8"
	.byte	0x7
	.byte	0x59
	.uaword	0x237
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x7
	.byte	0x5b
	.uaword	0x263
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x7
	.byte	0x5c
	.uaword	0x1f3
	.uleb128 0x5
	.string	"uint32"
	.byte	0x7
	.byte	0x5d
	.uaword	0x1ff
	.uleb128 0x5
	.string	"float32"
	.byte	0x7
	.byte	0x5e
	.uaword	0x178
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x7
	.byte	0x68
	.uaword	0x237
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
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2f6
	.uleb128 0x7
	.uleb128 0x5
	.string	"Ifx_Priority"
	.byte	0x8
	.byte	0x55
	.uaword	0x255
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0x7d
	.uaword	0x32e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x8
	.byte	0x7f
	.uaword	0x2f0
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x8
	.byte	0x80
	.uaword	0x279
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxModule_IndexMap"
	.byte	0x8
	.byte	0x81
	.uaword	0x30b
	.uleb128 0xb
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0x44e
	.uleb128 0xc
	.string	"SRPN"
	.byte	0x9
	.byte	0x2f
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0x30
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"SRE"
	.byte	0x9
	.byte	0x31
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"TOS"
	.byte	0x9
	.byte	0x32
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x9
	.byte	0x33
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"ECC"
	.byte	0x9
	.byte	0x34
	.uaword	0x181
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x9
	.byte	0x35
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"SRR"
	.byte	0x9
	.byte	0x36
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"CLRR"
	.byte	0x9
	.byte	0x37
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"SETR"
	.byte	0x9
	.byte	0x38
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"IOV"
	.byte	0x9
	.byte	0x39
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IOVCLR"
	.byte	0x9
	.byte	0x3a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"SWS"
	.byte	0x9
	.byte	0x3b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"SWSCLR"
	.byte	0x9
	.byte	0x3c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x9
	.byte	0x3d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x9
	.byte	0x3e
	.uaword	0x348
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x46
	.uaword	0x48b
	.uleb128 0xf
	.string	"U"
	.byte	0x9
	.byte	0x48
	.uaword	0x181
	.uleb128 0xf
	.string	"I"
	.byte	0x9
	.byte	0x49
	.uaword	0x214
	.uleb128 0xf
	.string	"B"
	.byte	0x9
	.byte	0x4a
	.uaword	0x44e
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_SRCR"
	.byte	0x9
	.byte	0x4b
	.uaword	0x467
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4bb
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4cb
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4db
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4eb
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4fb
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x5f
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x50b
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x27
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x51b
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x52b
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x53b
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x54b
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0xa
	.byte	0x64
	.uaword	0x665
	.uleb128 0x4
	.string	"IfxVadc_GroupId_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_GroupId_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_GroupId_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_GroupId_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_GroupId_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_GroupId_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_GroupId_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_GroupId_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_GroupId_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_GroupId_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_GroupId_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_GroupId_global0"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_GroupId_global1"
	.sleb128 12
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_GroupId"
	.byte	0xa
	.byte	0x72
	.uaword	0x54b
	.uleb128 0xb
	.string	"_Ifx_VADC_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x31
	.uaword	0x891
	.uleb128 0xc
	.string	"EN0"
	.byte	0xb
	.byte	0x33
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0xb
	.byte	0x34
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0xb
	.byte	0x35
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0xb
	.byte	0x36
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0xb
	.byte	0x37
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0xb
	.byte	0x38
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0xb
	.byte	0x39
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0xb
	.byte	0x3a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0xb
	.byte	0x3b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0xb
	.byte	0x3c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0xb
	.byte	0x3d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0xb
	.byte	0x3e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0xb
	.byte	0x3f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0xb
	.byte	0x40
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0xb
	.byte	0x41
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0xb
	.byte	0x42
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0xb
	.byte	0x43
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0xb
	.byte	0x44
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0xb
	.byte	0x45
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0xb
	.byte	0x46
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0xb
	.byte	0x47
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0xb
	.byte	0x48
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0xb
	.byte	0x49
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0xb
	.byte	0x4a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0xb
	.byte	0x4b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0xb
	.byte	0x4c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0xb
	.byte	0x4d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0xb
	.byte	0x4e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0xb
	.byte	0x4f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0xb
	.byte	0x50
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0xb
	.byte	0x51
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0xb
	.byte	0x52
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCEN0_Bits"
	.byte	0xb
	.byte	0x53
	.uaword	0x67c
	.uleb128 0xb
	.string	"_Ifx_VADC_ACCPROT0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.uaword	0xa6e
	.uleb128 0xc
	.string	"APC0"
	.byte	0xb
	.byte	0x58
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"APC1"
	.byte	0xb
	.byte	0x59
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"APC2"
	.byte	0xb
	.byte	0x5a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"APC3"
	.byte	0xb
	.byte	0x5b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"APC4"
	.byte	0xb
	.byte	0x5c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"APC5"
	.byte	0xb
	.byte	0x5d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"APC6"
	.byte	0xb
	.byte	0x5e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"APC7"
	.byte	0xb
	.byte	0x5f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"APC8"
	.byte	0xb
	.byte	0x60
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"APC9"
	.byte	0xb
	.byte	0x61
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"APC10"
	.byte	0xb
	.byte	0x62
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0xb
	.byte	0x63
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"APEM"
	.byte	0xb
	.byte	0x64
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"API0"
	.byte	0xb
	.byte	0x65
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"API1"
	.byte	0xb
	.byte	0x66
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"API2"
	.byte	0xb
	.byte	0x67
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"API3"
	.byte	0xb
	.byte	0x68
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"API4"
	.byte	0xb
	.byte	0x69
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"API5"
	.byte	0xb
	.byte	0x6a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"API6"
	.byte	0xb
	.byte	0x6b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"API7"
	.byte	0xb
	.byte	0x6c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"API8"
	.byte	0xb
	.byte	0x6d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"API9"
	.byte	0xb
	.byte	0x6e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"API10"
	.byte	0xb
	.byte	0x6f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.byte	0x70
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"APGC"
	.byte	0xb
	.byte	0x71
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT0_Bits"
	.byte	0xb
	.byte	0x72
	.uaword	0x8ad
	.uleb128 0xb
	.string	"_Ifx_VADC_ACCPROT1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x75
	.uaword	0xc3d
	.uleb128 0xc
	.string	"APS0"
	.byte	0xb
	.byte	0x77
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"APS1"
	.byte	0xb
	.byte	0x78
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"APS2"
	.byte	0xb
	.byte	0x79
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"APS3"
	.byte	0xb
	.byte	0x7a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"APS4"
	.byte	0xb
	.byte	0x7b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"APS5"
	.byte	0xb
	.byte	0x7c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"APS6"
	.byte	0xb
	.byte	0x7d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"APS7"
	.byte	0xb
	.byte	0x7e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"APS8"
	.byte	0xb
	.byte	0x7f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"APS9"
	.byte	0xb
	.byte	0x80
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"APS10"
	.byte	0xb
	.byte	0x81
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0xb
	.byte	0x82
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"APTF"
	.byte	0xb
	.byte	0x83
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"APR0"
	.byte	0xb
	.byte	0x84
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"APR1"
	.byte	0xb
	.byte	0x85
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"APR2"
	.byte	0xb
	.byte	0x86
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"APR3"
	.byte	0xb
	.byte	0x87
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"APR4"
	.byte	0xb
	.byte	0x88
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"APR5"
	.byte	0xb
	.byte	0x89
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"APR6"
	.byte	0xb
	.byte	0x8a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"APR7"
	.byte	0xb
	.byte	0x8b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"APR8"
	.byte	0xb
	.byte	0x8c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"APR9"
	.byte	0xb
	.byte	0x8d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"APR10"
	.byte	0xb
	.byte	0x8e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.byte	0x8f
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT1_Bits"
	.byte	0xb
	.byte	0x90
	.uaword	0xa8c
	.uleb128 0xb
	.string	"_Ifx_VADC_BRSCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x93
	.uaword	0xd2a
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0xb
	.byte	0x95
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0xb
	.byte	0x96
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"XTSEL"
	.byte	0xb
	.byte	0x97
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"XTLVL"
	.byte	0xb
	.byte	0x98
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0xb
	.byte	0x99
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"XTWC"
	.byte	0xb
	.byte	0x9a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"GTSEL"
	.byte	0xb
	.byte	0x9b
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"GTLVL"
	.byte	0xb
	.byte	0x9c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0xb
	.byte	0x9d
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"GTWC"
	.byte	0xb
	.byte	0x9e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xb
	.byte	0x9f
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSCTRL_Bits"
	.byte	0xb
	.byte	0xa0
	.uaword	0xc5b
	.uleb128 0xb
	.string	"_Ifx_VADC_BRSMR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa3
	.uaword	0xe23
	.uleb128 0xc
	.string	"ENGT"
	.byte	0xb
	.byte	0xa5
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"ENTR"
	.byte	0xb
	.byte	0xa6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"ENSI"
	.byte	0xb
	.byte	0xa7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"SCAN"
	.byte	0xb
	.byte	0xa8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"LDM"
	.byte	0xb
	.byte	0xa9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0xb
	.byte	0xaa
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"REQGT"
	.byte	0xb
	.byte	0xab
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"CLRPND"
	.byte	0xb
	.byte	0xac
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"LDEV"
	.byte	0xb
	.byte	0xad
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xb
	.byte	0xae
	.uaword	0x181
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0xb
	.byte	0xaf
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.byte	0xb0
	.uaword	0x181
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSMR_Bits"
	.byte	0xb
	.byte	0xb1
	.uaword	0xd47
	.uleb128 0xb
	.string	"_Ifx_VADC_BRSPND_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb4
	.uaword	0xe70
	.uleb128 0xc
	.string	"CHPNDGy"
	.byte	0xb
	.byte	0xb6
	.uaword	0x181
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSPND_Bits"
	.byte	0xb
	.byte	0xb7
	.uaword	0xe3e
	.uleb128 0xb
	.string	"_Ifx_VADC_BRSSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xba
	.uaword	0xebe
	.uleb128 0xc
	.string	"CHSELGy"
	.byte	0xb
	.byte	0xbc
	.uaword	0x181
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSSEL_Bits"
	.byte	0xb
	.byte	0xbd
	.uaword	0xe8c
	.uleb128 0xb
	.string	"_Ifx_VADC_CLC_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc0
	.uaword	0xf44
	.uleb128 0xc
	.string	"DISR"
	.byte	0xb
	.byte	0xc2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"DISS"
	.byte	0xb
	.byte	0xc3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xb
	.byte	0xc4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EDIS"
	.byte	0xb
	.byte	0xc5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0xb
	.byte	0xc6
	.uaword	0x181
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_CLC_Bits"
	.byte	0xb
	.byte	0xc7
	.uaword	0xeda
	.uleb128 0xb
	.string	"_Ifx_VADC_EMUXSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xca
	.uaword	0xfb4
	.uleb128 0xc
	.string	"EMUXGRP0"
	.byte	0xb
	.byte	0xcc
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EMUXGRP1"
	.byte	0xb
	.byte	0xcd
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xb
	.byte	0xce
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_EMUXSEL_Bits"
	.byte	0xb
	.byte	0xcf
	.uaword	0xf5d
	.uleb128 0xb
	.string	"_Ifx_VADC_G_ALIAS_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd2
	.uaword	0x1033
	.uleb128 0xc
	.string	"ALIAS0"
	.byte	0xb
	.byte	0xd4
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.uaword	.LASF17
	.byte	0xb
	.byte	0xd5
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"ALIAS1"
	.byte	0xb
	.byte	0xd6
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0xb
	.byte	0xd7
	.uaword	0x181
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ALIAS_Bits"
	.byte	0xb
	.byte	0xd8
	.uaword	0xfd1
	.uleb128 0xb
	.string	"_Ifx_VADC_G_ARBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xdb
	.uaword	0x116c
	.uleb128 0xc
	.string	"ANONC"
	.byte	0xb
	.byte	0xdd
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xb
	.byte	0xde
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"ARBRND"
	.byte	0xb
	.byte	0xdf
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0xb
	.byte	0xe0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"ARBM"
	.byte	0xb
	.byte	0xe1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xb
	.byte	0xe2
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"ANONS"
	.byte	0xb
	.byte	0xe3
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"CSRC"
	.byte	0xb
	.byte	0xe4
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"CHNR"
	.byte	0xb
	.byte	0xe5
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"SYNRUN"
	.byte	0xb
	.byte	0xe6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"reserved_26"
	.byte	0xb
	.byte	0xe7
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"CAL"
	.byte	0xb
	.byte	0xe8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"CALS"
	.byte	0xb
	.byte	0xe9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"BUSY"
	.byte	0xb
	.byte	0xea
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"SAMPLE"
	.byte	0xb
	.byte	0xeb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBCFG_Bits"
	.byte	0xb
	.byte	0xec
	.uaword	0x1050
	.uleb128 0xb
	.string	"_Ifx_VADC_G_ARBPR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xef
	.uaword	0x128b
	.uleb128 0xc
	.string	"PRIO0"
	.byte	0xb
	.byte	0xf1
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xb
	.byte	0xf2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"CSM0"
	.byte	0xb
	.byte	0xf3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"PRIO1"
	.byte	0xb
	.byte	0xf4
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0xb
	.byte	0xf5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"CSM1"
	.byte	0xb
	.byte	0xf6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"PRIO2"
	.byte	0xb
	.byte	0xf7
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xb
	.byte	0xf8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"CSM2"
	.byte	0xb
	.byte	0xf9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0xb
	.byte	0xfa
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"ASEN0"
	.byte	0xb
	.byte	0xfb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"ASEN1"
	.byte	0xb
	.byte	0xfc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"ASEN2"
	.byte	0xb
	.byte	0xfd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.byte	0xfe
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBPR_Bits"
	.byte	0xb
	.byte	0xff
	.uaword	0x118a
	.uleb128 0x12
	.string	"_Ifx_VADC_G_ASCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x102
	.uaword	0x13b6
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x104
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x105
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"XTSEL"
	.byte	0xb
	.uahalf	0x106
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"XTLVL"
	.byte	0xb
	.uahalf	0x107
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x108
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"XTWC"
	.byte	0xb
	.uahalf	0x109
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"GTSEL"
	.byte	0xb
	.uahalf	0x10a
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"GTLVL"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x10c
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x10d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x10f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x110
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x111
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASCTRL_Bits"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x12a8
	.uleb128 0x12
	.string	"_Ifx_VADC_G_ASMR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x115
	.uaword	0x14bf
	.uleb128 0x14
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x118
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x119
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"SCAN"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"LDM"
	.byte	0xb
	.uahalf	0x11b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x11d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"CLRPND"
	.byte	0xb
	.uahalf	0x11e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"LDEV"
	.byte	0xb
	.uahalf	0x11f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x120
	.uaword	0x181
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0xb
	.uahalf	0x121
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x122
	.uaword	0x181
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASMR_Bits"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x13d5
	.uleb128 0x12
	.string	"_Ifx_VADC_G_ASPND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x126
	.uaword	0x150f
	.uleb128 0x14
	.string	"CHPND"
	.byte	0xb
	.uahalf	0x128
	.uaword	0x181
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASPND_Bits"
	.byte	0xb
	.uahalf	0x129
	.uaword	0x14dc
	.uleb128 0x12
	.string	"_Ifx_VADC_G_ASSEL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x12c
	.uaword	0x1560
	.uleb128 0x14
	.string	"CHSEL"
	.byte	0xb
	.uahalf	0x12e
	.uaword	0x181
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASSEL_Bits"
	.byte	0xb
	.uahalf	0x12f
	.uaword	0x152d
	.uleb128 0x12
	.string	"_Ifx_VADC_G_BFL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x132
	.uaword	0x1699
	.uleb128 0x14
	.string	"BFL0"
	.byte	0xb
	.uahalf	0x134
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"BFL1"
	.byte	0xb
	.uahalf	0x135
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"BFL2"
	.byte	0xb
	.uahalf	0x136
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"BFL3"
	.byte	0xb
	.uahalf	0x137
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x138
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"BFA0"
	.byte	0xb
	.uahalf	0x139
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"BFA1"
	.byte	0xb
	.uahalf	0x13a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"BFA2"
	.byte	0xb
	.uahalf	0x13b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"BFA3"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x13d
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"BFI0"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"BFI1"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"BFI2"
	.byte	0xb
	.uahalf	0x140
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"BFI3"
	.byte	0xb
	.uahalf	0x141
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x142
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFL_Bits"
	.byte	0xb
	.uahalf	0x143
	.uaword	0x157e
	.uleb128 0x12
	.string	"_Ifx_VADC_G_BFLC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x146
	.uaword	0x1729
	.uleb128 0x14
	.string	"BFM0"
	.byte	0xb
	.uahalf	0x148
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"BFM1"
	.byte	0xb
	.uahalf	0x149
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"BFM2"
	.byte	0xb
	.uahalf	0x14a
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"BFM3"
	.byte	0xb
	.uahalf	0x14b
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x14c
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFLC_Bits"
	.byte	0xb
	.uahalf	0x14d
	.uaword	0x16b5
	.uleb128 0x12
	.string	"_Ifx_VADC_G_BFLNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x150
	.uaword	0x17c3
	.uleb128 0x14
	.string	"BFL0NP"
	.byte	0xb
	.uahalf	0x152
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"BFL1NP"
	.byte	0xb
	.uahalf	0x153
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"BFL2NP"
	.byte	0xb
	.uahalf	0x154
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"BFL3NP"
	.byte	0xb
	.uahalf	0x155
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x156
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFLNP_Bits"
	.byte	0xb
	.uahalf	0x157
	.uaword	0x1746
	.uleb128 0x12
	.string	"_Ifx_VADC_G_BFLS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x15a
	.uaword	0x18a9
	.uleb128 0x14
	.string	"BFC0"
	.byte	0xb
	.uahalf	0x15c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"BFC1"
	.byte	0xb
	.uahalf	0x15d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"BFC2"
	.byte	0xb
	.uahalf	0x15e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"BFC3"
	.byte	0xb
	.uahalf	0x15f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x160
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"BFS0"
	.byte	0xb
	.uahalf	0x161
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"BFS1"
	.byte	0xb
	.uahalf	0x162
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"BFS2"
	.byte	0xb
	.uahalf	0x163
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"BFS3"
	.byte	0xb
	.uahalf	0x164
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x165
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFLS_Bits"
	.byte	0xb
	.uahalf	0x166
	.uaword	0x17e1
	.uleb128 0x12
	.string	"_Ifx_VADC_G_BOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x169
	.uaword	0x1927
	.uleb128 0x13
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x16b
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x16c
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x16d
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x16e
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BOUND_Bits"
	.byte	0xb
	.uahalf	0x16f
	.uaword	0x18c6
	.uleb128 0x12
	.string	"_Ifx_VADC_G_CEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x172
	.uaword	0x19ff
	.uleb128 0x14
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x174
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x175
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x176
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x177
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x178
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x179
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x17a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x17b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CEFCLR_Bits"
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x1945
	.uleb128 0x12
	.string	"_Ifx_VADC_G_CEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x180
	.uaword	0x1ad8
	.uleb128 0x14
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x182
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x183
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x184
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x185
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x186
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x187
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x188
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x189
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x18a
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CEFLAG_Bits"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0x1a1e
	.uleb128 0x12
	.string	"_Ifx_VADC_G_CEVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x18e
	.uaword	0x1bb1
	.uleb128 0x14
	.string	"CEV0NP"
	.byte	0xb
	.uahalf	0x190
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"CEV1NP"
	.byte	0xb
	.uahalf	0x191
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"CEV2NP"
	.byte	0xb
	.uahalf	0x192
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"CEV3NP"
	.byte	0xb
	.uahalf	0x193
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"CEV4NP"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"CEV5NP"
	.byte	0xb
	.uahalf	0x195
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"CEV6NP"
	.byte	0xb
	.uahalf	0x196
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"CEV7NP"
	.byte	0xb
	.uahalf	0x197
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CEVNP0_Bits"
	.byte	0xb
	.uahalf	0x198
	.uaword	0x1af7
	.uleb128 0x12
	.string	"_Ifx_VADC_G_CHASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x19b
	.uaword	0x1e67
	.uleb128 0x14
	.string	"ASSCH0"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"ASSCH1"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"ASSCH2"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"ASSCH3"
	.byte	0xb
	.uahalf	0x1a0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"ASSCH4"
	.byte	0xb
	.uahalf	0x1a1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"ASSCH5"
	.byte	0xb
	.uahalf	0x1a2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"ASSCH6"
	.byte	0xb
	.uahalf	0x1a3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"ASSCH7"
	.byte	0xb
	.uahalf	0x1a4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"ASSCH8"
	.byte	0xb
	.uahalf	0x1a5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"ASSCH9"
	.byte	0xb
	.uahalf	0x1a6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"ASSCH10"
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"ASSCH11"
	.byte	0xb
	.uahalf	0x1a8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"ASSCH12"
	.byte	0xb
	.uahalf	0x1a9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"ASSCH13"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"ASSCH14"
	.byte	0xb
	.uahalf	0x1ab
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"ASSCH15"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"ASSCH16"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"ASSCH17"
	.byte	0xb
	.uahalf	0x1ae
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"ASSCH18"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"ASSCH19"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"ASSCH20"
	.byte	0xb
	.uahalf	0x1b1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"ASSCH21"
	.byte	0xb
	.uahalf	0x1b2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"ASSCH22"
	.byte	0xb
	.uahalf	0x1b3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"ASSCH23"
	.byte	0xb
	.uahalf	0x1b4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"ASSCH24"
	.byte	0xb
	.uahalf	0x1b5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"ASSCH25"
	.byte	0xb
	.uahalf	0x1b6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"ASSCH26"
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.string	"ASSCH27"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"ASSCH28"
	.byte	0xb
	.uahalf	0x1b9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"ASSCH29"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"ASSCH30"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"ASSCH31"
	.byte	0xb
	.uahalf	0x1bc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CHASS_Bits"
	.byte	0xb
	.uahalf	0x1bd
	.uaword	0x1bd0
	.uleb128 0x12
	.string	"_Ifx_VADC_G_CHCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x1fbb
	.uleb128 0x14
	.string	"ICLSEL"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"BNDSELL"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"BNDSELU"
	.byte	0xb
	.uahalf	0x1c5
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"CHEVMODE"
	.byte	0xb
	.uahalf	0x1c6
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"SYNC"
	.byte	0xb
	.uahalf	0x1c7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"REFSEL"
	.byte	0xb
	.uahalf	0x1c8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"BNDSELX"
	.byte	0xb
	.uahalf	0x1c9
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"RESREG"
	.byte	0xb
	.uahalf	0x1ca
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"RESTBS"
	.byte	0xb
	.uahalf	0x1cb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"RESPOS"
	.byte	0xb
	.uahalf	0x1cc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x1cd
	.uaword	0x181
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"BWDCH"
	.byte	0xb
	.uahalf	0x1ce
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"BWDEN"
	.byte	0xb
	.uahalf	0x1cf
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x1d0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CHCTR_Bits"
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0x1e85
	.uleb128 0x12
	.string	"_Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x20b6
	.uleb128 0x14
	.string	"EMUXSET"
	.byte	0xb
	.uahalf	0x1d6
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x1d7
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"EMUXACT"
	.byte	0xb
	.uahalf	0x1d8
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"EMUXCH"
	.byte	0xb
	.uahalf	0x1da
	.uaword	0x181
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"EMUXMODE"
	.byte	0xb
	.uahalf	0x1db
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"EMXCOD"
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"EMXST"
	.byte	0xb
	.uahalf	0x1dd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"EMXCSS"
	.byte	0xb
	.uahalf	0x1de
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"EMXWC"
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0xb
	.uahalf	0x1e0
	.uaword	0x1fd9
	.uleb128 0x12
	.string	"_Ifx_VADC_G_Q0R0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1e3
	.uaword	0x2155
	.uleb128 0x13
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x1e5
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"RF"
	.byte	0xb
	.uahalf	0x1e6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1e7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1e8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"V"
	.byte	0xb
	.uahalf	0x1e9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x1ea
	.uaword	0x181
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_Q0R0_Bits"
	.byte	0xb
	.uahalf	0x1eb
	.uaword	0x20d6
	.uleb128 0x12
	.string	"_Ifx_VADC_G_QBUR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1ee
	.uaword	0x21f2
	.uleb128 0x13
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x1f0
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"RF"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"V"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0x181
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QBUR0_Bits"
	.byte	0xb
	.uahalf	0x1f6
	.uaword	0x2172
	.uleb128 0x12
	.string	"_Ifx_VADC_G_QCTRL0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0x231e
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"XTSEL"
	.byte	0xb
	.uahalf	0x1fd
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"XTLVL"
	.byte	0xb
	.uahalf	0x1fe
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x1ff
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"XTWC"
	.byte	0xb
	.uahalf	0x200
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"GTSEL"
	.byte	0xb
	.uahalf	0x201
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"GTLVL"
	.byte	0xb
	.uahalf	0x202
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x203
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x204
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x205
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x206
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x207
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x208
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QCTRL0_Bits"
	.byte	0xb
	.uahalf	0x209
	.uaword	0x2210
	.uleb128 0x12
	.string	"_Ifx_VADC_G_QINR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x20c
	.uaword	0x23af
	.uleb128 0x13
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x20e
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"RF"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x210
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x211
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x212
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QINR0_Bits"
	.byte	0xb
	.uahalf	0x213
	.uaword	0x233d
	.uleb128 0x12
	.string	"_Ifx_VADC_G_QMR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x216
	.uaword	0x2493
	.uleb128 0x14
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x218
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x219
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x21a
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"CLRV"
	.byte	0xb
	.uahalf	0x21b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"TREV"
	.byte	0xb
	.uahalf	0x21c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"FLUSH"
	.byte	0xb
	.uahalf	0x21d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"CEV"
	.byte	0xb
	.uahalf	0x21e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x21f
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0xb
	.uahalf	0x220
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x221
	.uaword	0x181
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QMR0_Bits"
	.byte	0xb
	.uahalf	0x222
	.uaword	0x23cd
	.uleb128 0x12
	.string	"_Ifx_VADC_G_QSR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x225
	.uaword	0x2544
	.uleb128 0x14
	.string	"FILL"
	.byte	0xb
	.uahalf	0x227
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x228
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"EMPTY"
	.byte	0xb
	.uahalf	0x229
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x22a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"EV"
	.byte	0xb
	.uahalf	0x22c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x22d
	.uaword	0x181
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QSR0_Bits"
	.byte	0xb
	.uahalf	0x22e
	.uaword	0x24b0
	.uleb128 0x12
	.string	"_Ifx_VADC_G_RCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x231
	.uaword	0x2604
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x233
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x234
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"DMM"
	.byte	0xb
	.uahalf	0x235
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x236
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"WFR"
	.byte	0xb
	.uahalf	0x237
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"FEN"
	.byte	0xb
	.uahalf	0x238
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x239
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x23a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RCR_Bits"
	.byte	0xb
	.uahalf	0x23b
	.uaword	0x2561
	.uleb128 0x12
	.string	"_Ifx_VADC_G_REFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x23e
	.uaword	0x2768
	.uleb128 0x14
	.string	"REV0"
	.byte	0xb
	.uahalf	0x240
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"REV1"
	.byte	0xb
	.uahalf	0x241
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"REV2"
	.byte	0xb
	.uahalf	0x242
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"REV3"
	.byte	0xb
	.uahalf	0x243
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"REV4"
	.byte	0xb
	.uahalf	0x244
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"REV5"
	.byte	0xb
	.uahalf	0x245
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"REV6"
	.byte	0xb
	.uahalf	0x246
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"REV7"
	.byte	0xb
	.uahalf	0x247
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"REV8"
	.byte	0xb
	.uahalf	0x248
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"REV9"
	.byte	0xb
	.uahalf	0x249
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"REV10"
	.byte	0xb
	.uahalf	0x24a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"REV11"
	.byte	0xb
	.uahalf	0x24b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"REV12"
	.byte	0xb
	.uahalf	0x24c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"REV13"
	.byte	0xb
	.uahalf	0x24d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"REV14"
	.byte	0xb
	.uahalf	0x24e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"REV15"
	.byte	0xb
	.uahalf	0x24f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x250
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REFCLR_Bits"
	.byte	0xb
	.uahalf	0x251
	.uaword	0x2620
	.uleb128 0x12
	.string	"_Ifx_VADC_G_REFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x254
	.uaword	0x28cf
	.uleb128 0x14
	.string	"REV0"
	.byte	0xb
	.uahalf	0x256
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"REV1"
	.byte	0xb
	.uahalf	0x257
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"REV2"
	.byte	0xb
	.uahalf	0x258
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"REV3"
	.byte	0xb
	.uahalf	0x259
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"REV4"
	.byte	0xb
	.uahalf	0x25a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"REV5"
	.byte	0xb
	.uahalf	0x25b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"REV6"
	.byte	0xb
	.uahalf	0x25c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"REV7"
	.byte	0xb
	.uahalf	0x25d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"REV8"
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"REV9"
	.byte	0xb
	.uahalf	0x25f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"REV10"
	.byte	0xb
	.uahalf	0x260
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"REV11"
	.byte	0xb
	.uahalf	0x261
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"REV12"
	.byte	0xb
	.uahalf	0x262
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"REV13"
	.byte	0xb
	.uahalf	0x263
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"REV14"
	.byte	0xb
	.uahalf	0x264
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"REV15"
	.byte	0xb
	.uahalf	0x265
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x266
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REFLAG_Bits"
	.byte	0xb
	.uahalf	0x267
	.uaword	0x2787
	.uleb128 0x12
	.string	"_Ifx_VADC_G_RES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x26a
	.uaword	0x297e
	.uleb128 0x13
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x26c
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"DRC"
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x26e
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x26f
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"CRS"
	.byte	0xb
	.uahalf	0x270
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"FCR"
	.byte	0xb
	.uahalf	0x271
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"VF"
	.byte	0xb
	.uahalf	0x272
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RES_Bits"
	.byte	0xb
	.uahalf	0x273
	.uaword	0x28ee
	.uleb128 0x12
	.string	"_Ifx_VADC_G_RESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x276
	.uaword	0x2a2b
	.uleb128 0x13
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x278
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"DRC"
	.byte	0xb
	.uahalf	0x279
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x27a
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"CRS"
	.byte	0xb
	.uahalf	0x27c
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"FCR"
	.byte	0xb
	.uahalf	0x27d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"VF"
	.byte	0xb
	.uahalf	0x27e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RESD_Bits"
	.byte	0xb
	.uahalf	0x27f
	.uaword	0x299a
	.uleb128 0x12
	.string	"_Ifx_VADC_G_REVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x282
	.uaword	0x2b02
	.uleb128 0x14
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x284
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"REV1NP"
	.byte	0xb
	.uahalf	0x285
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"REV2NP"
	.byte	0xb
	.uahalf	0x286
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"REV3NP"
	.byte	0xb
	.uahalf	0x287
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"REV4NP"
	.byte	0xb
	.uahalf	0x288
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"REV5NP"
	.byte	0xb
	.uahalf	0x289
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"REV6NP"
	.byte	0xb
	.uahalf	0x28a
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"REV7NP"
	.byte	0xb
	.uahalf	0x28b
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REVNP0_Bits"
	.byte	0xb
	.uahalf	0x28c
	.uaword	0x2a48
	.uleb128 0x12
	.string	"_Ifx_VADC_G_REVNP1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x28f
	.uaword	0x2be1
	.uleb128 0x14
	.string	"REV8NP"
	.byte	0xb
	.uahalf	0x291
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"REV9NP"
	.byte	0xb
	.uahalf	0x292
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"REV10NP"
	.byte	0xb
	.uahalf	0x293
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"REV11NP"
	.byte	0xb
	.uahalf	0x294
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"REV12NP"
	.byte	0xb
	.uahalf	0x295
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"REV13NP"
	.byte	0xb
	.uahalf	0x296
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"REV14NP"
	.byte	0xb
	.uahalf	0x297
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"REV15NP"
	.byte	0xb
	.uahalf	0x298
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REVNP1_Bits"
	.byte	0xb
	.uahalf	0x299
	.uaword	0x2b21
	.uleb128 0x12
	.string	"_Ifx_VADC_G_RRASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x29c
	.uaword	0x2d67
	.uleb128 0x14
	.string	"ASSRR0"
	.byte	0xb
	.uahalf	0x29e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"ASSRR1"
	.byte	0xb
	.uahalf	0x29f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"ASSRR2"
	.byte	0xb
	.uahalf	0x2a0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"ASSRR3"
	.byte	0xb
	.uahalf	0x2a1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"ASSRR4"
	.byte	0xb
	.uahalf	0x2a2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"ASSRR5"
	.byte	0xb
	.uahalf	0x2a3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"ASSRR6"
	.byte	0xb
	.uahalf	0x2a4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"ASSRR7"
	.byte	0xb
	.uahalf	0x2a5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"ASSRR8"
	.byte	0xb
	.uahalf	0x2a6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"ASSRR9"
	.byte	0xb
	.uahalf	0x2a7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"ASSRR10"
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"ASSRR11"
	.byte	0xb
	.uahalf	0x2a9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"ASSRR12"
	.byte	0xb
	.uahalf	0x2aa
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"ASSRR13"
	.byte	0xb
	.uahalf	0x2ab
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"ASSRR14"
	.byte	0xb
	.uahalf	0x2ac
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"ASSRR15"
	.byte	0xb
	.uahalf	0x2ad
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x2ae
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RRASS_Bits"
	.byte	0xb
	.uahalf	0x2af
	.uaword	0x2c00
	.uleb128 0x12
	.string	"_Ifx_VADC_G_SEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2b2
	.uaword	0x2dd9
	.uleb128 0x14
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x2b4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x2b5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x2b6
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SEFCLR_Bits"
	.byte	0xb
	.uahalf	0x2b7
	.uaword	0x2d85
	.uleb128 0x12
	.string	"_Ifx_VADC_G_SEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ba
	.uaword	0x2e4c
	.uleb128 0x14
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x2bc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x2bd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x2be
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SEFLAG_Bits"
	.byte	0xb
	.uahalf	0x2bf
	.uaword	0x2df8
	.uleb128 0x12
	.string	"_Ifx_VADC_G_SEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2c2
	.uaword	0x2ec2
	.uleb128 0x14
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x2c4
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"SEV1NP"
	.byte	0xb
	.uahalf	0x2c5
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x2c6
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SEVNP_Bits"
	.byte	0xb
	.uahalf	0x2c7
	.uaword	0x2e6b
	.uleb128 0x12
	.string	"_Ifx_VADC_G_SRACT_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ca
	.uaword	0x2fb1
	.uleb128 0x14
	.string	"AGSR0"
	.byte	0xb
	.uahalf	0x2cc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"AGSR1"
	.byte	0xb
	.uahalf	0x2cd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"AGSR2"
	.byte	0xb
	.uahalf	0x2ce
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"AGSR3"
	.byte	0xb
	.uahalf	0x2cf
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x2d0
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"ASSR0"
	.byte	0xb
	.uahalf	0x2d1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"ASSR1"
	.byte	0xb
	.uahalf	0x2d2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"ASSR2"
	.byte	0xb
	.uahalf	0x2d3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"ASSR3"
	.byte	0xb
	.uahalf	0x2d4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x2d5
	.uaword	0x181
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SRACT_Bits"
	.byte	0xb
	.uahalf	0x2d6
	.uaword	0x2ee0
	.uleb128 0x12
	.string	"_Ifx_VADC_G_SYNCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x305c
	.uleb128 0x14
	.string	"STSEL"
	.byte	0xb
	.uahalf	0x2db
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"EVALR1"
	.byte	0xb
	.uahalf	0x2dd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"EVALR2"
	.byte	0xb
	.uahalf	0x2de
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"EVALR3"
	.byte	0xb
	.uahalf	0x2df
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x2e0
	.uaword	0x181
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SYNCTR_Bits"
	.byte	0xb
	.uahalf	0x2e1
	.uaword	0x2fcf
	.uleb128 0x12
	.string	"_Ifx_VADC_G_VFR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2e4
	.uaword	0x31b0
	.uleb128 0x14
	.string	"VF0"
	.byte	0xb
	.uahalf	0x2e6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"VF1"
	.byte	0xb
	.uahalf	0x2e7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"VF2"
	.byte	0xb
	.uahalf	0x2e8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"VF3"
	.byte	0xb
	.uahalf	0x2e9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"VF4"
	.byte	0xb
	.uahalf	0x2ea
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"VF5"
	.byte	0xb
	.uahalf	0x2eb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"VF6"
	.byte	0xb
	.uahalf	0x2ec
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"VF7"
	.byte	0xb
	.uahalf	0x2ed
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"VF8"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"VF9"
	.byte	0xb
	.uahalf	0x2ef
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"VF10"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"VF11"
	.byte	0xb
	.uahalf	0x2f1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"VF12"
	.byte	0xb
	.uahalf	0x2f2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"VF13"
	.byte	0xb
	.uahalf	0x2f3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"VF14"
	.byte	0xb
	.uahalf	0x2f4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"VF15"
	.byte	0xb
	.uahalf	0x2f5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x2f6
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_VFR_Bits"
	.byte	0xb
	.uahalf	0x2f7
	.uaword	0x307b
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBBOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2fa
	.uaword	0x322f
	.uleb128 0x13
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x2fc
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x2fd
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x2fe
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBBOUND_Bits"
	.byte	0xb
	.uahalf	0x300
	.uaword	0x31cc
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x303
	.uaword	0x33fe
	.uleb128 0x14
	.string	"DIVA"
	.byte	0xb
	.uahalf	0x305
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x306
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"DCMSB"
	.byte	0xb
	.uahalf	0x307
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"DIVD"
	.byte	0xb
	.uahalf	0x308
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x309
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"REFPC"
	.byte	0xb
	.uahalf	0x30a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x30b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"LOSUP"
	.byte	0xb
	.uahalf	0x30c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"DIVWC"
	.byte	0xb
	.uahalf	0x30d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"DPCAL0"
	.byte	0xb
	.uahalf	0x30e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"DPCAL1"
	.byte	0xb
	.uahalf	0x30f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"DPCAL2"
	.byte	0xb
	.uahalf	0x310
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"DPCAL3"
	.byte	0xb
	.uahalf	0x311
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"DPCAL4"
	.byte	0xb
	.uahalf	0x312
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"DPCAL5"
	.byte	0xb
	.uahalf	0x313
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"DPCAL6"
	.byte	0xb
	.uahalf	0x314
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"DPCAL7"
	.byte	0xb
	.uahalf	0x315
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"DPCAL8"
	.byte	0xb
	.uahalf	0x316
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"DPCAL9"
	.byte	0xb
	.uahalf	0x317
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"DPCAL10"
	.byte	0xb
	.uahalf	0x318
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x319
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"SUCAL"
	.byte	0xb
	.uahalf	0x31a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBCFG_Bits"
	.byte	0xb
	.uahalf	0x31b
	.uaword	0x324f
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x31e
	.uaword	0x34d1
	.uleb128 0x14
	.string	"SEVGLB"
	.byte	0xb
	.uahalf	0x320
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x321
	.uaword	0x181
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"REVGLB"
	.byte	0xb
	.uahalf	0x322
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x323
	.uaword	0x181
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"SEVGLBCLR"
	.byte	0xb
	.uahalf	0x324
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x325
	.uaword	0x181
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"REVGLBCLR"
	.byte	0xb
	.uahalf	0x326
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x327
	.uaword	0x181
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0xb
	.uahalf	0x328
	.uaword	0x341c
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x3559
	.uleb128 0x14
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x32e
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x32f
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x330
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBEVNP_Bits"
	.byte	0xb
	.uahalf	0x331
	.uaword	0x34f1
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBRCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x334
	.uaword	0x35fd
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x336
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x337
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x338
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"WFR"
	.byte	0xb
	.uahalf	0x339
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x33a
	.uaword	0x181
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x33b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBRCR_Bits"
	.byte	0xb
	.uahalf	0x33c
	.uaword	0x3578
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBRES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x33f
	.uaword	0x36ad
	.uleb128 0x13
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x341
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"GNR"
	.byte	0xb
	.uahalf	0x342
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x343
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x344
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"CRS"
	.byte	0xb
	.uahalf	0x345
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"FCR"
	.byte	0xb
	.uahalf	0x346
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"VF"
	.byte	0xb
	.uahalf	0x347
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBRES_Bits"
	.byte	0xb
	.uahalf	0x348
	.uaword	0x361b
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBRESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x34b
	.uaword	0x375e
	.uleb128 0x13
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x34d
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"GNR"
	.byte	0xb
	.uahalf	0x34e
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x34f
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x350
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"CRS"
	.byte	0xb
	.uahalf	0x351
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"FCR"
	.byte	0xb
	.uahalf	0x352
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"VF"
	.byte	0xb
	.uahalf	0x353
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBRESD_Bits"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x36cb
	.uleb128 0x12
	.string	"_Ifx_VADC_GLOBTF_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x357
	.uaword	0x386e
	.uleb128 0x14
	.string	"CDCH"
	.byte	0xb
	.uahalf	0x359
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"CDGR"
	.byte	0xb
	.uahalf	0x35a
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"CDEN"
	.byte	0xb
	.uahalf	0x35b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"CDSEL"
	.byte	0xb
	.uahalf	0x35c
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x35d
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"CDWC"
	.byte	0xb
	.uahalf	0x35e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"PDD"
	.byte	0xb
	.uahalf	0x35f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"MDPD"
	.byte	0xb
	.uahalf	0x360
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"MDPU"
	.byte	0xb
	.uahalf	0x361
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"reserved_19"
	.byte	0xb
	.uahalf	0x362
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"MDWC"
	.byte	0xb
	.uahalf	0x363
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x364
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBTF_Bits"
	.byte	0xb
	.uahalf	0x365
	.uaword	0x377d
	.uleb128 0x12
	.string	"_Ifx_VADC_ICLASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x368
	.uaword	0x392d
	.uleb128 0x14
	.string	"STCS"
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x36b
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"CMS"
	.byte	0xb
	.uahalf	0x36c
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x36d
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"STCE"
	.byte	0xb
	.uahalf	0x36e
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"CME"
	.byte	0xb
	.uahalf	0x370
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x371
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ICLASS_Bits"
	.byte	0xb
	.uahalf	0x372
	.uaword	0x388b
	.uleb128 0x12
	.string	"_Ifx_VADC_ID_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x375
	.uaword	0x399f
	.uleb128 0x14
	.string	"MOD_REV"
	.byte	0xb
	.uahalf	0x377
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"MOD_TYPE"
	.byte	0xb
	.uahalf	0x378
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x379
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ID_Bits"
	.byte	0xb
	.uahalf	0x37a
	.uaword	0x394a
	.uleb128 0x12
	.string	"_Ifx_VADC_KRST0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x37d
	.uaword	0x3a0b
	.uleb128 0x14
	.string	"RST"
	.byte	0xb
	.uahalf	0x37f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"RSTSTAT"
	.byte	0xb
	.uahalf	0x380
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x381
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_KRST0_Bits"
	.byte	0xb
	.uahalf	0x382
	.uaword	0x39b8
	.uleb128 0x12
	.string	"_Ifx_VADC_KRST1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x385
	.uaword	0x3a66
	.uleb128 0x14
	.string	"RST"
	.byte	0xb
	.uahalf	0x387
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x388
	.uaword	0x181
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_KRST1_Bits"
	.byte	0xb
	.uahalf	0x389
	.uaword	0x3a27
	.uleb128 0x12
	.string	"_Ifx_VADC_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x38c
	.uaword	0x3ac3
	.uleb128 0x14
	.string	"CLR"
	.byte	0xb
	.uahalf	0x38e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x38f
	.uaword	0x181
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_KRSTCLR_Bits"
	.byte	0xb
	.uahalf	0x390
	.uaword	0x3a82
	.uleb128 0x12
	.string	"_Ifx_VADC_OCS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x393
	.uaword	0x3b8c
	.uleb128 0x14
	.string	"TGS"
	.byte	0xb
	.uahalf	0x395
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"TGB"
	.byte	0xb
	.uahalf	0x396
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"TG_P"
	.byte	0xb
	.uahalf	0x397
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x398
	.uaword	0x181
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"SUS"
	.byte	0xb
	.uahalf	0x399
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"SUS_P"
	.byte	0xb
	.uahalf	0x39a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"SUSSTA"
	.byte	0xb
	.uahalf	0x39b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"reserved_30"
	.byte	0xb
	.uahalf	0x39c
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_OCS_Bits"
	.byte	0xb
	.uahalf	0x39d
	.uaword	0x3ae1
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3a5
	.uaword	0x3bce
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3a7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3a8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3a9
	.uaword	0x891
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ACCEN0"
	.byte	0xb
	.uahalf	0x3aa
	.uaword	0x3ba6
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ad
	.uaword	0x3c0e
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3af
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3b0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0xa6e
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ACCPROT0"
	.byte	0xb
	.uahalf	0x3b2
	.uaword	0x3be6
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3b5
	.uaword	0x3c50
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3b7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3b8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3b9
	.uaword	0xc3d
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ACCPROT1"
	.byte	0xb
	.uahalf	0x3ba
	.uaword	0x3c28
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3bd
	.uaword	0x3c92
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3bf
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3c0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3c1
	.uaword	0xd2a
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_BRSCTRL"
	.byte	0xb
	.uahalf	0x3c2
	.uaword	0x3c6a
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x3cd3
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3c7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3c8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3c9
	.uaword	0xe23
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_BRSMR"
	.byte	0xb
	.uahalf	0x3ca
	.uaword	0x3cab
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3cd
	.uaword	0x3d12
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3cf
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3d0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0xe70
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_BRSPND"
	.byte	0xb
	.uahalf	0x3d2
	.uaword	0x3cea
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3d5
	.uaword	0x3d52
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3d7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3d8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3d9
	.uaword	0xebe
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_BRSSEL"
	.byte	0xb
	.uahalf	0x3da
	.uaword	0x3d2a
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3dd
	.uaword	0x3d92
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3df
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3e1
	.uaword	0xf44
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_CLC"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x3d6a
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3e5
	.uaword	0x3dcf
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3e7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3e8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3e9
	.uaword	0xfb4
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_EMUXSEL"
	.byte	0xb
	.uahalf	0x3ea
	.uaword	0x3da7
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ed
	.uaword	0x3e10
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3ef
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3f0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3f1
	.uaword	0x1033
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ALIAS"
	.byte	0xb
	.uahalf	0x3f2
	.uaword	0x3de8
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3f5
	.uaword	0x3e51
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3f7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x3f8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x3f9
	.uaword	0x116c
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ARBCFG"
	.byte	0xb
	.uahalf	0x3fa
	.uaword	0x3e29
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x3fd
	.uaword	0x3e93
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x3ff
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x400
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x401
	.uaword	0x128b
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ARBPR"
	.byte	0xb
	.uahalf	0x402
	.uaword	0x3e6b
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x405
	.uaword	0x3ed4
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x407
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x408
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x409
	.uaword	0x13b6
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASCTRL"
	.byte	0xb
	.uahalf	0x40a
	.uaword	0x3eac
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x40d
	.uaword	0x3f16
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x40f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x410
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x411
	.uaword	0x14bf
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASMR"
	.byte	0xb
	.uahalf	0x412
	.uaword	0x3eee
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x415
	.uaword	0x3f56
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x417
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x418
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x419
	.uaword	0x150f
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASPND"
	.byte	0xb
	.uahalf	0x41a
	.uaword	0x3f2e
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x41d
	.uaword	0x3f97
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x41f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x420
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x421
	.uaword	0x1560
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_ASSEL"
	.byte	0xb
	.uahalf	0x422
	.uaword	0x3f6f
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x425
	.uaword	0x3fd8
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x427
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x428
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x429
	.uaword	0x1699
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFL"
	.byte	0xb
	.uahalf	0x42a
	.uaword	0x3fb0
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x42d
	.uaword	0x4017
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x42f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x430
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x431
	.uaword	0x1729
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFLC"
	.byte	0xb
	.uahalf	0x432
	.uaword	0x3fef
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x435
	.uaword	0x4057
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x437
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x438
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x439
	.uaword	0x17c3
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFLNP"
	.byte	0xb
	.uahalf	0x43a
	.uaword	0x402f
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x43d
	.uaword	0x4098
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x43f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x440
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x441
	.uaword	0x18a9
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BFLS"
	.byte	0xb
	.uahalf	0x442
	.uaword	0x4070
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x445
	.uaword	0x40d8
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x447
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x448
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x449
	.uaword	0x1927
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_BOUND"
	.byte	0xb
	.uahalf	0x44a
	.uaword	0x40b0
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x44d
	.uaword	0x4119
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x44f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x450
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x451
	.uaword	0x19ff
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CEFCLR"
	.byte	0xb
	.uahalf	0x452
	.uaword	0x40f1
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x455
	.uaword	0x415b
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x457
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x458
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x459
	.uaword	0x1ad8
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CEFLAG"
	.byte	0xb
	.uahalf	0x45a
	.uaword	0x4133
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x45d
	.uaword	0x419d
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x45f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x460
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x461
	.uaword	0x1bb1
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CEVNP0"
	.byte	0xb
	.uahalf	0x462
	.uaword	0x4175
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x465
	.uaword	0x41df
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x467
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x468
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x469
	.uaword	0x1e67
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CHASS"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0x41b7
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x46d
	.uaword	0x4220
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x46f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x470
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x471
	.uaword	0x1fbb
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_CHCTR"
	.byte	0xb
	.uahalf	0x472
	.uaword	0x41f8
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x475
	.uaword	0x4261
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x477
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x478
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x479
	.uaword	0x20b6
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_EMUXCTR"
	.byte	0xb
	.uahalf	0x47a
	.uaword	0x4239
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x47d
	.uaword	0x42a4
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x47f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x480
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x481
	.uaword	0x2155
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_Q0R0"
	.byte	0xb
	.uahalf	0x482
	.uaword	0x427c
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x485
	.uaword	0x42e4
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x487
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x488
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x489
	.uaword	0x21f2
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QBUR0"
	.byte	0xb
	.uahalf	0x48a
	.uaword	0x42bc
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x48d
	.uaword	0x4325
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x48f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x490
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x491
	.uaword	0x231e
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QCTRL0"
	.byte	0xb
	.uahalf	0x492
	.uaword	0x42fd
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x495
	.uaword	0x4367
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x497
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x498
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x499
	.uaword	0x23af
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QINR0"
	.byte	0xb
	.uahalf	0x49a
	.uaword	0x433f
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x49d
	.uaword	0x43a8
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x49f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4a0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4a1
	.uaword	0x2493
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QMR0"
	.byte	0xb
	.uahalf	0x4a2
	.uaword	0x4380
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4a5
	.uaword	0x43e8
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4a7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4a8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4a9
	.uaword	0x2544
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_QSR0"
	.byte	0xb
	.uahalf	0x4aa
	.uaword	0x43c0
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ad
	.uaword	0x4428
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4af
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4b0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4b1
	.uaword	0x2604
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RCR"
	.byte	0xb
	.uahalf	0x4b2
	.uaword	0x4400
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4b5
	.uaword	0x4467
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4b7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4b8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4b9
	.uaword	0x2768
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REFCLR"
	.byte	0xb
	.uahalf	0x4ba
	.uaword	0x443f
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4bd
	.uaword	0x44a9
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4bf
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4c0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4c1
	.uaword	0x28cf
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REFLAG"
	.byte	0xb
	.uahalf	0x4c2
	.uaword	0x4481
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4c5
	.uaword	0x44eb
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4c7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4c8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4c9
	.uaword	0x297e
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RES"
	.byte	0xb
	.uahalf	0x4ca
	.uaword	0x44c3
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4cd
	.uaword	0x452a
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4cf
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4d0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4d1
	.uaword	0x2a2b
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RESD"
	.byte	0xb
	.uahalf	0x4d2
	.uaword	0x4502
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4d5
	.uaword	0x456a
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4d7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4d8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4d9
	.uaword	0x2b02
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REVNP0"
	.byte	0xb
	.uahalf	0x4da
	.uaword	0x4542
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4dd
	.uaword	0x45ac
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4df
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4e0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4e1
	.uaword	0x2be1
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_REVNP1"
	.byte	0xb
	.uahalf	0x4e2
	.uaword	0x4584
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4e5
	.uaword	0x45ee
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4e7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4e8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4e9
	.uaword	0x2d67
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_RRASS"
	.byte	0xb
	.uahalf	0x4ea
	.uaword	0x45c6
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ed
	.uaword	0x462f
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4ef
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4f0
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4f1
	.uaword	0x2dd9
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SEFCLR"
	.byte	0xb
	.uahalf	0x4f2
	.uaword	0x4607
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4f5
	.uaword	0x4671
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4f7
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x4f8
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x4f9
	.uaword	0x2e4c
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SEFLAG"
	.byte	0xb
	.uahalf	0x4fa
	.uaword	0x4649
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x4fd
	.uaword	0x46b3
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x4ff
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x500
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x501
	.uaword	0x2ec2
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SEVNP"
	.byte	0xb
	.uahalf	0x502
	.uaword	0x468b
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x505
	.uaword	0x46f4
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x507
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x508
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x509
	.uaword	0x2fb1
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SRACT"
	.byte	0xb
	.uahalf	0x50a
	.uaword	0x46cc
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x50d
	.uaword	0x4735
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x50f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x510
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x511
	.uaword	0x305c
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_SYNCTR"
	.byte	0xb
	.uahalf	0x512
	.uaword	0x470d
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x515
	.uaword	0x4777
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x517
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x518
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x519
	.uaword	0x31b0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G_VFR"
	.byte	0xb
	.uahalf	0x51a
	.uaword	0x474f
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x51d
	.uaword	0x47b6
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x51f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x520
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x521
	.uaword	0x322f
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBBOUND"
	.byte	0xb
	.uahalf	0x522
	.uaword	0x478e
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x525
	.uaword	0x47f9
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x527
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x528
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x529
	.uaword	0x33fe
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBCFG"
	.byte	0xb
	.uahalf	0x52a
	.uaword	0x47d1
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x52d
	.uaword	0x483a
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x52f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x530
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x531
	.uaword	0x34d1
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBEFLAG"
	.byte	0xb
	.uahalf	0x532
	.uaword	0x4812
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x535
	.uaword	0x487d
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x537
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x538
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x539
	.uaword	0x3559
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBEVNP"
	.byte	0xb
	.uahalf	0x53a
	.uaword	0x4855
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x53d
	.uaword	0x48bf
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x53f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x540
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x541
	.uaword	0x35fd
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBRCR"
	.byte	0xb
	.uahalf	0x542
	.uaword	0x4897
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x545
	.uaword	0x4900
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x547
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x548
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x549
	.uaword	0x36ad
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBRES"
	.byte	0xb
	.uahalf	0x54a
	.uaword	0x48d8
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x54d
	.uaword	0x4941
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x54f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x550
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x551
	.uaword	0x375e
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBRESD"
	.byte	0xb
	.uahalf	0x552
	.uaword	0x4919
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x555
	.uaword	0x4983
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x557
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x558
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x559
	.uaword	0x386e
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_GLOBTF"
	.byte	0xb
	.uahalf	0x55a
	.uaword	0x495b
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x55d
	.uaword	0x49c3
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x55f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x560
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x561
	.uaword	0x392d
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ICLASS"
	.byte	0xb
	.uahalf	0x562
	.uaword	0x499b
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x565
	.uaword	0x4a03
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x567
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x568
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x569
	.uaword	0x399f
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_ID"
	.byte	0xb
	.uahalf	0x56a
	.uaword	0x49db
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x56d
	.uaword	0x4a3f
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x56f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x570
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x571
	.uaword	0x3a0b
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_KRST0"
	.byte	0xb
	.uahalf	0x572
	.uaword	0x4a17
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x575
	.uaword	0x4a7e
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x577
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x578
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x579
	.uaword	0x3a66
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_KRST1"
	.byte	0xb
	.uahalf	0x57a
	.uaword	0x4a56
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x57d
	.uaword	0x4abd
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x57f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x580
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x581
	.uaword	0x3ac3
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_KRSTCLR"
	.byte	0xb
	.uahalf	0x582
	.uaword	0x4a95
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x585
	.uaword	0x4afe
	.uleb128 0x17
	.string	"U"
	.byte	0xb
	.uahalf	0x587
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xb
	.uahalf	0x588
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xb
	.uahalf	0x589
	.uaword	0x3b8c
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_OCS"
	.byte	0xb
	.uahalf	0x58a
	.uaword	0x4ad6
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.uahalf	0x5ad
	.uaword	0x4b39
	.uleb128 0x17
	.string	"QBUR0"
	.byte	0xb
	.uahalf	0x5af
	.uaword	0x42e4
	.uleb128 0x17
	.string	"QINR0"
	.byte	0xb
	.uahalf	0x5b0
	.uaword	0x4367
	.byte	0
	.uleb128 0x18
	.string	"_Ifx_VADC_G"
	.uahalf	0x400
	.byte	0xb
	.uahalf	0x595
	.uaword	0x4f36
	.uleb128 0x19
	.string	"ARBCFG"
	.byte	0xb
	.uahalf	0x597
	.uaword	0x3e51
	.byte	0
	.uleb128 0x19
	.string	"ARBPR"
	.byte	0xb
	.uahalf	0x598
	.uaword	0x3e93
	.byte	0x4
	.uleb128 0x19
	.string	"CHASS"
	.byte	0xb
	.uahalf	0x599
	.uaword	0x41df
	.byte	0x8
	.uleb128 0x19
	.string	"RRASS"
	.byte	0xb
	.uahalf	0x59a
	.uaword	0x45ee
	.byte	0xc
	.uleb128 0x1a
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x59b
	.uaword	0x4bb
	.byte	0x10
	.uleb128 0x19
	.string	"ICLASS"
	.byte	0xb
	.uahalf	0x59c
	.uaword	0x4f36
	.byte	0x20
	.uleb128 0x1a
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x59d
	.uaword	0x52b
	.byte	0x28
	.uleb128 0x19
	.string	"ALIAS"
	.byte	0xb
	.uahalf	0x59e
	.uaword	0x3e10
	.byte	0x30
	.uleb128 0x19
	.string	"reserved_34"
	.byte	0xb
	.uahalf	0x59f
	.uaword	0x4db
	.byte	0x34
	.uleb128 0x19
	.string	"BOUND"
	.byte	0xb
	.uahalf	0x5a0
	.uaword	0x40d8
	.byte	0x38
	.uleb128 0x19
	.string	"reserved_3C"
	.byte	0xb
	.uahalf	0x5a1
	.uaword	0x4db
	.byte	0x3c
	.uleb128 0x19
	.string	"SYNCTR"
	.byte	0xb
	.uahalf	0x5a2
	.uaword	0x4735
	.byte	0x40
	.uleb128 0x19
	.string	"reserved_44"
	.byte	0xb
	.uahalf	0x5a3
	.uaword	0x4db
	.byte	0x44
	.uleb128 0x19
	.string	"BFL"
	.byte	0xb
	.uahalf	0x5a4
	.uaword	0x3fd8
	.byte	0x48
	.uleb128 0x19
	.string	"BFLS"
	.byte	0xb
	.uahalf	0x5a5
	.uaword	0x4098
	.byte	0x4c
	.uleb128 0x19
	.string	"BFLC"
	.byte	0xb
	.uahalf	0x5a6
	.uaword	0x4017
	.byte	0x50
	.uleb128 0x19
	.string	"BFLNP"
	.byte	0xb
	.uahalf	0x5a7
	.uaword	0x4057
	.byte	0x54
	.uleb128 0x19
	.string	"reserved_58"
	.byte	0xb
	.uahalf	0x5a8
	.uaword	0x4fb
	.byte	0x58
	.uleb128 0x19
	.string	"QCTRL0"
	.byte	0xb
	.uahalf	0x5a9
	.uaword	0x4325
	.byte	0x80
	.uleb128 0x19
	.string	"QMR0"
	.byte	0xb
	.uahalf	0x5aa
	.uaword	0x43a8
	.byte	0x84
	.uleb128 0x19
	.string	"QSR0"
	.byte	0xb
	.uahalf	0x5ab
	.uaword	0x43e8
	.byte	0x88
	.uleb128 0x19
	.string	"Q0R0"
	.byte	0xb
	.uahalf	0x5ac
	.uaword	0x42a4
	.byte	0x8c
	.uleb128 0x1b
	.uaword	0x4b13
	.byte	0x90
	.uleb128 0x19
	.string	"reserved_94"
	.byte	0xb
	.uahalf	0x5b3
	.uaword	0x4ab
	.byte	0x94
	.uleb128 0x19
	.string	"ASCTRL"
	.byte	0xb
	.uahalf	0x5b4
	.uaword	0x3ed4
	.byte	0xa0
	.uleb128 0x19
	.string	"ASMR"
	.byte	0xb
	.uahalf	0x5b5
	.uaword	0x3f16
	.byte	0xa4
	.uleb128 0x19
	.string	"ASSEL"
	.byte	0xb
	.uahalf	0x5b6
	.uaword	0x3f97
	.byte	0xa8
	.uleb128 0x19
	.string	"ASPND"
	.byte	0xb
	.uahalf	0x5b7
	.uaword	0x3f56
	.byte	0xac
	.uleb128 0x19
	.string	"reserved_B0"
	.byte	0xb
	.uahalf	0x5b8
	.uaword	0x4f46
	.byte	0xb0
	.uleb128 0x1c
	.string	"CEFLAG"
	.byte	0xb
	.uahalf	0x5b9
	.uaword	0x415b
	.uahalf	0x100
	.uleb128 0x1c
	.string	"REFLAG"
	.byte	0xb
	.uahalf	0x5ba
	.uaword	0x44a9
	.uahalf	0x104
	.uleb128 0x1c
	.string	"SEFLAG"
	.byte	0xb
	.uahalf	0x5bb
	.uaword	0x4671
	.uahalf	0x108
	.uleb128 0x1c
	.string	"reserved_10C"
	.byte	0xb
	.uahalf	0x5bc
	.uaword	0x4db
	.uahalf	0x10c
	.uleb128 0x1c
	.string	"CEFCLR"
	.byte	0xb
	.uahalf	0x5bd
	.uaword	0x4119
	.uahalf	0x110
	.uleb128 0x1c
	.string	"REFCLR"
	.byte	0xb
	.uahalf	0x5be
	.uaword	0x4467
	.uahalf	0x114
	.uleb128 0x1c
	.string	"SEFCLR"
	.byte	0xb
	.uahalf	0x5bf
	.uaword	0x462f
	.uahalf	0x118
	.uleb128 0x1c
	.string	"reserved_11C"
	.byte	0xb
	.uahalf	0x5c0
	.uaword	0x4db
	.uahalf	0x11c
	.uleb128 0x1c
	.string	"CEVNP0"
	.byte	0xb
	.uahalf	0x5c1
	.uaword	0x419d
	.uahalf	0x120
	.uleb128 0x1c
	.string	"reserved_124"
	.byte	0xb
	.uahalf	0x5c2
	.uaword	0x4ab
	.uahalf	0x124
	.uleb128 0x1c
	.string	"REVNP0"
	.byte	0xb
	.uahalf	0x5c3
	.uaword	0x456a
	.uahalf	0x130
	.uleb128 0x1c
	.string	"REVNP1"
	.byte	0xb
	.uahalf	0x5c4
	.uaword	0x45ac
	.uahalf	0x134
	.uleb128 0x1c
	.string	"reserved_138"
	.byte	0xb
	.uahalf	0x5c5
	.uaword	0x52b
	.uahalf	0x138
	.uleb128 0x1c
	.string	"SEVNP"
	.byte	0xb
	.uahalf	0x5c6
	.uaword	0x46b3
	.uahalf	0x140
	.uleb128 0x1d
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x5c7
	.uaword	0x4db
	.uahalf	0x144
	.uleb128 0x1c
	.string	"SRACT"
	.byte	0xb
	.uahalf	0x5c8
	.uaword	0x46f4
	.uahalf	0x148
	.uleb128 0x1c
	.string	"reserved_14C"
	.byte	0xb
	.uahalf	0x5c9
	.uaword	0x4f56
	.uahalf	0x14c
	.uleb128 0x1c
	.string	"EMUXCTR"
	.byte	0xb
	.uahalf	0x5ca
	.uaword	0x4261
	.uahalf	0x170
	.uleb128 0x1c
	.string	"reserved_174"
	.byte	0xb
	.uahalf	0x5cb
	.uaword	0x4db
	.uahalf	0x174
	.uleb128 0x1c
	.string	"VFR"
	.byte	0xb
	.uahalf	0x5cc
	.uaword	0x4777
	.uahalf	0x178
	.uleb128 0x1c
	.string	"reserved_17C"
	.byte	0xb
	.uahalf	0x5cd
	.uaword	0x4db
	.uahalf	0x17c
	.uleb128 0x1c
	.string	"CHCTR"
	.byte	0xb
	.uahalf	0x5ce
	.uaword	0x4f66
	.uahalf	0x180
	.uleb128 0x1c
	.string	"reserved_1A0"
	.byte	0xb
	.uahalf	0x5cf
	.uaword	0x4eb
	.uahalf	0x1a0
	.uleb128 0x1c
	.string	"RCR"
	.byte	0xb
	.uahalf	0x5d0
	.uaword	0x4f76
	.uahalf	0x200
	.uleb128 0x1c
	.string	"reserved_240"
	.byte	0xb
	.uahalf	0x5d1
	.uaword	0x53b
	.uahalf	0x240
	.uleb128 0x1c
	.string	"RES"
	.byte	0xb
	.uahalf	0x5d2
	.uaword	0x4f86
	.uahalf	0x280
	.uleb128 0x1c
	.string	"reserved_2C0"
	.byte	0xb
	.uahalf	0x5d3
	.uaword	0x53b
	.uahalf	0x2c0
	.uleb128 0x1c
	.string	"RESD"
	.byte	0xb
	.uahalf	0x5d4
	.uaword	0x4f96
	.uahalf	0x300
	.uleb128 0x1c
	.string	"reserved_340"
	.byte	0xb
	.uahalf	0x5d5
	.uaword	0x4fa6
	.uahalf	0x340
	.byte	0
	.uleb128 0x10
	.uaword	0x49c3
	.uaword	0x4f46
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4f56
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4f66
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x23
	.byte	0
	.uleb128 0x10
	.uaword	0x4220
	.uaword	0x4f76
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.uaword	0x4428
	.uaword	0x4f86
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	0x44eb
	.uaword	0x4f96
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	0x452a
	.uaword	0x4fa6
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x4fb6
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xbf
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC_G"
	.byte	0xb
	.uahalf	0x5d6
	.uaword	0x4fc9
	.uleb128 0x1e
	.uaword	0x4b39
	.uleb128 0x18
	.string	"_Ifx_VADC"
	.uahalf	0x4000
	.byte	0xb
	.uahalf	0x5e3
	.uaword	0x52ff
	.uleb128 0x19
	.string	"CLC"
	.byte	0xb
	.uahalf	0x5e5
	.uaword	0x3d92
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x5e6
	.uaword	0x4db
	.byte	0x4
	.uleb128 0x19
	.string	"ID"
	.byte	0xb
	.uahalf	0x5e7
	.uaword	0x4a03
	.byte	0x8
	.uleb128 0x1a
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x5e8
	.uaword	0x51b
	.byte	0xc
	.uleb128 0x19
	.string	"OCS"
	.byte	0xb
	.uahalf	0x5e9
	.uaword	0x4afe
	.byte	0x28
	.uleb128 0x19
	.string	"KRSTCLR"
	.byte	0xb
	.uahalf	0x5ea
	.uaword	0x4abd
	.byte	0x2c
	.uleb128 0x19
	.string	"KRST1"
	.byte	0xb
	.uahalf	0x5eb
	.uaword	0x4a7e
	.byte	0x30
	.uleb128 0x19
	.string	"KRST0"
	.byte	0xb
	.uahalf	0x5ec
	.uaword	0x4a3f
	.byte	0x34
	.uleb128 0x19
	.string	"reserved_38"
	.byte	0xb
	.uahalf	0x5ed
	.uaword	0x4db
	.byte	0x38
	.uleb128 0x19
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x5ee
	.uaword	0x3bce
	.byte	0x3c
	.uleb128 0x19
	.string	"reserved_40"
	.byte	0xb
	.uahalf	0x5ef
	.uaword	0x53b
	.byte	0x40
	.uleb128 0x19
	.string	"GLOBCFG"
	.byte	0xb
	.uahalf	0x5f0
	.uaword	0x47f9
	.byte	0x80
	.uleb128 0x19
	.string	"reserved_84"
	.byte	0xb
	.uahalf	0x5f1
	.uaword	0x4db
	.byte	0x84
	.uleb128 0x19
	.string	"ACCPROT0"
	.byte	0xb
	.uahalf	0x5f2
	.uaword	0x3c0e
	.byte	0x88
	.uleb128 0x19
	.string	"ACCPROT1"
	.byte	0xb
	.uahalf	0x5f3
	.uaword	0x3c50
	.byte	0x8c
	.uleb128 0x19
	.string	"reserved_90"
	.byte	0xb
	.uahalf	0x5f4
	.uaword	0x4bb
	.byte	0x90
	.uleb128 0x19
	.string	"GLOBICLASS"
	.byte	0xb
	.uahalf	0x5f5
	.uaword	0x4f36
	.byte	0xa0
	.uleb128 0x19
	.string	"reserved_A8"
	.byte	0xb
	.uahalf	0x5f6
	.uaword	0x4bb
	.byte	0xa8
	.uleb128 0x19
	.string	"GLOBBOUND"
	.byte	0xb
	.uahalf	0x5f7
	.uaword	0x47b6
	.byte	0xb8
	.uleb128 0x19
	.string	"reserved_BC"
	.byte	0xb
	.uahalf	0x5f8
	.uaword	0x4f56
	.byte	0xbc
	.uleb128 0x19
	.string	"GLOBEFLAG"
	.byte	0xb
	.uahalf	0x5f9
	.uaword	0x483a
	.byte	0xe0
	.uleb128 0x19
	.string	"reserved_E4"
	.byte	0xb
	.uahalf	0x5fa
	.uaword	0x52ff
	.byte	0xe4
	.uleb128 0x1c
	.string	"GLOBEVNP"
	.byte	0xb
	.uahalf	0x5fb
	.uaword	0x487d
	.uahalf	0x140
	.uleb128 0x1d
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x5fc
	.uaword	0x51b
	.uahalf	0x144
	.uleb128 0x1c
	.string	"GLOBTF"
	.byte	0xb
	.uahalf	0x5fd
	.uaword	0x4983
	.uahalf	0x160
	.uleb128 0x1c
	.string	"reserved_164"
	.byte	0xb
	.uahalf	0x5fe
	.uaword	0x51b
	.uahalf	0x164
	.uleb128 0x1c
	.string	"BRSSEL"
	.byte	0xb
	.uahalf	0x5ff
	.uaword	0x530f
	.uahalf	0x180
	.uleb128 0x1c
	.string	"reserved_1AC"
	.byte	0xb
	.uahalf	0x600
	.uaword	0x50b
	.uahalf	0x1ac
	.uleb128 0x1c
	.string	"BRSPND"
	.byte	0xb
	.uahalf	0x601
	.uaword	0x531f
	.uahalf	0x1c0
	.uleb128 0x1c
	.string	"reserved_1EC"
	.byte	0xb
	.uahalf	0x602
	.uaword	0x50b
	.uahalf	0x1ec
	.uleb128 0x1c
	.string	"BRSCTRL"
	.byte	0xb
	.uahalf	0x603
	.uaword	0x3c92
	.uahalf	0x200
	.uleb128 0x1c
	.string	"BRSMR"
	.byte	0xb
	.uahalf	0x604
	.uaword	0x3cd3
	.uahalf	0x204
	.uleb128 0x1c
	.string	"reserved_208"
	.byte	0xb
	.uahalf	0x605
	.uaword	0x532f
	.uahalf	0x208
	.uleb128 0x1c
	.string	"GLOBRCR"
	.byte	0xb
	.uahalf	0x606
	.uaword	0x48bf
	.uahalf	0x280
	.uleb128 0x1c
	.string	"reserved_284"
	.byte	0xb
	.uahalf	0x607
	.uaword	0x533f
	.uahalf	0x284
	.uleb128 0x1c
	.string	"GLOBRES"
	.byte	0xb
	.uahalf	0x608
	.uaword	0x4900
	.uahalf	0x300
	.uleb128 0x1c
	.string	"reserved_304"
	.byte	0xb
	.uahalf	0x609
	.uaword	0x533f
	.uahalf	0x304
	.uleb128 0x1c
	.string	"GLOBRESD"
	.byte	0xb
	.uahalf	0x60a
	.uaword	0x4941
	.uahalf	0x380
	.uleb128 0x1c
	.string	"reserved_384"
	.byte	0xb
	.uahalf	0x60b
	.uaword	0x534f
	.uahalf	0x384
	.uleb128 0x1c
	.string	"EMUXSEL"
	.byte	0xb
	.uahalf	0x60c
	.uaword	0x3dcf
	.uahalf	0x3f0
	.uleb128 0x1c
	.string	"reserved_3F4"
	.byte	0xb
	.uahalf	0x60d
	.uaword	0x535f
	.uahalf	0x3f4
	.uleb128 0x1c
	.string	"G"
	.byte	0xb
	.uahalf	0x60e
	.uaword	0x537f
	.uahalf	0x480
	.uleb128 0x1c
	.string	"reserved_3080"
	.byte	0xb
	.uahalf	0x60f
	.uaword	0x5384
	.uahalf	0x3080
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x530f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x5b
	.byte	0
	.uleb128 0x10
	.uaword	0x3d52
	.uaword	0x531f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.uaword	0x3d12
	.uaword	0x532f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x533f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x77
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x534f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x7b
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x535f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x6b
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x536f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x8b
	.byte	0
	.uleb128 0x10
	.uaword	0x4fb6
	.uaword	0x537f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xa
	.byte	0
	.uleb128 0x1e
	.uaword	0x536f
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x5395
	.uleb128 0x1f
	.uaword	0x49f
	.uahalf	0xf7f
	.byte	0
	.uleb128 0x15
	.string	"Ifx_VADC"
	.byte	0xb
	.uahalf	0x610
	.uaword	0x53a6
	.uleb128 0x1e
	.uaword	0x4fce
	.uleb128 0xb
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.uaword	0x55bd
	.uleb128 0xc
	.string	"EN0"
	.byte	0xc
	.byte	0x2f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0xc
	.byte	0x30
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0xc
	.byte	0x31
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0xc
	.byte	0x32
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0xc
	.byte	0x33
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0xc
	.byte	0x34
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0xc
	.byte	0x35
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0xc
	.byte	0x36
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0xc
	.byte	0x37
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0xc
	.byte	0x38
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0xc
	.byte	0x39
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0xc
	.byte	0x3a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0xc
	.byte	0x3b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0xc
	.byte	0x3c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0xc
	.byte	0x3d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0xc
	.byte	0x3e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0xc
	.byte	0x3f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0xc
	.byte	0x40
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0xc
	.byte	0x41
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0xc
	.byte	0x42
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0xc
	.byte	0x43
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0xc
	.byte	0x44
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0xc
	.byte	0x45
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0xc
	.byte	0x46
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0xc
	.byte	0x47
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0xc
	.byte	0x48
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0xc
	.byte	0x49
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0xc
	.byte	0x4a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0xc
	.byte	0x4b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0xc
	.byte	0x4c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0xc
	.byte	0x4d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0xc
	.byte	0x4e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xc
	.byte	0x4f
	.uaword	0x53ab
	.uleb128 0xb
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x52
	.uaword	0x5601
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0x54
	.uaword	0x181
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xc
	.byte	0x55
	.uaword	0x55d6
	.uleb128 0xb
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x58
	.uaword	0x5738
	.uleb128 0xc
	.string	"EN0"
	.byte	0xc
	.byte	0x5a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0xc
	.byte	0x5b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0xc
	.byte	0x5c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0xc
	.byte	0x5d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0xc
	.byte	0x5e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0xc
	.byte	0x5f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0xc
	.byte	0x60
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0xc
	.byte	0x61
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0xc
	.byte	0x62
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0xc
	.byte	0x63
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0xc
	.byte	0x64
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0xc
	.byte	0x65
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0xc
	.byte	0x66
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0xc
	.byte	0x67
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0xc
	.byte	0x68
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0xc
	.byte	0x69
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0x6a
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ESR_Bits"
	.byte	0xc
	.byte	0x6b
	.uaword	0x561a
	.uleb128 0xb
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x6e
	.uaword	0x579a
	.uleb128 0xc
	.string	"MODREV"
	.byte	0xc
	.byte	0x70
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MODTYPE"
	.byte	0xc
	.byte	0x71
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF33
	.byte	0xc
	.byte	0x72
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ID_Bits"
	.byte	0xc
	.byte	0x73
	.uaword	0x574e
	.uleb128 0xb
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x76
	.uaword	0x58bc
	.uleb128 0xc
	.string	"P0"
	.byte	0xc
	.byte	0x78
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"P1"
	.byte	0xc
	.byte	0x79
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"P2"
	.byte	0xc
	.byte	0x7a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"P3"
	.byte	0xc
	.byte	0x7b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"P4"
	.byte	0xc
	.byte	0x7c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"P5"
	.byte	0xc
	.byte	0x7d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"P6"
	.byte	0xc
	.byte	0x7e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"P7"
	.byte	0xc
	.byte	0x7f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"P8"
	.byte	0xc
	.byte	0x80
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"P9"
	.byte	0xc
	.byte	0x81
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"P10"
	.byte	0xc
	.byte	0x82
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"P11"
	.byte	0xc
	.byte	0x83
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"P12"
	.byte	0xc
	.byte	0x84
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"P13"
	.byte	0xc
	.byte	0x85
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"P14"
	.byte	0xc
	.byte	0x86
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"P15"
	.byte	0xc
	.byte	0x87
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0x88
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0xc
	.byte	0x89
	.uaword	0x57af
	.uleb128 0xb
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x8c
	.uaword	0x5964
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0x8e
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC0"
	.byte	0xc
	.byte	0x8f
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0x90
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC1"
	.byte	0xc
	.byte	0x91
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0x92
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC2"
	.byte	0xc
	.byte	0x93
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xc
	.byte	0x94
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC3"
	.byte	0xc
	.byte	0x95
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xc
	.byte	0x96
	.uaword	0x58d1
	.uleb128 0xb
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x99
	.uaword	0x5a14
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0x9b
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC12"
	.byte	0xc
	.byte	0x9c
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0x9d
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC13"
	.byte	0xc
	.byte	0x9e
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0x9f
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC14"
	.byte	0xc
	.byte	0xa0
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xc
	.byte	0xa1
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC15"
	.byte	0xc
	.byte	0xa2
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xc
	.byte	0xa3
	.uaword	0x597c
	.uleb128 0xb
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xa6
	.uaword	0x5ac0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xa8
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC4"
	.byte	0xc
	.byte	0xa9
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0xaa
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC5"
	.byte	0xc
	.byte	0xab
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0xac
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC6"
	.byte	0xc
	.byte	0xad
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xc
	.byte	0xae
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC7"
	.byte	0xc
	.byte	0xaf
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xc
	.byte	0xb0
	.uaword	0x5a2d
	.uleb128 0xb
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xb3
	.uaword	0x5b6d
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xb5
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC8"
	.byte	0xc
	.byte	0xb6
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0xb7
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC9"
	.byte	0xc
	.byte	0xb8
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0xb9
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC10"
	.byte	0xc
	.byte	0xba
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xc
	.byte	0xbb
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC11"
	.byte	0xc
	.byte	0xbc
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xc
	.byte	0xbd
	.uaword	0x5ad8
	.uleb128 0xb
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc0
	.uaword	0x5bcd
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xc2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0xc
	.byte	0xc3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xc
	.byte	0xc4
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0xc
	.byte	0xc5
	.uaword	0x5b85
	.uleb128 0xb
	.string	"_Ifx_P_LPCR0_P21_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc8
	.uaword	0x5c57
	.uleb128 0xd
	.uaword	.LASF36
	.byte	0xc
	.byte	0xca
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RX_DIS"
	.byte	0xc
	.byte	0xcb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"TERM"
	.byte	0xc
	.byte	0xcc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"LRXTERM"
	.byte	0xc
	.byte	0xcd
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0xce
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR0_P21_Bits"
	.byte	0xc
	.byte	0xcf
	.uaword	0x5be5
	.uleb128 0xb
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xd2
	.uaword	0x5cbb
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xd4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0xc
	.byte	0xd5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xc
	.byte	0xd6
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0xc
	.byte	0xd7
	.uaword	0x5c73
	.uleb128 0xb
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xda
	.uaword	0x5d45
	.uleb128 0xd
	.uaword	.LASF36
	.byte	0xc
	.byte	0xdc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RX_DIS"
	.byte	0xc
	.byte	0xdd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"TERM"
	.byte	0xc
	.byte	0xde
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"LRXTERM"
	.byte	0xc
	.byte	0xdf
	.uaword	0x181
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0xe0
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0xc
	.byte	0xe1
	.uaword	0x5cd3
	.uleb128 0xb
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xe4
	.uaword	0x5da9
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xe6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0xc
	.byte	0xe7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xc
	.byte	0xe8
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0xc
	.byte	0xe9
	.uaword	0x5d61
	.uleb128 0xb
	.string	"_Ifx_P_LPCR2_P21_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xec
	.uaword	0x5e7c
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xee
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"LVDSR"
	.byte	0xc
	.byte	0xef
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"LVDSRL"
	.byte	0xc
	.byte	0xf0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xc
	.byte	0xf1
	.uaword	0x181
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"TDIS_CTRL"
	.byte	0xc
	.byte	0xf2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"TX_DIS"
	.byte	0xc
	.byte	0xf3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"TX_PD"
	.byte	0xc
	.byte	0xf4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"TX_PWDPD"
	.byte	0xc
	.byte	0xf5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xc
	.byte	0xf6
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR2_P21_Bits"
	.byte	0xc
	.byte	0xf7
	.uaword	0x5dc1
	.uleb128 0xb
	.string	"_Ifx_P_LPCR3_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xfa
	.uaword	0x5ee0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xc
	.byte	0xfc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0xc
	.byte	0xfd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xc
	.byte	0xfe
	.uaword	0x181
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR3_Bits"
	.byte	0xc
	.byte	0xff
	.uaword	0x5e98
	.uleb128 0x12
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x102
	.uaword	0x5f78
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x104
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x105
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x106
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x107
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x108
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0xc
	.uahalf	0x109
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xc
	.uahalf	0x10a
	.uaword	0x5ef8
	.uleb128 0x12
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x10d
	.uaword	0x6006
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x10f
	.uaword	0x181
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x110
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x111
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x112
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x113
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xc
	.uahalf	0x114
	.uaword	0x5f91
	.uleb128 0x12
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x117
	.uaword	0x60a0
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x119
	.uaword	0x181
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x11a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x11b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x11c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x11d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0xc
	.uahalf	0x11e
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xc
	.uahalf	0x11f
	.uaword	0x6020
	.uleb128 0x12
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x122
	.uaword	0x613b
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x124
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x125
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x126
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x127
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x128
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.uaword	.LASF24
	.byte	0xc
	.uahalf	0x129
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xc
	.uahalf	0x12a
	.uaword	0x60b9
	.uleb128 0x12
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x12d
	.uaword	0x6295
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x12f
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x131
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x132
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x133
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x134
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x135
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x136
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x137
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x138
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x139
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x13a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x13b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x13c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x13d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x13e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xc
	.uahalf	0x140
	.uaword	0x6154
	.uleb128 0x12
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x143
	.uaword	0x64e3
	.uleb128 0x14
	.string	"PS0"
	.byte	0xc
	.uahalf	0x145
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"PS1"
	.byte	0xc
	.uahalf	0x146
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"PS2"
	.byte	0xc
	.uahalf	0x147
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"PS3"
	.byte	0xc
	.uahalf	0x148
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"PS4"
	.byte	0xc
	.uahalf	0x149
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"PS5"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"PS6"
	.byte	0xc
	.uahalf	0x14b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"PS7"
	.byte	0xc
	.uahalf	0x14c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"PS8"
	.byte	0xc
	.uahalf	0x14d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"PS9"
	.byte	0xc
	.uahalf	0x14e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"PS10"
	.byte	0xc
	.uahalf	0x14f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"PS11"
	.byte	0xc
	.uahalf	0x150
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"PS12"
	.byte	0xc
	.uahalf	0x151
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"PS13"
	.byte	0xc
	.uahalf	0x152
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"PS14"
	.byte	0xc
	.uahalf	0x153
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"PS15"
	.byte	0xc
	.uahalf	0x154
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x155
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x156
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x157
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x158
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x159
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x15b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x15c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x15d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x15e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x15f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x160
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x161
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x162
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x163
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x164
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMR_Bits"
	.byte	0xc
	.uahalf	0x165
	.uaword	0x62ad
	.uleb128 0x12
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x168
	.uaword	0x6566
	.uleb128 0x14
	.string	"PS0"
	.byte	0xc
	.uahalf	0x16a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"PS1"
	.byte	0xc
	.uahalf	0x16b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"PS2"
	.byte	0xc
	.uahalf	0x16c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"PS3"
	.byte	0xc
	.uahalf	0x16d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xc
	.uahalf	0x16e
	.uaword	0x181
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xc
	.uahalf	0x16f
	.uaword	0x64fa
	.uleb128 0x12
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x172
	.uaword	0x6600
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x174
	.uaword	0x181
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"PS12"
	.byte	0xc
	.uahalf	0x175
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"PS13"
	.byte	0xc
	.uahalf	0x176
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"PS14"
	.byte	0xc
	.uahalf	0x177
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"PS15"
	.byte	0xc
	.uahalf	0x178
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xc
	.uahalf	0x179
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xc
	.uahalf	0x17a
	.uaword	0x657f
	.uleb128 0x12
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x17d
	.uaword	0x6696
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x17f
	.uaword	0x181
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"PS4"
	.byte	0xc
	.uahalf	0x180
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"PS5"
	.byte	0xc
	.uahalf	0x181
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"PS6"
	.byte	0xc
	.uahalf	0x182
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"PS7"
	.byte	0xc
	.uahalf	0x183
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x184
	.uaword	0x181
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xc
	.uahalf	0x185
	.uaword	0x661a
	.uleb128 0x12
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x188
	.uaword	0x672d
	.uleb128 0x13
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x18a
	.uaword	0x181
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"PS8"
	.byte	0xc
	.uahalf	0x18b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"PS9"
	.byte	0xc
	.uahalf	0x18c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"PS10"
	.byte	0xc
	.uahalf	0x18d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"PS11"
	.byte	0xc
	.uahalf	0x18e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x18f
	.uaword	0x181
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xc
	.uahalf	0x190
	.uaword	0x66af
	.uleb128 0x12
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x193
	.uaword	0x6877
	.uleb128 0x14
	.string	"PS0"
	.byte	0xc
	.uahalf	0x195
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"PS1"
	.byte	0xc
	.uahalf	0x196
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"PS2"
	.byte	0xc
	.uahalf	0x197
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"PS3"
	.byte	0xc
	.uahalf	0x198
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"PS4"
	.byte	0xc
	.uahalf	0x199
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"PS5"
	.byte	0xc
	.uahalf	0x19a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"PS6"
	.byte	0xc
	.uahalf	0x19b
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"PS7"
	.byte	0xc
	.uahalf	0x19c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"PS8"
	.byte	0xc
	.uahalf	0x19d
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"PS9"
	.byte	0xc
	.uahalf	0x19e
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"PS10"
	.byte	0xc
	.uahalf	0x19f
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"PS11"
	.byte	0xc
	.uahalf	0x1a0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"PS12"
	.byte	0xc
	.uahalf	0x1a1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"PS13"
	.byte	0xc
	.uahalf	0x1a2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"PS14"
	.byte	0xc
	.uahalf	0x1a3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"PS15"
	.byte	0xc
	.uahalf	0x1a4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xc
	.uahalf	0x1a5
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xc
	.uahalf	0x1a6
	.uaword	0x6746
	.uleb128 0x12
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1a9
	.uaword	0x69af
	.uleb128 0x14
	.string	"P0"
	.byte	0xc
	.uahalf	0x1ab
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"P1"
	.byte	0xc
	.uahalf	0x1ac
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"P2"
	.byte	0xc
	.uahalf	0x1ad
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"P3"
	.byte	0xc
	.uahalf	0x1ae
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"P4"
	.byte	0xc
	.uahalf	0x1af
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"P5"
	.byte	0xc
	.uahalf	0x1b0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"P6"
	.byte	0xc
	.uahalf	0x1b1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"P7"
	.byte	0xc
	.uahalf	0x1b2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"P8"
	.byte	0xc
	.uahalf	0x1b3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"P9"
	.byte	0xc
	.uahalf	0x1b4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"P10"
	.byte	0xc
	.uahalf	0x1b5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"P11"
	.byte	0xc
	.uahalf	0x1b6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"P12"
	.byte	0xc
	.uahalf	0x1b7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"P13"
	.byte	0xc
	.uahalf	0x1b8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"P14"
	.byte	0xc
	.uahalf	0x1b9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"P15"
	.byte	0xc
	.uahalf	0x1ba
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xc
	.uahalf	0x1bb
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OUT_Bits"
	.byte	0xc
	.uahalf	0x1bc
	.uaword	0x688f
	.uleb128 0x12
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1bf
	.uaword	0x6aac
	.uleb128 0x14
	.string	"SEL0"
	.byte	0xc
	.uahalf	0x1c1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"SEL1"
	.byte	0xc
	.uahalf	0x1c2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"SEL2"
	.byte	0xc
	.uahalf	0x1c3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"SEL3"
	.byte	0xc
	.uahalf	0x1c4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"SEL4"
	.byte	0xc
	.uahalf	0x1c5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"SEL5"
	.byte	0xc
	.uahalf	0x1c6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"SEL6"
	.byte	0xc
	.uahalf	0x1c7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x1c8
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"SEL10"
	.byte	0xc
	.uahalf	0x1c9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"SEL11"
	.byte	0xc
	.uahalf	0x1ca
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x1cb
	.uaword	0x181
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"LCK"
	.byte	0xc
	.uahalf	0x1cc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xc
	.uahalf	0x1cd
	.uaword	0x69c6
	.uleb128 0x12
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1d0
	.uaword	0x6c16
	.uleb128 0x14
	.string	"PDIS0"
	.byte	0xc
	.uahalf	0x1d2
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"PDIS1"
	.byte	0xc
	.uahalf	0x1d3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"PDIS2"
	.byte	0xc
	.uahalf	0x1d4
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"PDIS3"
	.byte	0xc
	.uahalf	0x1d5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"PDIS4"
	.byte	0xc
	.uahalf	0x1d6
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"PDIS5"
	.byte	0xc
	.uahalf	0x1d7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"PDIS6"
	.byte	0xc
	.uahalf	0x1d8
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"PDIS7"
	.byte	0xc
	.uahalf	0x1d9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"PDIS8"
	.byte	0xc
	.uahalf	0x1da
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.string	"PDIS9"
	.byte	0xc
	.uahalf	0x1db
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.string	"PDIS10"
	.byte	0xc
	.uahalf	0x1dc
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"PDIS11"
	.byte	0xc
	.uahalf	0x1dd
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"PDIS12"
	.byte	0xc
	.uahalf	0x1de
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"PDIS13"
	.byte	0xc
	.uahalf	0x1df
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.string	"PDIS14"
	.byte	0xc
	.uahalf	0x1e0
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"PDIS15"
	.byte	0xc
	.uahalf	0x1e1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0xc
	.uahalf	0x1e2
	.uaword	0x181
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xc
	.uahalf	0x1e3
	.uaword	0x6ac4
	.uleb128 0x12
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1e6
	.uaword	0x6d4a
	.uleb128 0x14
	.string	"PD0"
	.byte	0xc
	.uahalf	0x1e8
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"PL0"
	.byte	0xc
	.uahalf	0x1e9
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"PD1"
	.byte	0xc
	.uahalf	0x1ea
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"PL1"
	.byte	0xc
	.uahalf	0x1eb
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"PD2"
	.byte	0xc
	.uahalf	0x1ec
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"PL2"
	.byte	0xc
	.uahalf	0x1ed
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"PD3"
	.byte	0xc
	.uahalf	0x1ee
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"PL3"
	.byte	0xc
	.uahalf	0x1ef
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"PD4"
	.byte	0xc
	.uahalf	0x1f0
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"PL4"
	.byte	0xc
	.uahalf	0x1f1
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"PD5"
	.byte	0xc
	.uahalf	0x1f2
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"PL5"
	.byte	0xc
	.uahalf	0x1f3
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"PD6"
	.byte	0xc
	.uahalf	0x1f4
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.string	"PL6"
	.byte	0xc
	.uahalf	0x1f5
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"PD7"
	.byte	0xc
	.uahalf	0x1f6
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"PL7"
	.byte	0xc
	.uahalf	0x1f7
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xc
	.uahalf	0x1f8
	.uaword	0x6c2f
	.uleb128 0x12
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1fb
	.uaword	0x6e89
	.uleb128 0x14
	.string	"PD8"
	.byte	0xc
	.uahalf	0x1fd
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"PL8"
	.byte	0xc
	.uahalf	0x1fe
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"PD9"
	.byte	0xc
	.uahalf	0x1ff
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"PL9"
	.byte	0xc
	.uahalf	0x200
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"PD10"
	.byte	0xc
	.uahalf	0x201
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.string	"PL10"
	.byte	0xc
	.uahalf	0x202
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"PD11"
	.byte	0xc
	.uahalf	0x203
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"PL11"
	.byte	0xc
	.uahalf	0x204
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"PD12"
	.byte	0xc
	.uahalf	0x205
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"PL12"
	.byte	0xc
	.uahalf	0x206
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"PD13"
	.byte	0xc
	.uahalf	0x207
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.string	"PL13"
	.byte	0xc
	.uahalf	0x208
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"PD14"
	.byte	0xc
	.uahalf	0x209
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.string	"PL14"
	.byte	0xc
	.uahalf	0x20a
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"PD15"
	.byte	0xc
	.uahalf	0x20b
	.uaword	0x181
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"PL15"
	.byte	0xc
	.uahalf	0x20c
	.uaword	0x181
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xc
	.uahalf	0x20d
	.uaword	0x6d62
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x215
	.uaword	0x6ec9
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x217
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x218
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x219
	.uaword	0x55bd
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_ACCEN0"
	.byte	0xc
	.uahalf	0x21a
	.uaword	0x6ea1
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x21d
	.uaword	0x6f06
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x21f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x220
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x221
	.uaword	0x5601
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_ACCEN1"
	.byte	0xc
	.uahalf	0x222
	.uaword	0x6ede
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x225
	.uaword	0x6f43
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x227
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x228
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x229
	.uaword	0x5738
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_ESR"
	.byte	0xc
	.uahalf	0x22a
	.uaword	0x6f1b
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x22d
	.uaword	0x6f7d
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x22f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x230
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x231
	.uaword	0x579a
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_ID"
	.byte	0xc
	.uahalf	0x232
	.uaword	0x6f55
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x235
	.uaword	0x6fb6
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x237
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x238
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x239
	.uaword	0x58bc
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_IN"
	.byte	0xc
	.uahalf	0x23a
	.uaword	0x6f8e
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x23d
	.uaword	0x6fef
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x23f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x240
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x241
	.uaword	0x5964
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_IOCR0"
	.byte	0xc
	.uahalf	0x242
	.uaword	0x6fc7
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x245
	.uaword	0x702b
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x247
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x248
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x249
	.uaword	0x5a14
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_IOCR12"
	.byte	0xc
	.uahalf	0x24a
	.uaword	0x7003
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x24d
	.uaword	0x7068
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x24f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x250
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x251
	.uaword	0x5ac0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_IOCR4"
	.byte	0xc
	.uahalf	0x252
	.uaword	0x7040
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x255
	.uaword	0x70a4
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x257
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x258
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x259
	.uaword	0x5b6d
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_IOCR8"
	.byte	0xc
	.uahalf	0x25a
	.uaword	0x707c
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x25d
	.uaword	0x70ee
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x25f
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x260
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x261
	.uaword	0x5bcd
	.uleb128 0x17
	.string	"B_P21"
	.byte	0xc
	.uahalf	0x262
	.uaword	0x5c57
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_LPCR0"
	.byte	0xc
	.uahalf	0x263
	.uaword	0x70b8
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x266
	.uaword	0x7138
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x268
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x269
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x26a
	.uaword	0x5cbb
	.uleb128 0x17
	.string	"B_P21"
	.byte	0xc
	.uahalf	0x26b
	.uaword	0x5d45
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_LPCR1"
	.byte	0xc
	.uahalf	0x26c
	.uaword	0x7102
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x26f
	.uaword	0x7182
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x271
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x272
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x273
	.uaword	0x5da9
	.uleb128 0x17
	.string	"B_P21"
	.byte	0xc
	.uahalf	0x274
	.uaword	0x5e7c
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_LPCR2"
	.byte	0xc
	.uahalf	0x275
	.uaword	0x714c
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x278
	.uaword	0x71be
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x27a
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x27b
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x27c
	.uaword	0x5ee0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_LPCR3"
	.byte	0xc
	.uahalf	0x27d
	.uaword	0x7196
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x280
	.uaword	0x71fa
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x282
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x283
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x284
	.uaword	0x6295
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR"
	.byte	0xc
	.uahalf	0x285
	.uaword	0x71d2
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x288
	.uaword	0x7235
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x28a
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x28b
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x28c
	.uaword	0x5f78
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR0"
	.byte	0xc
	.uahalf	0x28d
	.uaword	0x720d
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x290
	.uaword	0x7271
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x292
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x293
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x294
	.uaword	0x6006
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR12"
	.byte	0xc
	.uahalf	0x295
	.uaword	0x7249
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x298
	.uaword	0x72ae
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x29a
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x29b
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x29c
	.uaword	0x60a0
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR4"
	.byte	0xc
	.uahalf	0x29d
	.uaword	0x7286
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2a0
	.uaword	0x72ea
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2a2
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2a3
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2a4
	.uaword	0x613b
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMCR8"
	.byte	0xc
	.uahalf	0x2a5
	.uaword	0x72c2
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2a8
	.uaword	0x7326
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2aa
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2ab
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2ac
	.uaword	0x64e3
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMR"
	.byte	0xc
	.uahalf	0x2ad
	.uaword	0x72fe
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2b0
	.uaword	0x7360
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2b2
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2b3
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2b4
	.uaword	0x6877
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR"
	.byte	0xc
	.uahalf	0x2b5
	.uaword	0x7338
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2b8
	.uaword	0x739b
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2ba
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2bb
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2bc
	.uaword	0x6566
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR0"
	.byte	0xc
	.uahalf	0x2bd
	.uaword	0x7373
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2c0
	.uaword	0x73d7
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2c2
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2c3
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2c4
	.uaword	0x6600
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR12"
	.byte	0xc
	.uahalf	0x2c5
	.uaword	0x73af
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2c8
	.uaword	0x7414
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2ca
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2cb
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2cc
	.uaword	0x6696
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR4"
	.byte	0xc
	.uahalf	0x2cd
	.uaword	0x73ec
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2d0
	.uaword	0x7450
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2d2
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2d3
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2d4
	.uaword	0x672d
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OMSR8"
	.byte	0xc
	.uahalf	0x2d5
	.uaword	0x7428
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2d8
	.uaword	0x748c
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2da
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2db
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2dc
	.uaword	0x69af
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_OUT"
	.byte	0xc
	.uahalf	0x2dd
	.uaword	0x7464
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2e0
	.uaword	0x74c6
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2e2
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2e3
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2e4
	.uaword	0x6aac
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PCSR"
	.byte	0xc
	.uahalf	0x2e5
	.uaword	0x749e
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2e8
	.uaword	0x7501
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2ea
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2eb
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2ec
	.uaword	0x6c16
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PDISC"
	.byte	0xc
	.uahalf	0x2ed
	.uaword	0x74d9
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2f0
	.uaword	0x753d
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2f2
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2f3
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2f4
	.uaword	0x6d4a
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PDR0"
	.byte	0xc
	.uahalf	0x2f5
	.uaword	0x7515
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x2f8
	.uaword	0x7578
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x2fa
	.uaword	0x181
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x2fb
	.uaword	0x214
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x2fc
	.uaword	0x6e89
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P_PDR1"
	.byte	0xc
	.uahalf	0x2fd
	.uaword	0x7550
	.uleb128 0x18
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xc
	.uahalf	0x308
	.uaword	0x77d4
	.uleb128 0x19
	.string	"OUT"
	.byte	0xc
	.uahalf	0x30a
	.uaword	0x748c
	.byte	0
	.uleb128 0x19
	.string	"OMR"
	.byte	0xc
	.uahalf	0x30b
	.uaword	0x7326
	.byte	0x4
	.uleb128 0x19
	.string	"ID"
	.byte	0xc
	.uahalf	0x30c
	.uaword	0x6f7d
	.byte	0x8
	.uleb128 0x1a
	.uaword	.LASF35
	.byte	0xc
	.uahalf	0x30d
	.uaword	0x4db
	.byte	0xc
	.uleb128 0x19
	.string	"IOCR0"
	.byte	0xc
	.uahalf	0x30e
	.uaword	0x6fef
	.byte	0x10
	.uleb128 0x19
	.string	"IOCR4"
	.byte	0xc
	.uahalf	0x30f
	.uaword	0x7068
	.byte	0x14
	.uleb128 0x19
	.string	"IOCR8"
	.byte	0xc
	.uahalf	0x310
	.uaword	0x70a4
	.byte	0x18
	.uleb128 0x19
	.string	"IOCR12"
	.byte	0xc
	.uahalf	0x311
	.uaword	0x702b
	.byte	0x1c
	.uleb128 0x1a
	.uaword	.LASF20
	.byte	0xc
	.uahalf	0x312
	.uaword	0x4db
	.byte	0x20
	.uleb128 0x19
	.string	"IN"
	.byte	0xc
	.uahalf	0x313
	.uaword	0x6fb6
	.byte	0x24
	.uleb128 0x1a
	.uaword	.LASF24
	.byte	0xc
	.uahalf	0x314
	.uaword	0x4cb
	.byte	0x28
	.uleb128 0x19
	.string	"PDR0"
	.byte	0xc
	.uahalf	0x315
	.uaword	0x753d
	.byte	0x40
	.uleb128 0x19
	.string	"PDR1"
	.byte	0xc
	.uahalf	0x316
	.uaword	0x7578
	.byte	0x44
	.uleb128 0x19
	.string	"reserved_48"
	.byte	0xc
	.uahalf	0x317
	.uaword	0x52b
	.byte	0x48
	.uleb128 0x19
	.string	"ESR"
	.byte	0xc
	.uahalf	0x318
	.uaword	0x6f43
	.byte	0x50
	.uleb128 0x19
	.string	"reserved_54"
	.byte	0xc
	.uahalf	0x319
	.uaword	0x4ab
	.byte	0x54
	.uleb128 0x19
	.string	"PDISC"
	.byte	0xc
	.uahalf	0x31a
	.uaword	0x7501
	.byte	0x60
	.uleb128 0x19
	.string	"PCSR"
	.byte	0xc
	.uahalf	0x31b
	.uaword	0x74c6
	.byte	0x64
	.uleb128 0x19
	.string	"reserved_68"
	.byte	0xc
	.uahalf	0x31c
	.uaword	0x52b
	.byte	0x68
	.uleb128 0x19
	.string	"OMSR0"
	.byte	0xc
	.uahalf	0x31d
	.uaword	0x739b
	.byte	0x70
	.uleb128 0x19
	.string	"OMSR4"
	.byte	0xc
	.uahalf	0x31e
	.uaword	0x7414
	.byte	0x74
	.uleb128 0x19
	.string	"OMSR8"
	.byte	0xc
	.uahalf	0x31f
	.uaword	0x7450
	.byte	0x78
	.uleb128 0x19
	.string	"OMSR12"
	.byte	0xc
	.uahalf	0x320
	.uaword	0x73d7
	.byte	0x7c
	.uleb128 0x19
	.string	"OMCR0"
	.byte	0xc
	.uahalf	0x321
	.uaword	0x7235
	.byte	0x80
	.uleb128 0x19
	.string	"OMCR4"
	.byte	0xc
	.uahalf	0x322
	.uaword	0x72ae
	.byte	0x84
	.uleb128 0x19
	.string	"OMCR8"
	.byte	0xc
	.uahalf	0x323
	.uaword	0x72ea
	.byte	0x88
	.uleb128 0x19
	.string	"OMCR12"
	.byte	0xc
	.uahalf	0x324
	.uaword	0x7271
	.byte	0x8c
	.uleb128 0x19
	.string	"OMSR"
	.byte	0xc
	.uahalf	0x325
	.uaword	0x7360
	.byte	0x90
	.uleb128 0x19
	.string	"OMCR"
	.byte	0xc
	.uahalf	0x326
	.uaword	0x71fa
	.byte	0x94
	.uleb128 0x19
	.string	"reserved_98"
	.byte	0xc
	.uahalf	0x327
	.uaword	0x52b
	.byte	0x98
	.uleb128 0x19
	.string	"LPCR0"
	.byte	0xc
	.uahalf	0x328
	.uaword	0x70ee
	.byte	0xa0
	.uleb128 0x19
	.string	"LPCR1"
	.byte	0xc
	.uahalf	0x329
	.uaword	0x7138
	.byte	0xa4
	.uleb128 0x19
	.string	"LPCR2"
	.byte	0xc
	.uahalf	0x32a
	.uaword	0x7182
	.byte	0xa8
	.uleb128 0x19
	.string	"LPCR3"
	.byte	0xc
	.uahalf	0x32b
	.uaword	0x71be
	.byte	0xac
	.uleb128 0x19
	.string	"reserved_A4"
	.byte	0xc
	.uahalf	0x32c
	.uaword	0x77d4
	.byte	0xb0
	.uleb128 0x19
	.string	"ACCEN1"
	.byte	0xc
	.uahalf	0x32d
	.uaword	0x6f06
	.byte	0xf8
	.uleb128 0x19
	.string	"ACCEN0"
	.byte	0xc
	.uahalf	0x32e
	.uaword	0x6ec9
	.byte	0xfc
	.byte	0
	.uleb128 0x10
	.uaword	0x237
	.uaword	0x77e4
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x47
	.byte	0
	.uleb128 0x15
	.string	"Ifx_P"
	.byte	0xc
	.uahalf	0x32f
	.uaword	0x77f2
	.uleb128 0x1e
	.uaword	0x758b
	.uleb128 0x6
	.byte	0x4
	.uaword	0x77e4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.byte	0x4c
	.uaword	0x7a9d
	.uleb128 0x4
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Mode"
	.byte	0x5
	.byte	0x60
	.uaword	0x77fd
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.byte	0x65
	.uaword	0x7b8d
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_OutputIdx"
	.byte	0x5
	.byte	0x6e
	.uaword	0x7ab1
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.byte	0x73
	.uaword	0x7bee
	.uleb128 0x4
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x4
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_OutputMode"
	.byte	0x5
	.byte	0x76
	.uaword	0x7ba6
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.byte	0x7d
	.uaword	0x7da9
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_PadDriver"
	.byte	0x5
	.byte	0x8a
	.uaword	0x7c08
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0xaa
	.uaword	0x7de4
	.uleb128 0xa
	.string	"port"
	.byte	0x5
	.byte	0xac
	.uaword	0x77f7
	.byte	0
	.uleb128 0x9
	.uaword	.LASF37
	.byte	0x5
	.byte	0xad
	.uaword	0x22a
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Pin"
	.byte	0x5
	.byte	0xae
	.uaword	0x7dc2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x5395
	.uleb128 0x8
	.byte	0x10
	.byte	0xd
	.byte	0x30
	.uaword	0x7e2d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0xd
	.byte	0x32
	.uaword	0x7df7
	.byte	0
	.uleb128 0xa
	.string	"pin"
	.byte	0xd
	.byte	0x33
	.uaword	0x7de4
	.byte	0x4
	.uleb128 0xa
	.string	"select"
	.byte	0xd
	.byte	0x34
	.uaword	0x7b8d
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_Emux_Out"
	.byte	0xd
	.byte	0x35
	.uaword	0x7e45
	.uleb128 0x20
	.uaword	0x7dfd
	.uleb128 0x3
	.byte	0x1
	.byte	0xe
	.byte	0x76
	.uaword	0x7e9a
	.uleb128 0x4
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x47
	.uaword	0x7f47
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_off"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_slowStandby"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_fastStandby"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_normalOperation"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_AnalogConverterMode"
	.byte	0x2
	.byte	0x4c
	.uaword	0x7e9a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x51
	.uaword	0x8005
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_4_slots"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_8_slots"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_16_slots"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_20_slots"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ArbitrationRounds"
	.byte	0x2
	.byte	0x56
	.uaword	0x7f6a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x5b
	.uaword	0x831b
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_standard"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_BoundaryExtension"
	.byte	0x2
	.byte	0x6c
	.uaword	0x8026
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x71
	.uaword	0x83d3
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_group0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_group1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_global0"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_BoundarySelection"
	.byte	0x2
	.byte	0x76
	.uaword	0x833c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x7b
	.uaword	0x84c6
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_none"
	.sleb128 -1
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_7"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelId"
	.byte	0x2
	.byte	0x85
	.uaword	0x83f4
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x8a
	.uaword	0x8530
	.uleb128 0x4
	.string	"IfxVadc_ChannelReference_standard"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelReference_channel0"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelReference"
	.byte	0x2
	.byte	0x8d
	.uaword	0x84df
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x92
	.uaword	0x85e4
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_12bit"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_10bit"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_8bit"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_10bitFast"
	.sleb128 5
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelResolution"
	.byte	0x2
	.byte	0x97
	.uaword	0x8550
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0x9c
	.uaword	0x87b4
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelResult"
	.byte	0x2
	.byte	0xad
	.uaword	0x8605
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xb3
	.uaword	0x882f
	.uleb128 0x4
	.string	"IfxVadc_ChannelSelectionStyle_channelNumber"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelSelectionStyle_binary"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelSelectionStyle"
	.byte	0x2
	.byte	0xb7
	.uaword	0x87d1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xbc
	.uaword	0x8881
	.uleb128 0x4
	.string	"IfxVadc_ConversionType_Compatible"
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ConversionType"
	.byte	0x2
	.byte	0xbe
	.uaword	0x8854
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xc4
	.uaword	0x88ea
	.uleb128 0x4
	.string	"IfxVadc_EmuxCodingScheme_binary"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxCodingScheme_gray"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxCodingScheme"
	.byte	0x2
	.byte	0xc7
	.uaword	0x889f
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xcc
	.uaword	0x8947
	.uleb128 0x4
	.string	"IfxVadc_EmuxInterface_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxInterface_1"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxInterface"
	.byte	0x2
	.byte	0xcf
	.uaword	0x890a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xd5
	.uaword	0x89c3
	.uleb128 0x4
	.string	"IfxVadc_EmuxSampleTimeControl_settingChanges"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxSampleTimeControl_always"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxSampleTimeControl"
	.byte	0x2
	.byte	0xd8
	.uaword	0x8964
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xde
	.uaword	0x8ad1
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_7"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxSelectValue"
	.byte	0x2
	.byte	0xe7
	.uaword	0x89e8
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.byte	0xed
	.uaword	0x8bac
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_softwareControl"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_steady"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_singleStep"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_sequence"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ExternalMultiplexerMode"
	.byte	0x2
	.byte	0xf2
	.uaword	0x8af0
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x101
	.uaword	0x8c56
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_disabled"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_always"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_gatingHigh"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_gatingLow"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_GatingMode"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x8bd3
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x8e11
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_GatingSource"
	.byte	0x2
	.uahalf	0x11c
	.uaword	0x8c71
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x121
	.uaword	0x8eb2
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_group0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_group1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_global0"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_InputClasses"
	.byte	0x2
	.uahalf	0x126
	.uaword	0x8e2e
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x12b
	.uaword	0x8f5d
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_noCheck"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_eventIfInArea"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_eventIfOutsideArea"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_always"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_LimitCheck"
	.byte	0x2
	.uahalf	0x130
	.uaword	0x8ecf
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x135
	.uaword	0x8fca
	.uleb128 0x4
	.string	"IfxVadc_LowSupplyVoltageSelect_5V"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_LowSupplyVoltageSelect_3V"
	.sleb128 1
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_LowSupplyVoltageSelect"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x8f78
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x13d
	.uaword	0x990a
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_Protection_externalMultiplexer"
	.sleb128 15
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup0"
	.sleb128 16
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup1"
	.sleb128 17
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup2"
	.sleb128 18
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup3"
	.sleb128 19
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup4"
	.sleb128 20
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup5"
	.sleb128 21
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup6"
	.sleb128 22
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup7"
	.sleb128 23
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup8"
	.sleb128 24
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup9"
	.sleb128 25
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup10"
	.sleb128 26
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup11"
	.sleb128 27
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup12"
	.sleb128 28
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup13"
	.sleb128 29
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup14"
	.sleb128 30
	.uleb128 0x4
	.string	"IfxVadc_Protection_globalConfig"
	.sleb128 31
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup0"
	.sleb128 32
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup1"
	.sleb128 33
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup2"
	.sleb128 34
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup3"
	.sleb128 35
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup4"
	.sleb128 36
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup5"
	.sleb128 37
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup6"
	.sleb128 38
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup7"
	.sleb128 39
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup8"
	.sleb128 40
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup9"
	.sleb128 41
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup10"
	.sleb128 42
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup11"
	.sleb128 43
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup12"
	.sleb128 44
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup13"
	.sleb128 45
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup14"
	.sleb128 46
	.uleb128 0x4
	.string	"IfxVadc_Protection_testFunction"
	.sleb128 47
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup0"
	.sleb128 48
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup1"
	.sleb128 49
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup2"
	.sleb128 50
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup3"
	.sleb128 51
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup4"
	.sleb128 52
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup5"
	.sleb128 53
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup6"
	.sleb128 54
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup7"
	.sleb128 55
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup8"
	.sleb128 56
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup9"
	.sleb128 57
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup10"
	.sleb128 58
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup11"
	.sleb128 59
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup12"
	.sleb128 60
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup13"
	.sleb128 61
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup14"
	.sleb128 62
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Protection"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x8ff1
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x182
	.uaword	0x99bf
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_lowest"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_low"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_high"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_highest"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_RequestSlotPriority"
	.byte	0x2
	.uahalf	0x187
	.uaword	0x9925
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x18c
	.uaword	0x9a4b
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotStartMode_waitForStart"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotStartMode_cancelInjectRepeat"
	.sleb128 1
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_RequestSlotStartMode"
	.byte	0x2
	.uahalf	0x18f
	.uaword	0x99e3
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x194
	.uaword	0x9ad8
	.uleb128 0x4
	.string	"IfxVadc_RequestSource_queue"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_RequestSource_scan"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_RequestSource_background"
	.sleb128 2
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_RequestSource"
	.byte	0x2
	.uahalf	0x198
	.uaword	0x9a70
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x1a6
	.uaword	0x9bbc
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared0"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared1"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared2"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared3"
	.sleb128 7
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_SrcNr"
	.byte	0x2
	.uahalf	0x1af
	.uaword	0x9af6
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x1b6
	.uaword	0x9cae
	.uleb128 0x4
	.string	"IfxVadc_Status_noError"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_Status_notInitialised"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_Status_invalidGroup"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_Status_invalidChannel"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_Status_queueFull"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_Status_noAccess"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_Status_channelsStillPending"
	.sleb128 6
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Status"
	.byte	0x2
	.uahalf	0x1be
	.uaword	0x9bd2
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x1c3
	.uaword	0x9d64
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_noExternalTrigger"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_uponFallingEdge"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_uponRisingEdge"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_uponAnyEdge"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_TriggerMode"
	.byte	0x2
	.uahalf	0x1c8
	.uaword	0x9cc5
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x1cd
	.uaword	0x9f30
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_TriggerSource"
	.byte	0x2
	.uahalf	0x1de
	.uaword	0x9d80
	.uleb128 0x15
	.string	"IfxVadc_Adc_SYNCTR_STSEL"
	.byte	0xf
	.uahalf	0x15e
	.uaword	0x22a
	.uleb128 0x22
	.byte	0x4
	.byte	0xf
	.uahalf	0x168
	.uaword	0x9f86
	.uleb128 0x1a
	.uaword	.LASF38
	.byte	0xf
	.uahalf	0x16a
	.uaword	0x7df7
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc"
	.byte	0xf
	.uahalf	0x16b
	.uaword	0x9f6f
	.uleb128 0x22
	.byte	0x4
	.byte	0xf
	.uahalf	0x16f
	.uaword	0x9fd8
	.uleb128 0x1a
	.uaword	.LASF39
	.byte	0xf
	.uahalf	0x171
	.uaword	0x8e11
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF40
	.byte	0xf
	.uahalf	0x172
	.uaword	0x9f30
	.byte	0x1
	.uleb128 0x1a
	.uaword	.LASF41
	.byte	0xf
	.uahalf	0x173
	.uaword	0x8c56
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LASF42
	.byte	0xf
	.uahalf	0x174
	.uaword	0x9d64
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_GatingTriggerConfig"
	.byte	0xf
	.uahalf	0x175
	.uaword	0x9f9a
	.uleb128 0x22
	.byte	0x4
	.byte	0xf
	.uahalf	0x17d
	.uaword	0xa082
	.uleb128 0x1a
	.uaword	.LASF43
	.byte	0xf
	.uahalf	0x17f
	.uaword	0x8005
	.byte	0
	.uleb128 0x19
	.string	"requestSlotQueueEnabled"
	.byte	0xf
	.uahalf	0x180
	.uaword	0x2ae
	.byte	0x1
	.uleb128 0x19
	.string	"requestSlotScanEnabled"
	.byte	0xf
	.uahalf	0x181
	.uaword	0x2ae
	.byte	0x2
	.uleb128 0x19
	.string	"requestSlotBackgroundScanEnabled"
	.byte	0xf
	.uahalf	0x182
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_ArbiterConfig"
	.byte	0xf
	.uahalf	0x183
	.uaword	0xa000
	.uleb128 0x22
	.byte	0x8
	.byte	0xf
	.uahalf	0x187
	.uaword	0xa0f8
	.uleb128 0x19
	.string	"autoBackgroundScanEnabled"
	.byte	0xf
	.uahalf	0x189
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF44
	.byte	0xf
	.uahalf	0x18a
	.uaword	0x9fd8
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LASF45
	.byte	0xf
	.uahalf	0x18b
	.uaword	0x99bf
	.byte	0x6
	.uleb128 0x1a
	.uaword	.LASF46
	.byte	0xf
	.uahalf	0x18c
	.uaword	0x9a4b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_BackgroundScanConfig"
	.byte	0xf
	.uahalf	0x18d
	.uaword	0xa0a4
	.uleb128 0x22
	.byte	0x8
	.byte	0xf
	.uahalf	0x191
	.uaword	0xa145
	.uleb128 0x1a
	.uaword	.LASF47
	.byte	0xf
	.uahalf	0x193
	.uaword	0x295
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF48
	.byte	0xf
	.uahalf	0x194
	.uaword	0x85e4
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_ClassConfig"
	.byte	0xf
	.uahalf	0x195
	.uaword	0xa121
	.uleb128 0x22
	.byte	0xc
	.byte	0xf
	.uahalf	0x199
	.uaword	0xa196
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0xf
	.uahalf	0x19b
	.uaword	0x9f86
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x19c
	.uaword	0xa196
	.byte	0x4
	.uleb128 0x1a
	.uaword	.LASF50
	.byte	0xf
	.uahalf	0x19d
	.uaword	0x665
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x4fb6
	.uleb128 0x15
	.string	"IfxVadc_Adc_Group"
	.byte	0xf
	.uahalf	0x19e
	.uaword	0xa165
	.uleb128 0x22
	.byte	0x8
	.byte	0xf
	.uahalf	0x1a2
	.uaword	0xa204
	.uleb128 0x19
	.string	"flushQueueAfterInit"
	.byte	0xf
	.uahalf	0x1a4
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF44
	.byte	0xf
	.uahalf	0x1a5
	.uaword	0x9fd8
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LASF45
	.byte	0xf
	.uahalf	0x1a6
	.uaword	0x99bf
	.byte	0x6
	.uleb128 0x1a
	.uaword	.LASF46
	.byte	0xf
	.uahalf	0x1a7
	.uaword	0x9a4b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_QueueConfig"
	.byte	0xf
	.uahalf	0x1a8
	.uaword	0xa1b6
	.uleb128 0x22
	.byte	0x8
	.byte	0xf
	.uahalf	0x1ac
	.uaword	0xa26e
	.uleb128 0x19
	.string	"autoscanEnabled"
	.byte	0xf
	.uahalf	0x1ae
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF44
	.byte	0xf
	.uahalf	0x1af
	.uaword	0x9fd8
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LASF45
	.byte	0xf
	.uahalf	0x1b0
	.uaword	0x99bf
	.byte	0x6
	.uleb128 0x1a
	.uaword	.LASF46
	.byte	0xf
	.uahalf	0x1b1
	.uaword	0x9a4b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_ScanConfig"
	.byte	0xf
	.uahalf	0x1b2
	.uaword	0xa224
	.uleb128 0x22
	.byte	0x10
	.byte	0xf
	.uahalf	0x1b6
	.uaword	0xa2bf
	.uleb128 0x19
	.string	"pins"
	.byte	0xf
	.uahalf	0x1b8
	.uaword	0xa2bf
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF51
	.byte	0xf
	.uahalf	0x1b9
	.uaword	0x7bee
	.byte	0xc
	.uleb128 0x1a
	.uaword	.LASF52
	.byte	0xf
	.uahalf	0x1ba
	.uaword	0x7da9
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.uaword	0xa2cf
	.uaword	0xa2cf
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7e45
	.uleb128 0x15
	.string	"IfxVadc_Adc_EmuxPinConfig"
	.byte	0xf
	.uahalf	0x1bb
	.uaword	0xa28d
	.uleb128 0x22
	.byte	0x8
	.byte	0xf
	.uahalf	0x1c1
	.uaword	0xa32e
	.uleb128 0x1a
	.uaword	.LASF53
	.byte	0xf
	.uahalf	0x1c3
	.uaword	0x84c6
	.byte	0
	.uleb128 0x19
	.string	"resultreg"
	.byte	0xf
	.uahalf	0x1c4
	.uaword	0x87b4
	.byte	0x1
	.uleb128 0x1a
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x1c5
	.uaword	0xa32e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa334
	.uleb128 0x20
	.uaword	0xa19c
	.uleb128 0x15
	.string	"IfxVadc_Adc_Channel"
	.byte	0xf
	.uahalf	0x1c6
	.uaword	0xa2f7
	.uleb128 0x22
	.byte	0x18
	.byte	0xf
	.uahalf	0x1ca
	.uaword	0xa49a
	.uleb128 0x1a
	.uaword	.LASF54
	.byte	0xf
	.uahalf	0x1cc
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF55
	.byte	0xf
	.uahalf	0x1cd
	.uaword	0x2ae
	.byte	0x1
	.uleb128 0x19
	.string	"backgroundChannel"
	.byte	0xf
	.uahalf	0x1ce
	.uaword	0x2ae
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LASF56
	.byte	0xf
	.uahalf	0x1cf
	.uaword	0x2ae
	.byte	0x3
	.uleb128 0x19
	.string	"resultPriority"
	.byte	0xf
	.uahalf	0x1d0
	.uaword	0x2f7
	.byte	0x4
	.uleb128 0x19
	.string	"channelPriority"
	.byte	0xf
	.uahalf	0x1d1
	.uaword	0x2f7
	.byte	0x6
	.uleb128 0x19
	.string	"resultServProvider"
	.byte	0xf
	.uahalf	0x1d2
	.uaword	0x1e1
	.byte	0x8
	.uleb128 0x19
	.string	"channelServProvider"
	.byte	0xf
	.uahalf	0x1d3
	.uaword	0x1e1
	.byte	0x9
	.uleb128 0x1a
	.uaword	.LASF57
	.byte	0xf
	.uahalf	0x1d4
	.uaword	0x9bbc
	.byte	0xa
	.uleb128 0x1a
	.uaword	.LASF58
	.byte	0xf
	.uahalf	0x1d5
	.uaword	0x9bbc
	.byte	0xb
	.uleb128 0x1a
	.uaword	.LASF59
	.byte	0xf
	.uahalf	0x1d6
	.uaword	0x84c6
	.byte	0xc
	.uleb128 0x1a
	.uaword	.LASF60
	.byte	0xf
	.uahalf	0x1d7
	.uaword	0x8eb2
	.byte	0xd
	.uleb128 0x1a
	.uaword	.LASF61
	.byte	0xf
	.uahalf	0x1d8
	.uaword	0x8530
	.byte	0xe
	.uleb128 0x1a
	.uaword	.LASF62
	.byte	0xf
	.uahalf	0x1d9
	.uaword	0x87b4
	.byte	0xf
	.uleb128 0x1a
	.uaword	.LASF63
	.byte	0xf
	.uahalf	0x1da
	.uaword	0x83d3
	.byte	0x10
	.uleb128 0x1a
	.uaword	.LASF64
	.byte	0xf
	.uahalf	0x1db
	.uaword	0x83d3
	.byte	0x11
	.uleb128 0x1a
	.uaword	.LASF65
	.byte	0xf
	.uahalf	0x1dc
	.uaword	0x831b
	.byte	0x12
	.uleb128 0x1a
	.uaword	.LASF66
	.byte	0xf
	.uahalf	0x1dd
	.uaword	0x8f5d
	.byte	0x13
	.uleb128 0x1a
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x1de
	.uaword	0xa32e
	.byte	0x14
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_ChannelConfig"
	.byte	0xf
	.uahalf	0x1df
	.uaword	0xa355
	.uleb128 0x22
	.byte	0x24
	.byte	0xf
	.uahalf	0x1e3
	.uaword	0xa560
	.uleb128 0x1a
	.uaword	.LASF38
	.byte	0xf
	.uahalf	0x1e5
	.uaword	0x7df7
	.byte	0
	.uleb128 0x19
	.string	"globalInputClass"
	.byte	0xf
	.uahalf	0x1e6
	.uaword	0xa560
	.byte	0x4
	.uleb128 0x19
	.string	"digitalFrequency"
	.byte	0xf
	.uahalf	0x1e7
	.uaword	0x295
	.byte	0x14
	.uleb128 0x1a
	.uaword	.LASF67
	.byte	0xf
	.uahalf	0x1e8
	.uaword	0x295
	.byte	0x18
	.uleb128 0x19
	.string	"moduleFrequency"
	.byte	0xf
	.uahalf	0x1e9
	.uaword	0x295
	.byte	0x1c
	.uleb128 0x19
	.string	"startupCalibration"
	.byte	0xf
	.uahalf	0x1ea
	.uaword	0x2ae
	.byte	0x20
	.uleb128 0x19
	.string	"supplyVoltage"
	.byte	0xf
	.uahalf	0x1ed
	.uaword	0x8fca
	.byte	0x21
	.byte	0
	.uleb128 0x10
	.uaword	0xa145
	.uaword	0xa570
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_Config"
	.byte	0xf
	.uahalf	0x1ee
	.uaword	0xa4bc
	.uleb128 0x22
	.byte	0x20
	.byte	0xf
	.uahalf	0x1f2
	.uaword	0xa654
	.uleb128 0x1a
	.uaword	.LASF38
	.byte	0xf
	.uahalf	0x1f4
	.uaword	0x7df7
	.byte	0
	.uleb128 0x19
	.string	"mode"
	.byte	0xf
	.uahalf	0x1f5
	.uaword	0x8bac
	.byte	0x4
	.uleb128 0x19
	.string	"startChannel"
	.byte	0xf
	.uahalf	0x1f6
	.uaword	0x8ad1
	.byte	0x5
	.uleb128 0x19
	.string	"code"
	.byte	0xf
	.uahalf	0x1f8
	.uaword	0x88ea
	.byte	0x6
	.uleb128 0x19
	.string	"sampleTimeControl"
	.byte	0xf
	.uahalf	0x1f9
	.uaword	0x89c3
	.byte	0x7
	.uleb128 0x1a
	.uaword	.LASF50
	.byte	0xf
	.uahalf	0x1fa
	.uaword	0x665
	.byte	0x8
	.uleb128 0x19
	.string	"channels"
	.byte	0xf
	.uahalf	0x1fb
	.uaword	0x22a
	.byte	0x9
	.uleb128 0x1a
	.uaword	.LASF68
	.byte	0xf
	.uahalf	0x1fc
	.uaword	0x8947
	.byte	0xa
	.uleb128 0x19
	.string	"emuxOutPinConfig"
	.byte	0xf
	.uahalf	0x1fd
	.uaword	0xa2d5
	.byte	0xc
	.uleb128 0x19
	.string	"channelSelectionStyle"
	.byte	0xf
	.uahalf	0x1fe
	.uaword	0x882f
	.byte	0x1c
	.byte	0
	.uleb128 0x15
	.string	"IfxVadc_Adc_EmuxControl"
	.byte	0xf
	.uahalf	0x1ff
	.uaword	0xa58b
	.uleb128 0x22
	.byte	0x38
	.byte	0xf
	.uahalf	0x203
	.uaword	0xa730
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0xf
	.uahalf	0x205
	.uaword	0xa730
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF50
	.byte	0xf
	.uahalf	0x206
	.uaword	0x665
	.byte	0x4
	.uleb128 0x19
	.string	"master"
	.byte	0xf
	.uahalf	0x207
	.uaword	0x665
	.byte	0x5
	.uleb128 0x1a
	.uaword	.LASF60
	.byte	0xf
	.uahalf	0x208
	.uaword	0xa560
	.byte	0x8
	.uleb128 0x19
	.string	"scanRequest"
	.byte	0xf
	.uahalf	0x209
	.uaword	0xa26e
	.byte	0x18
	.uleb128 0x19
	.string	"queueRequest"
	.byte	0xf
	.uahalf	0x20a
	.uaword	0xa204
	.byte	0x20
	.uleb128 0x19
	.string	"backgroundScanRequest"
	.byte	0xf
	.uahalf	0x20b
	.uaword	0xa0f8
	.byte	0x28
	.uleb128 0x19
	.string	"disablePostCalibration"
	.byte	0xf
	.uahalf	0x20c
	.uaword	0x2ae
	.byte	0x30
	.uleb128 0x19
	.string	"arbiter"
	.byte	0xf
	.uahalf	0x20d
	.uaword	0xa082
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa736
	.uleb128 0x20
	.uaword	0x9f86
	.uleb128 0x15
	.string	"IfxVadc_Adc_GroupConfig"
	.byte	0xf
	.uahalf	0x20e
	.uaword	0xa674
	.uleb128 0x23
	.string	"IfxSrc_clearRequest"
	.byte	0x3
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0xa784
	.uleb128 0x24
	.string	"src"
	.byte	0x3
	.byte	0xe6
	.uaword	0xa784
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa78a
	.uleb128 0x1e
	.uaword	0x48b
	.uleb128 0x25
	.string	"__minu"
	.byte	0x4
	.byte	0xae
	.byte	0x1
	.uaword	0x287
	.byte	0x3
	.uaword	0xa7c1
	.uleb128 0x24
	.string	"a"
	.byte	0x4
	.byte	0xae
	.uaword	0x287
	.uleb128 0x24
	.string	"b"
	.byte	0x4
	.byte	0xae
	.uaword	0x287
	.uleb128 0x26
	.string	"res"
	.byte	0x4
	.byte	0xb0
	.uaword	0x287
	.byte	0
	.uleb128 0x27
	.string	"IfxPort_setPinModeOutput"
	.byte	0x5
	.uahalf	0x236
	.byte	0x1
	.byte	0x3
	.uaword	0xa819
	.uleb128 0x28
	.string	"port"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x77f7
	.uleb128 0x29
	.uaword	.LASF37
	.byte	0x5
	.uahalf	0x236
	.uaword	0x22a
	.uleb128 0x28
	.string	"mode"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x7bee
	.uleb128 0x28
	.string	"index"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x7b8d
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_calculateSampleTime"
	.byte	0x2
	.uahalf	0x69d
	.byte	0x1
	.uaword	0x287
	.byte	0x3
	.uaword	0xa86a
	.uleb128 0x29
	.uaword	.LASF67
	.byte	0x2
	.uahalf	0x69d
	.uaword	0x295
	.uleb128 0x29
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x69d
	.uaword	0x295
	.uleb128 0x2b
	.string	"ticks"
	.byte	0x2
	.uahalf	0x69f
	.uaword	0x287
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_Adc_getGroupRegsFromGroup"
	.byte	0xf
	.uahalf	0x4b1
	.byte	0x1
	.uaword	0xa196
	.byte	0x3
	.uaword	0xa8a7
	.uleb128 0x29
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x4b1
	.uaword	0xa32e
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_Adc_getVadcFromGroup"
	.byte	0xf
	.uahalf	0x4e3
	.byte	0x1
	.uaword	0x7df7
	.byte	0x3
	.uaword	0xa8df
	.uleb128 0x29
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x4e3
	.uaword	0xa32e
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_resetGroup"
	.byte	0x2
	.uahalf	0x856
	.byte	0x1
	.byte	0x3
	.uaword	0xa909
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x856
	.uaword	0xa196
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_disableModule"
	.byte	0x2
	.uahalf	0x6cc
	.byte	0x1
	.byte	0x3
	.uaword	0xa945
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x6cc
	.uaword	0x7df7
	.uleb128 0x2b
	.string	"passwd"
	.byte	0x2
	.uahalf	0x6ce
	.uaword	0x255
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getChannelControlConfig"
	.byte	0x2
	.uahalf	0x743
	.byte	0x1
	.uaword	0x4220
	.byte	0x3
	.uaword	0xa998
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x743
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x743
	.uaword	0x84c6
	.uleb128 0x2c
	.uaword	.LASF71
	.byte	0x2
	.uahalf	0x745
	.uaword	0x4220
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getAssignedChannels"
	.byte	0x2
	.uahalf	0x717
	.byte	0x1
	.uaword	0x41df
	.byte	0x3
	.uaword	0xa9e6
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x717
	.uaword	0xa196
	.uleb128 0x2b
	.string	"assignChannels"
	.byte	0x2
	.uahalf	0x719
	.uaword	0x41df
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getChannelServiceRequestNodePointer0"
	.byte	0x2
	.uahalf	0x761
	.byte	0x1
	.uaword	0x419d
	.byte	0x3
	.uaword	0xaa4c
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x761
	.uaword	0xa196
	.uleb128 0x2b
	.string	"serviceRequestNodePtr"
	.byte	0x2
	.uahalf	0x763
	.uaword	0x419d
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getChannelResultServiceRequestNodePointer0"
	.byte	0x2
	.uahalf	0x751
	.byte	0x1
	.uaword	0x456a
	.byte	0x3
	.uaword	0xaabf
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x751
	.uaword	0xa196
	.uleb128 0x2b
	.string	"resultServiceRequestNodePtr0"
	.byte	0x2
	.uahalf	0x753
	.uaword	0x456a
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getChannelResultServiceRequestNodePointer1"
	.byte	0x2
	.uahalf	0x759
	.byte	0x1
	.uaword	0x45ac
	.byte	0x3
	.uaword	0xab32
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x759
	.uaword	0xa196
	.uleb128 0x2b
	.string	"resultServiceRequestNodePtr1"
	.byte	0x2
	.uahalf	0x75b
	.uaword	0x45ac
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getChannelInputClass"
	.byte	0x2
	.uahalf	0x74b
	.byte	0x1
	.uaword	0x8eb2
	.byte	0x3
	.uaword	0xab76
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x74b
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x74b
	.uaword	0x84c6
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getArbiterRoundLength"
	.byte	0x2
	.uahalf	0x711
	.byte	0x1
	.uaword	0x8005
	.byte	0x3
	.uaword	0xabaf
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x711
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getGroupResolution"
	.byte	0x2
	.uahalf	0x7a6
	.byte	0x1
	.uaword	0x85e4
	.byte	0x3
	.uaword	0xabf1
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7a6
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x7a6
	.uaword	0x22a
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getGroupSampleTime"
	.byte	0x2
	.uahalf	0x7b7
	.byte	0x1
	.uaword	0x295
	.byte	0x3
	.uaword	0xac4b
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7b7
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x7b7
	.uaword	0x22a
	.uleb128 0x29
	.uaword	.LASF67
	.byte	0x2
	.uahalf	0x7b7
	.uaword	0x295
	.uleb128 0x2c
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x7b9
	.uaword	0x287
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_isRequestScanSlotEnabled"
	.byte	0x2
	.uahalf	0x850
	.byte	0x1
	.uaword	0x2ae
	.byte	0x3
	.uaword	0xac87
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x850
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getScanSlotPriority"
	.byte	0x2
	.uahalf	0x806
	.byte	0x1
	.uaword	0x99bf
	.byte	0x3
	.uaword	0xacbe
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x806
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getScanSlotStartMode"
	.byte	0x2
	.uahalf	0x80c
	.byte	0x1
	.uaword	0x9a4b
	.byte	0x3
	.uaword	0xacf6
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x80c
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getScanSlotTriggerInput"
	.byte	0x2
	.uahalf	0x812
	.byte	0x1
	.uaword	0x9f30
	.byte	0x3
	.uaword	0xad31
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x812
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getScanSlotTriggerMode"
	.byte	0x2
	.uahalf	0x818
	.byte	0x1
	.uaword	0x9d64
	.byte	0x3
	.uaword	0xad6b
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x818
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getScanSlotGatingMode"
	.byte	0x2
	.uahalf	0x7fa
	.byte	0x1
	.uaword	0x8c56
	.byte	0x3
	.uaword	0xada4
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7fa
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getScanSlotGatingSource"
	.byte	0x2
	.uahalf	0x800
	.byte	0x1
	.uaword	0x8e11
	.byte	0x3
	.uaword	0xaddf
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x800
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_isAutoScanEnabled"
	.byte	0x2
	.uahalf	0x83e
	.byte	0x1
	.uaword	0x2ae
	.byte	0x3
	.uaword	0xae14
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x83e
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_isRequestQueueSlotEnabled"
	.byte	0x2
	.uahalf	0x84a
	.byte	0x1
	.uaword	0x2ae
	.byte	0x3
	.uaword	0xae51
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x84a
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getQueueSlotPriority"
	.byte	0x2
	.uahalf	0x7d8
	.byte	0x1
	.uaword	0x99bf
	.byte	0x3
	.uaword	0xae89
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7d8
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getQueueSlotStartMode"
	.byte	0x2
	.uahalf	0x7de
	.byte	0x1
	.uaword	0x9a4b
	.byte	0x3
	.uaword	0xaec2
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7de
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getQueueSlotTriggerInput"
	.byte	0x2
	.uahalf	0x7e4
	.byte	0x1
	.uaword	0x9f30
	.byte	0x3
	.uaword	0xaefe
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7e4
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getQueueSlotTriggerMode"
	.byte	0x2
	.uahalf	0x7ea
	.byte	0x1
	.uaword	0x9d64
	.byte	0x3
	.uaword	0xaf39
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7ea
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getQueueSlotGatingMode"
	.byte	0x2
	.uahalf	0x7cc
	.byte	0x1
	.uaword	0x8c56
	.byte	0x3
	.uaword	0xaf73
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7cc
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getQueueSlotGatingSource"
	.byte	0x2
	.uahalf	0x7d2
	.byte	0x1
	.uaword	0x8e11
	.byte	0x3
	.uaword	0xafaf
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7d2
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_isRequestBackgroundScanSlotEnabled"
	.byte	0x2
	.uahalf	0x844
	.byte	0x1
	.uaword	0x2ae
	.byte	0x3
	.uaword	0xaff5
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x844
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getBackgroundScanSlotPriority"
	.byte	0x2
	.uahalf	0x72b
	.byte	0x1
	.uaword	0x99bf
	.byte	0x3
	.uaword	0xb036
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x72b
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getBackgroundScanSlotStartMode"
	.byte	0x2
	.uahalf	0x731
	.byte	0x1
	.uaword	0x9a4b
	.byte	0x3
	.uaword	0xb078
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x731
	.uaword	0xa196
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getBackgroundScanTriggerInput"
	.byte	0x2
	.uahalf	0x737
	.byte	0x1
	.uaword	0x9f30
	.byte	0x3
	.uaword	0xb0b9
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x737
	.uaword	0x7df7
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getBackgroundScanTriggerMode"
	.byte	0x2
	.uahalf	0x73d
	.byte	0x1
	.uaword	0x9d64
	.byte	0x3
	.uaword	0xb0f9
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x73d
	.uaword	0x7df7
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getBackgroundScanGatingMode"
	.byte	0x2
	.uahalf	0x71f
	.byte	0x1
	.uaword	0x8c56
	.byte	0x3
	.uaword	0xb138
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x71f
	.uaword	0x7df7
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getBackgroundScanGatingSource"
	.byte	0x2
	.uahalf	0x725
	.byte	0x1
	.uaword	0x8e11
	.byte	0x3
	.uaword	0xb179
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x725
	.uaword	0x7df7
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_isAutoBackgroundScanEnabled"
	.byte	0x2
	.uahalf	0x838
	.byte	0x1
	.uaword	0x2ae
	.byte	0x3
	.uaword	0xb1b8
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x838
	.uaword	0x7df7
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getMasterIndex"
	.byte	0x2
	.uahalf	0x7c4
	.byte	0x1
	.uaword	0x22a
	.byte	0x3
	.uaword	0xb1f6
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x7c4
	.uaword	0xa196
	.uleb128 0x2c
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7c6
	.uaword	0x22a
	.byte	0
	.uleb128 0x25
	.string	"IfxVadc_Adc_getMasterId"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	0x665
	.byte	0x3
	.uaword	0xb25e
	.uleb128 0x24
	.string	"slave"
	.byte	0x1
	.byte	0x51
	.uaword	0x665
	.uleb128 0x2d
	.uaword	.LASF73
	.byte	0x1
	.byte	0x51
	.uaword	0x9f4e
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x53
	.uaword	0x22a
	.uleb128 0x26
	.string	"idxOffset"
	.byte	0x1
	.byte	0x53
	.uaword	0x22a
	.uleb128 0x26
	.string	"masterId"
	.byte	0x1
	.byte	0x54
	.uaword	0x665
	.byte	0
	.uleb128 0x2a
	.string	"IfxVadc_getGlobalConfigValue"
	.byte	0x2
	.uahalf	0x781
	.byte	0x1
	.uaword	0x47f9
	.byte	0x3
	.uaword	0xb2a6
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x781
	.uaword	0x7df7
	.uleb128 0x2b
	.string	"globCfg"
	.byte	0x2
	.uahalf	0x783
	.uaword	0x47f9
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setReferenceInput"
	.byte	0x2
	.uahalf	0x91c
	.byte	0x1
	.byte	0x3
	.uaword	0xb2ef
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x91c
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x91c
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF61
	.byte	0x2
	.uahalf	0x91c
	.uaword	0x8530
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_storeGroupResult"
	.byte	0x2
	.uahalf	0x973
	.byte	0x1
	.byte	0x3
	.uaword	0xb337
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x973
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x973
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF62
	.byte	0x2
	.uahalf	0x973
	.uaword	0x87b4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setLowerBoundary"
	.byte	0x2
	.uahalf	0x8f9
	.byte	0x1
	.byte	0x3
	.uaword	0xb37f
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8f9
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x8f9
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF63
	.byte	0x2
	.uahalf	0x8f9
	.uaword	0x83d3
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setUpperBoundary"
	.byte	0x2
	.uahalf	0x95b
	.byte	0x1
	.byte	0x3
	.uaword	0xb3c7
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x95b
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x95b
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF64
	.byte	0x2
	.uahalf	0x95b
	.uaword	0x83d3
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setSyncRequest"
	.byte	0x2
	.uahalf	0x955
	.byte	0x1
	.byte	0x3
	.uaword	0xb40d
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x955
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x955
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF55
	.byte	0x2
	.uahalf	0x955
	.uaword	0x2ae
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setChannelInputClass"
	.byte	0x2
	.uahalf	0x8aa
	.byte	0x1
	.byte	0x3
	.uaword	0xb459
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8aa
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x8aa
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF60
	.byte	0x2
	.uahalf	0x8aa
	.uaword	0x8eb2
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setChannelLimitCheckMode"
	.byte	0x2
	.uahalf	0x8b0
	.byte	0x1
	.byte	0x3
	.uaword	0xb4a9
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8b0
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x8b0
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF66
	.byte	0x2
	.uahalf	0x8b0
	.uaword	0x8f5d
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setResultPosition"
	.byte	0x2
	.uahalf	0x930
	.byte	0x1
	.byte	0x3
	.uaword	0xb4f2
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x930
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x930
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF56
	.byte	0x2
	.uahalf	0x930
	.uaword	0x2ae
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setBackgroundResultTarget"
	.byte	0x2
	.uahalf	0x87a
	.byte	0x1
	.byte	0x3
	.uaword	0xb543
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x87a
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x87a
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF54
	.byte	0x2
	.uahalf	0x87a
	.uaword	0x2ae
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setBoundaryMode"
	.byte	0x2
	.uahalf	0x89d
	.byte	0x1
	.byte	0x3
	.uaword	0xb58a
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x89d
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x89d
	.uaword	0x84c6
	.uleb128 0x29
	.uaword	.LASF65
	.byte	0x2
	.uahalf	0x89d
	.uaword	0x831b
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setGroupPriorityChannel"
	.byte	0x2
	.uahalf	0x8e7
	.byte	0x1
	.byte	0x3
	.uaword	0xb5cd
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8e7
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x8e7
	.uaword	0x84c6
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setBackgroundPriorityChannel"
	.byte	0x2
	.uahalf	0x874
	.byte	0x1
	.byte	0x3
	.uaword	0xb615
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x874
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x874
	.uaword	0x84c6
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setChannelEventNodePointer0"
	.byte	0x2
	.uahalf	0x8a3
	.byte	0x1
	.byte	0x3
	.uaword	0xb668
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8a3
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF58
	.byte	0x2
	.uahalf	0x8a3
	.uaword	0x9bbc
	.uleb128 0x29
	.uaword	.LASF53
	.byte	0x2
	.uahalf	0x8a3
	.uaword	0x84c6
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_clearChannelRequest"
	.byte	0x2
	.uahalf	0x6b4
	.byte	0x1
	.byte	0x3
	.uaword	0xb6a7
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6b4
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF59
	.byte	0x2
	.uahalf	0x6b4
	.uaword	0x84c6
	.byte	0
	.uleb128 0x23
	.string	"IfxSrc_init"
	.byte	0x3
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0xb6ec
	.uleb128 0x24
	.string	"src"
	.byte	0x3
	.byte	0xfe
	.uaword	0xa784
	.uleb128 0x24
	.string	"typOfService"
	.byte	0x3
	.byte	0xfe
	.uaword	0x1e1
	.uleb128 0x24
	.string	"priority"
	.byte	0x3
	.byte	0xfe
	.uaword	0x2f7
	.byte	0
	.uleb128 0x23
	.string	"IfxSrc_enable"
	.byte	0x3
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0xb70f
	.uleb128 0x24
	.string	"src"
	.byte	0x3
	.byte	0xf8
	.uaword	0xa784
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setResultNodeEventPointer0"
	.byte	0x2
	.uahalf	0x922
	.byte	0x1
	.byte	0x3
	.uaword	0xb761
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x922
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x922
	.uaword	0x9bbc
	.uleb128 0x29
	.uaword	.LASF62
	.byte	0x2
	.uahalf	0x922
	.uaword	0x87b4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setResultNodeEventPointer1"
	.byte	0x2
	.uahalf	0x929
	.byte	0x1
	.byte	0x3
	.uaword	0xb7b3
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x929
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x929
	.uaword	0x9bbc
	.uleb128 0x29
	.uaword	.LASF62
	.byte	0x2
	.uahalf	0x929
	.uaword	0x87b4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_enableServiceRequest"
	.byte	0x2
	.uahalf	0x703
	.byte	0x1
	.byte	0x3
	.uaword	0xb7f3
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x703
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF62
	.byte	0x2
	.uahalf	0x703
	.uaword	0x87b4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_clearAllResultRequests"
	.byte	0x2
	.uahalf	0x6ae
	.byte	0x1
	.byte	0x3
	.uaword	0xb829
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6ae
	.uaword	0xa196
	.byte	0
	.uleb128 0x25
	.string	"IfxVadc_Adc_getMasterKernelIndex"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	0x9f4e
	.byte	0x3
	.uaword	0xb873
	.uleb128 0x24
	.string	"slave"
	.byte	0x1
	.byte	0x6b
	.uaword	0x665
	.uleb128 0x24
	.string	"master"
	.byte	0x1
	.byte	0x6b
	.uaword	0x665
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setMasterIndex"
	.byte	0x2
	.uahalf	0x8ff
	.byte	0x1
	.byte	0x3
	.uaword	0xb8ad
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8ff
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8ff
	.uaword	0x22a
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setAnalogConvertControl"
	.byte	0x2
	.uahalf	0x85c
	.byte	0x1
	.byte	0x3
	.uaword	0xb900
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x85c
	.uaword	0xa196
	.uleb128 0x28
	.string	"analogConverterMode"
	.byte	0x2
	.uahalf	0x85c
	.uaword	0x7f47
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setArbitrationRoundLength"
	.byte	0x2
	.uahalf	0x862
	.byte	0x1
	.byte	0x3
	.uaword	0xb945
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x862
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF43
	.byte	0x2
	.uahalf	0x862
	.uaword	0x8005
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_enableQueueSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6f7
	.byte	0x1
	.byte	0x3
	.uaword	0xb983
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6f7
	.uaword	0xa196
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setQueueSlotTriggerOperatingConfig"
	.byte	0x2
	.uahalf	0x911
	.byte	0x1
	.byte	0x3
	.uaword	0xb9ec
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x911
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x911
	.uaword	0x9d64
	.uleb128 0x29
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x911
	.uaword	0x9f30
	.uleb128 0x2b
	.string	"qctrl0"
	.byte	0x2
	.uahalf	0x913
	.uaword	0x4325
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setQueueSlotGatingConfig"
	.byte	0x2
	.uahalf	0x906
	.byte	0x1
	.byte	0x3
	.uaword	0xba4b
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x906
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x906
	.uaword	0x8e11
	.uleb128 0x29
	.uaword	.LASF41
	.byte	0x2
	.uahalf	0x906
	.uaword	0x8c56
	.uleb128 0x2b
	.string	"qctrl0"
	.byte	0x2
	.uahalf	0x908
	.uaword	0x4325
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_disableQueueSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6d5
	.byte	0x1
	.byte	0x3
	.uaword	0xba8a
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6d5
	.uaword	0xa196
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_clearQueue"
	.byte	0x2
	.uahalf	0x6ba
	.byte	0x1
	.byte	0x3
	.uaword	0xbac7
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6ba
	.uaword	0xa196
	.uleb128 0x28
	.string	"flushQueue"
	.byte	0x2
	.uahalf	0x6ba
	.uaword	0x2ae
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_enableScanSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6fd
	.byte	0x1
	.byte	0x3
	.uaword	0xbb04
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6fd
	.uaword	0xa196
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setScanSlotTriggerConfig"
	.byte	0x2
	.uahalf	0x941
	.byte	0x1
	.byte	0x3
	.uaword	0xbb63
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x941
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x941
	.uaword	0x9d64
	.uleb128 0x29
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x941
	.uaword	0x9f30
	.uleb128 0x2b
	.string	"asctrl"
	.byte	0x2
	.uahalf	0x943
	.uaword	0x3ed4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setScanSlotGatingConfig"
	.byte	0x2
	.uahalf	0x936
	.byte	0x1
	.byte	0x3
	.uaword	0xbbc1
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x936
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x936
	.uaword	0x8e11
	.uleb128 0x29
	.uaword	.LASF41
	.byte	0x2
	.uahalf	0x936
	.uaword	0x8c56
	.uleb128 0x2b
	.string	"asctrl"
	.byte	0x2
	.uahalf	0x938
	.uaword	0x3ed4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_disableScanSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6db
	.byte	0x1
	.byte	0x3
	.uaword	0xbbff
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x6db
	.uaword	0xa196
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setAutoScan"
	.byte	0x2
	.uahalf	0x86e
	.byte	0x1
	.byte	0x3
	.uaword	0xbc41
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x86e
	.uaword	0xa196
	.uleb128 0x28
	.string	"autoscanEnable"
	.byte	0x2
	.uahalf	0x86e
	.uaword	0x2ae
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_enableBackgroundScanSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6e1
	.byte	0x1
	.byte	0x3
	.uaword	0xbc88
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x6e1
	.uaword	0x7df7
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setBackgroundScanSlotTriggerConfig"
	.byte	0x2
	.uahalf	0x892
	.byte	0x1
	.byte	0x3
	.uaword	0xbcf2
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x892
	.uaword	0x7df7
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x892
	.uaword	0x9d64
	.uleb128 0x29
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x892
	.uaword	0x9f30
	.uleb128 0x2b
	.string	"brsctrl"
	.byte	0x2
	.uahalf	0x894
	.uaword	0x3c92
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setBackgroundScanSlotGatingConfig"
	.byte	0x2
	.uahalf	0x887
	.byte	0x1
	.byte	0x3
	.uaword	0xbd5b
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x887
	.uaword	0x7df7
	.uleb128 0x29
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x887
	.uaword	0x8e11
	.uleb128 0x29
	.uaword	.LASF41
	.byte	0x2
	.uahalf	0x887
	.uaword	0x8c56
	.uleb128 0x2b
	.string	"brsctrl"
	.byte	0x2
	.uahalf	0x889
	.uaword	0x3c92
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setAutoBackgroundScan"
	.byte	0x2
	.uahalf	0x868
	.byte	0x1
	.byte	0x3
	.uaword	0xbdb1
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x868
	.uaword	0x7df7
	.uleb128 0x28
	.string	"autoBackgroundScanEnable"
	.byte	0x2
	.uahalf	0x868
	.uaword	0x2ae
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setGroupResolution"
	.byte	0x2
	.uahalf	0x8ed
	.byte	0x1
	.byte	0x3
	.uaword	0xbdfb
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8ed
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x8ed
	.uaword	0x22a
	.uleb128 0x29
	.uaword	.LASF48
	.byte	0x2
	.uahalf	0x8ed
	.uaword	0x85e4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setGroupSampleTime"
	.byte	0x2
	.uahalf	0x8f3
	.byte	0x1
	.byte	0x3
	.uaword	0xbe51
	.uleb128 0x29
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x8f3
	.uaword	0xa196
	.uleb128 0x29
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x8f3
	.uaword	0x22a
	.uleb128 0x29
	.uaword	.LASF67
	.byte	0x2
	.uahalf	0x8f3
	.uaword	0x295
	.uleb128 0x29
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x8f3
	.uaword	0x295
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_enableModule"
	.byte	0x2
	.uahalf	0x6ed
	.byte	0x1
	.byte	0x3
	.uaword	0xbe8c
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x6ed
	.uaword	0x7df7
	.uleb128 0x2b
	.string	"passwd"
	.byte	0x2
	.uahalf	0x6ef
	.uaword	0x255
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setGlobalResolution"
	.byte	0x2
	.uahalf	0x8db
	.byte	0x1
	.byte	0x3
	.uaword	0xbed7
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x8db
	.uaword	0x7df7
	.uleb128 0x29
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x8db
	.uaword	0x22a
	.uleb128 0x29
	.uaword	.LASF48
	.byte	0x2
	.uahalf	0x8db
	.uaword	0x85e4
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setGlobalSampleTime"
	.byte	0x2
	.uahalf	0x8e1
	.byte	0x1
	.byte	0x3
	.uaword	0xbf2e
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x8e1
	.uaword	0x7df7
	.uleb128 0x29
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x8e1
	.uaword	0x22a
	.uleb128 0x29
	.uaword	.LASF67
	.byte	0x2
	.uahalf	0x8e1
	.uaword	0x295
	.uleb128 0x29
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x8e1
	.uaword	0x295
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_setEmuxInterfaceForGroup"
	.byte	0x2
	.uahalf	0x8ce
	.byte	0x1
	.byte	0x3
	.uaword	0xbf7e
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x8ce
	.uaword	0x7df7
	.uleb128 0x29
	.uaword	.LASF68
	.byte	0x2
	.uahalf	0x8ce
	.uaword	0x8947
	.uleb128 0x29
	.uaword	.LASF49
	.byte	0x2
	.uahalf	0x8ce
	.uaword	0x665
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_initEmuxPin"
	.byte	0x2
	.uahalf	0x824
	.byte	0x1
	.byte	0x3
	.uaword	0xbfc2
	.uleb128 0x28
	.string	"emux"
	.byte	0x2
	.uahalf	0x824
	.uaword	0xbfc2
	.uleb128 0x29
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x824
	.uaword	0x7bee
	.uleb128 0x29
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x824
	.uaword	0x7da9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7e2d
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxVadc_Adc_deInitGroup"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc075
	.uleb128 0x2f
	.uaword	.LASF49
	.byte	0x1
	.byte	0x75
	.uaword	0xc075
	.uaword	.LLST0
	.uleb128 0x30
	.uaword	.LASF38
	.byte	0x1
	.byte	0x77
	.uaword	0x7df7
	.uleb128 0x30
	.uaword	.LASF69
	.byte	0x1
	.byte	0x78
	.uaword	0xa196
	.uleb128 0x31
	.uaword	.LASF75
	.byte	0x1
	.byte	0x7a
	.uaword	0x665
	.uaword	.LLST1
	.uleb128 0x32
	.uaword	0xa8df
	.uaword	.LBB224
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7e
	.uaword	0xc043
	.uleb128 0x33
	.uaword	0xa8fc
	.byte	0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x34
	.uaword	.LVL4
	.uaword	0xdb71
	.uaword	0xc05d
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL5
	.byte	0x1
	.uaword	0xdb9c
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa19c
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxVadc_Adc_disableModule"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc113
	.uleb128 0x2f
	.uaword	.LASF38
	.byte	0x1
	.byte	0x83
	.uaword	0x7df7
	.uaword	.LLST2
	.uleb128 0x37
	.uaword	0xa909
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x1
	.byte	0x85
	.uleb128 0x38
	.uaword	0xa929
	.uaword	.LLST3
	.uleb128 0x39
	.uaword	.LBB231
	.uaword	.LBE231
	.uleb128 0x3a
	.uaword	0xa935
	.uaword	.LLST4
	.uleb128 0x3b
	.uaword	.LVL8
	.uaword	0xdbc8
	.uleb128 0x34
	.uaword	.LVL10
	.uaword	0xdbf4
	.uaword	0xc0ff
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL11
	.byte	0x1
	.uaword	0xdc1e
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxVadc_Adc_getChannelConfig"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc31a
	.uleb128 0x2f
	.uaword	.LASF53
	.byte	0x1
	.byte	0x89
	.uaword	0xc31a
	.uaword	.LLST5
	.uleb128 0x2f
	.uaword	.LASF74
	.byte	0x1
	.byte	0x89
	.uaword	0xc320
	.uaword	.LLST6
	.uleb128 0x30
	.uaword	.LASF69
	.byte	0x1
	.byte	0x8b
	.uaword	0xa196
	.uleb128 0x31
	.uaword	.LASF70
	.byte	0x1
	.byte	0x8c
	.uaword	0x84c6
	.uaword	.LLST7
	.uleb128 0x30
	.uaword	.LASF71
	.byte	0x1
	.byte	0x91
	.uaword	0x4220
	.uleb128 0x3c
	.string	"channelServiceRequestNodePtr"
	.byte	0x1
	.byte	0xa1
	.uaword	0x287
	.uaword	.LLST8
	.uleb128 0x31
	.uaword	.LASF75
	.byte	0x1
	.byte	0xa3
	.uaword	0x665
	.uaword	.LLST9
	.uleb128 0x3c
	.string	"src"
	.byte	0x1
	.byte	0xa5
	.uaword	0xa784
	.uaword	.LLST10
	.uleb128 0x3c
	.string	"resultServiceRequestNodePtr"
	.byte	0x1
	.byte	0xb4
	.uaword	0x287
	.uaword	.LLST11
	.uleb128 0x32
	.uaword	0xa945
	.uaword	.LBB232
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x93
	.uaword	0xc223
	.uleb128 0x38
	.uaword	0xa97f
	.uaword	.LLST12
	.uleb128 0x33
	.uaword	0xa973
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x3e
	.uaword	0xa98b
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xa998
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x1
	.byte	0xa0
	.uaword	0xc24d
	.uleb128 0x33
	.uaword	0xa9c2
	.byte	0x1
	.byte	0x6d
	.uleb128 0x39
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x3e
	.uaword	0xa9ce
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xa9e6
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x1
	.byte	0xa4
	.uaword	0xc277
	.uleb128 0x33
	.uaword	0xaa21
	.byte	0x1
	.byte	0x6d
	.uleb128 0x39
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x3e
	.uaword	0xaa2d
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xaa4c
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x1
	.byte	0xb8
	.uaword	0xc2a3
	.uleb128 0x38
	.uaword	0xaa8d
	.uaword	.LLST13
	.uleb128 0x39
	.uaword	.LBB243
	.uaword	.LBE243
	.uleb128 0x3e
	.uaword	0xaa99
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xaabf
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.byte	0xbc
	.uaword	0xc2cf
	.uleb128 0x38
	.uaword	0xab00
	.uaword	.LLST14
	.uleb128 0x39
	.uaword	.LBB245
	.uaword	.LBE245
	.uleb128 0x3e
	.uaword	0xab0c
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL23
	.uaword	0xdc46
	.uaword	0xc2e9
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL28
	.uaword	0xdc46
	.uaword	0xc303
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL35
	.uaword	0xdc46
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa339
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa49a
	.uleb128 0x41
	.byte	0x1
	.string	"IfxVadc_Adc_getChannelConversionTime"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.uaword	0x295
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc3fc
	.uleb128 0x2f
	.uaword	.LASF53
	.byte	0x1
	.byte	0xd0
	.uaword	0xc31a
	.uaword	.LLST15
	.uleb128 0x42
	.string	"conversionMode"
	.byte	0x1
	.byte	0xd0
	.uaword	0x8881
	.uaword	.LLST16
	.uleb128 0x32
	.uaword	0xab32
	.uaword	.LBB246
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xd2
	.uaword	0xc3b2
	.uleb128 0x38
	.uaword	0xab69
	.uaword	.LLST17
	.uleb128 0x38
	.uaword	0xab5d
	.uaword	.LLST18
	.byte	0
	.uleb128 0x34
	.uaword	.LVL43
	.uaword	0xdc76
	.uaword	0xc3c6
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL45
	.uaword	0xdca9
	.uleb128 0x36
	.uaword	.LVL46
	.byte	0x1
	.uaword	0xdcd2
	.uleb128 0x35
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x178
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxVadc_Adc_getGroupConfig"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc855
	.uleb128 0x2f
	.uaword	.LASF49
	.byte	0x1
	.byte	0xd6
	.uaword	0xc075
	.uaword	.LLST19
	.uleb128 0x2f
	.uaword	.LASF74
	.byte	0x1
	.byte	0xd6
	.uaword	0xc855
	.uaword	.LLST20
	.uleb128 0x31
	.uaword	.LASF72
	.byte	0x1
	.byte	0xd8
	.uaword	0x22a
	.uaword	.LLST21
	.uleb128 0x43
	.uaword	.LASF69
	.byte	0x1
	.byte	0xd9
	.uaword	0xa196
	.byte	0x1
	.byte	0x6c
	.uleb128 0x43
	.uaword	.LASF38
	.byte	0x1
	.byte	0xda
	.uaword	0x7df7
	.byte	0x1
	.byte	0x6e
	.uleb128 0x31
	.uaword	.LASF67
	.byte	0x1
	.byte	0xdb
	.uaword	0x295
	.uaword	.LLST22
	.uleb128 0x3f
	.uaword	0xab76
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x1
	.byte	0xe0
	.uaword	0xc49c
	.uleb128 0x33
	.uaword	0xaba2
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x32
	.uaword	0xabaf
	.uaword	.LBB258
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xe4
	.uaword	0xc4c0
	.uleb128 0x38
	.uaword	0xabe4
	.uaword	.LLST23
	.uleb128 0x33
	.uaword	0xabd8
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x32
	.uaword	0xabf1
	.uaword	.LBB262
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xe5
	.uaword	0xc4f8
	.uleb128 0x44
	.uaword	0xac32
	.uleb128 0x38
	.uaword	0xac26
	.uaword	.LLST24
	.uleb128 0x33
	.uaword	0xac1a
	.byte	0x1
	.byte	0x6c
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x3a
	.uaword	0xac3e
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xac4b
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x1
	.byte	0xe8
	.uaword	0xc515
	.uleb128 0x38
	.uaword	0xac7a
	.uaword	.LLST26
	.byte	0
	.uleb128 0x45
	.uaword	0xae14
	.uaword	.LBB268
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x106
	.uaword	0xc533
	.uleb128 0x38
	.uaword	0xae44
	.uaword	.LLST27
	.byte	0
	.uleb128 0x45
	.uaword	0xafaf
	.uaword	.LBB271
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x124
	.uaword	0xc551
	.uleb128 0x38
	.uaword	0xafe8
	.uaword	.LLST28
	.byte	0
	.uleb128 0x45
	.uaword	0xb1b8
	.uaword	.LBB274
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x142
	.uaword	0xc57e
	.uleb128 0x38
	.uaword	0xb1dd
	.uaword	.LLST29
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x3a
	.uaword	0xb1e9
	.uaword	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xb1f6
	.uaword	.LBB278
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x142
	.uaword	0xc5c6
	.uleb128 0x38
	.uaword	0xb228
	.uaword	.LLST31
	.uleb128 0x38
	.uaword	0xb21b
	.uaword	.LLST32
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x3a
	.uaword	0xb233
	.uaword	.LLST33
	.uleb128 0x3a
	.uaword	0xb23c
	.uaword	.LLST34
	.uleb128 0x3a
	.uaword	0xb24d
	.uaword	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xb25e
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x1
	.uahalf	0x144
	.uaword	0xc5f3
	.uleb128 0x38
	.uaword	0xb289
	.uaword	.LLST36
	.uleb128 0x39
	.uaword	.LBB282
	.uaword	.LBE282
	.uleb128 0x3e
	.uaword	0xb295
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xac87
	.uaword	.LBB283
	.uaword	.LBE283
	.byte	0x1
	.byte	0xeb
	.uaword	0xc610
	.uleb128 0x38
	.uaword	0xacb1
	.uaword	.LLST37
	.byte	0
	.uleb128 0x3f
	.uaword	0xacbe
	.uaword	.LBB285
	.uaword	.LBE285
	.byte	0x1
	.byte	0xec
	.uaword	0xc62d
	.uleb128 0x38
	.uaword	0xace9
	.uaword	.LLST38
	.byte	0
	.uleb128 0x3f
	.uaword	0xacf6
	.uaword	.LBB287
	.uaword	.LBE287
	.byte	0x1
	.byte	0xee
	.uaword	0xc64a
	.uleb128 0x38
	.uaword	0xad24
	.uaword	.LLST39
	.byte	0
	.uleb128 0x32
	.uaword	0xad31
	.uaword	.LBB289
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0xef
	.uaword	0xc667
	.uleb128 0x38
	.uaword	0xad5e
	.uaword	.LLST40
	.byte	0
	.uleb128 0x3f
	.uaword	0xad6b
	.uaword	.LBB293
	.uaword	.LBE293
	.byte	0x1
	.byte	0xf3
	.uaword	0xc684
	.uleb128 0x38
	.uaword	0xad97
	.uaword	.LLST41
	.byte	0
	.uleb128 0x3f
	.uaword	0xada4
	.uaword	.LBB295
	.uaword	.LBE295
	.byte	0x1
	.byte	0xfa
	.uaword	0xc6a1
	.uleb128 0x38
	.uaword	0xadd2
	.uaword	.LLST42
	.byte	0
	.uleb128 0x3f
	.uaword	0xaddf
	.uaword	.LBB297
	.uaword	.LBE297
	.byte	0x1
	.byte	0xfb
	.uaword	0xc6be
	.uleb128 0x38
	.uaword	0xae07
	.uaword	.LLST43
	.byte	0
	.uleb128 0x46
	.uaword	0xae51
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x1
	.uahalf	0x109
	.uaword	0xc6dc
	.uleb128 0x38
	.uaword	0xae7c
	.uaword	.LLST44
	.byte	0
	.uleb128 0x46
	.uaword	0xae89
	.uaword	.LBB302
	.uaword	.LBE302
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xc6fa
	.uleb128 0x38
	.uaword	0xaeb5
	.uaword	.LLST45
	.byte	0
	.uleb128 0x46
	.uaword	0xaec2
	.uaword	.LBB304
	.uaword	.LBE304
	.byte	0x1
	.uahalf	0x10c
	.uaword	0xc718
	.uleb128 0x38
	.uaword	0xaef1
	.uaword	.LLST46
	.byte	0
	.uleb128 0x45
	.uaword	0xaefe
	.uaword	.LBB306
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x10d
	.uaword	0xc736
	.uleb128 0x38
	.uaword	0xaf2c
	.uaword	.LLST47
	.byte	0
	.uleb128 0x46
	.uaword	0xaf39
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x1
	.uahalf	0x111
	.uaword	0xc754
	.uleb128 0x38
	.uaword	0xaf66
	.uaword	.LLST48
	.byte	0
	.uleb128 0x46
	.uaword	0xaf73
	.uaword	.LBB312
	.uaword	.LBE312
	.byte	0x1
	.uahalf	0x118
	.uaword	0xc772
	.uleb128 0x38
	.uaword	0xafa2
	.uaword	.LLST49
	.byte	0
	.uleb128 0x46
	.uaword	0xaff5
	.uaword	.LBB315
	.uaword	.LBE315
	.byte	0x1
	.uahalf	0x127
	.uaword	0xc790
	.uleb128 0x38
	.uaword	0xb029
	.uaword	.LLST50
	.byte	0
	.uleb128 0x46
	.uaword	0xb036
	.uaword	.LBB317
	.uaword	.LBE317
	.byte	0x1
	.uahalf	0x128
	.uaword	0xc7ae
	.uleb128 0x38
	.uaword	0xb06b
	.uaword	.LLST51
	.byte	0
	.uleb128 0x46
	.uaword	0xb078
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x1
	.uahalf	0x12a
	.uaword	0xc7cc
	.uleb128 0x38
	.uaword	0xb0ac
	.uaword	.LLST52
	.byte	0
	.uleb128 0x45
	.uaword	0xb0b9
	.uaword	.LBB321
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x12b
	.uaword	0xc7ea
	.uleb128 0x38
	.uaword	0xb0ec
	.uaword	.LLST53
	.byte	0
	.uleb128 0x46
	.uaword	0xb0f9
	.uaword	.LBB325
	.uaword	.LBE325
	.byte	0x1
	.uahalf	0x12f
	.uaword	0xc808
	.uleb128 0x38
	.uaword	0xb12b
	.uaword	.LLST54
	.byte	0
	.uleb128 0x46
	.uaword	0xb138
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x1
	.uahalf	0x136
	.uaword	0xc826
	.uleb128 0x38
	.uaword	0xb16c
	.uaword	.LLST55
	.byte	0
	.uleb128 0x46
	.uaword	0xb179
	.uaword	.LBB329
	.uaword	.LBE329
	.byte	0x1
	.uahalf	0x137
	.uaword	0xc844
	.uleb128 0x38
	.uaword	0xb1ab
	.uaword	.LLST56
	.byte	0
	.uleb128 0x40
	.uaword	.LVL50
	.uaword	0xdc76
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa73b
	.uleb128 0x47
	.byte	0x1
	.string	"IfxVadc_Adc_initChannel"
	.byte	0x1
	.uahalf	0x148
	.byte	0x1
	.uaword	0x9cae
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcd91
	.uleb128 0x48
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x148
	.uaword	0xc31a
	.uaword	.LLST57
	.uleb128 0x48
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x148
	.uaword	0xcd91
	.uaword	.LLST58
	.uleb128 0x49
	.string	"Status"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x9cae
	.byte	0
	.uleb128 0x2c
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x7df7
	.uleb128 0x2c
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x14c
	.uaword	0xa196
	.uleb128 0x4a
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x665
	.uaword	.LLST59
	.uleb128 0x4a
	.uaword	.LASF70
	.byte	0x1
	.uahalf	0x150
	.uaword	0x84c6
	.uaword	.LLST60
	.uleb128 0x45
	.uaword	0xb2a6
	.uaword	.LBB332
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x157
	.uaword	0xc922
	.uleb128 0x38
	.uaword	0xb2e2
	.uaword	.LLST61
	.uleb128 0x38
	.uaword	0xb2d6
	.uaword	.LLST62
	.uleb128 0x33
	.uaword	0xb2ca
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xb2ef
	.uaword	.LBB338
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0x158
	.uaword	0xc950
	.uleb128 0x38
	.uaword	0xb32a
	.uaword	.LLST63
	.uleb128 0x38
	.uaword	0xb31e
	.uaword	.LLST64
	.uleb128 0x33
	.uaword	0xb312
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb337
	.uaword	.LBB342
	.uaword	.LBE342
	.byte	0x1
	.uahalf	0x159
	.uaword	0xc97e
	.uleb128 0x38
	.uaword	0xb372
	.uaword	.LLST65
	.uleb128 0x38
	.uaword	0xb366
	.uaword	.LLST66
	.uleb128 0x33
	.uaword	0xb35a
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb37f
	.uaword	.LBB344
	.uaword	.LBE344
	.byte	0x1
	.uahalf	0x15a
	.uaword	0xc9ac
	.uleb128 0x38
	.uaword	0xb3ba
	.uaword	.LLST67
	.uleb128 0x38
	.uaword	0xb3ae
	.uaword	.LLST68
	.uleb128 0x33
	.uaword	0xb3a2
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb3c7
	.uaword	.LBB346
	.uaword	.LBE346
	.byte	0x1
	.uahalf	0x15b
	.uaword	0xc9da
	.uleb128 0x38
	.uaword	0xb400
	.uaword	.LLST69
	.uleb128 0x38
	.uaword	0xb3f4
	.uaword	.LLST70
	.uleb128 0x33
	.uaword	0xb3e8
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb40d
	.uaword	.LBB348
	.uaword	.LBE348
	.byte	0x1
	.uahalf	0x15c
	.uaword	0xca08
	.uleb128 0x38
	.uaword	0xb44c
	.uaword	.LLST71
	.uleb128 0x38
	.uaword	0xb440
	.uaword	.LLST72
	.uleb128 0x33
	.uaword	0xb434
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb459
	.uaword	.LBB350
	.uaword	.LBE350
	.byte	0x1
	.uahalf	0x15d
	.uaword	0xca36
	.uleb128 0x38
	.uaword	0xb49c
	.uaword	.LLST73
	.uleb128 0x38
	.uaword	0xb490
	.uaword	.LLST74
	.uleb128 0x33
	.uaword	0xb484
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb4a9
	.uaword	.LBB352
	.uaword	.LBE352
	.byte	0x1
	.uahalf	0x15e
	.uaword	0xca64
	.uleb128 0x38
	.uaword	0xb4e5
	.uaword	.LLST75
	.uleb128 0x38
	.uaword	0xb4d9
	.uaword	.LLST76
	.uleb128 0x33
	.uaword	0xb4cd
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb4f2
	.uaword	.LBB354
	.uaword	.LBE354
	.byte	0x1
	.uahalf	0x15f
	.uaword	0xca92
	.uleb128 0x38
	.uaword	0xb536
	.uaword	.LLST77
	.uleb128 0x38
	.uaword	0xb52a
	.uaword	.LLST78
	.uleb128 0x33
	.uaword	0xb51e
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb543
	.uaword	.LBB356
	.uaword	.LBE356
	.byte	0x1
	.uahalf	0x160
	.uaword	0xcac0
	.uleb128 0x38
	.uaword	0xb57d
	.uaword	.LLST79
	.uleb128 0x38
	.uaword	0xb571
	.uaword	.LLST80
	.uleb128 0x33
	.uaword	0xb565
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x46
	.uaword	0xb58a
	.uaword	.LBB358
	.uaword	.LBE358
	.byte	0x1
	.uahalf	0x167
	.uaword	0xcae7
	.uleb128 0x38
	.uaword	0xb5c0
	.uaword	.LLST81
	.uleb128 0x38
	.uaword	0xb5b4
	.uaword	.LLST82
	.byte	0
	.uleb128 0x45
	.uaword	0xb615
	.uaword	.LBB360
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x170
	.uaword	0xcb17
	.uleb128 0x38
	.uaword	0xb65b
	.uaword	.LLST83
	.uleb128 0x38
	.uaword	0xb64f
	.uaword	.LLST84
	.uleb128 0x38
	.uaword	0xb643
	.uaword	.LLST85
	.byte	0
	.uleb128 0x46
	.uaword	0xb70f
	.uaword	.LBB364
	.uaword	.LBE364
	.byte	0x1
	.uahalf	0x182
	.uaword	0xcb47
	.uleb128 0x38
	.uaword	0xb754
	.uaword	.LLST86
	.uleb128 0x38
	.uaword	0xb748
	.uaword	.LLST87
	.uleb128 0x38
	.uaword	0xb73c
	.uaword	.LLST88
	.byte	0
	.uleb128 0x4b
	.uaword	.LBB366
	.uaword	.LBE366
	.uaword	0xcc22
	.uleb128 0x4c
	.string	"src"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0xa784
	.uaword	.LLST89
	.uleb128 0x46
	.uaword	0xb7b3
	.uaword	.LBB367
	.uaword	.LBE367
	.byte	0x1
	.uahalf	0x18d
	.uaword	0xcb8b
	.uleb128 0x38
	.uaword	0xb7e6
	.uaword	.LLST90
	.uleb128 0x38
	.uaword	0xb7da
	.uaword	.LLST91
	.byte	0
	.uleb128 0x46
	.uaword	0xb7f3
	.uaword	.LBB369
	.uaword	.LBE369
	.byte	0x1
	.uahalf	0x18e
	.uaword	0xcba9
	.uleb128 0x38
	.uaword	0xb81c
	.uaword	.LLST92
	.byte	0
	.uleb128 0x45
	.uaword	0xb6a7
	.uaword	.LBB371
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x18f
	.uaword	0xcbf3
	.uleb128 0x38
	.uaword	0xb6db
	.uaword	.LLST93
	.uleb128 0x38
	.uaword	0xb6c7
	.uaword	.LLST94
	.uleb128 0x38
	.uaword	0xb6bc
	.uaword	.LLST95
	.uleb128 0x4d
	.uaword	0xa75b
	.uaword	.LBB373
	.uaword	.LBE373
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x38
	.uaword	0xa778
	.uaword	.LLST96
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xb6ec
	.uaword	.LBB377
	.uaword	.LBE377
	.byte	0x1
	.uahalf	0x190
	.uaword	0xcc11
	.uleb128 0x38
	.uaword	0xb703
	.uaword	.LLST97
	.byte	0
	.uleb128 0x40
	.uaword	.LVL137
	.uaword	0xdc46
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xb761
	.uaword	.LBB379
	.uaword	.LBE379
	.byte	0x1
	.uahalf	0x186
	.uaword	0xcc52
	.uleb128 0x38
	.uaword	0xb7a6
	.uaword	.LLST98
	.uleb128 0x38
	.uaword	0xb79a
	.uaword	.LLST99
	.uleb128 0x38
	.uaword	0xb78e
	.uaword	.LLST100
	.byte	0
	.uleb128 0x46
	.uaword	0xb5cd
	.uaword	.LBB381
	.uaword	.LBE381
	.byte	0x1
	.uahalf	0x16b
	.uaword	0xcc79
	.uleb128 0x38
	.uaword	0xb608
	.uaword	.LLST101
	.uleb128 0x38
	.uaword	0xb5fc
	.uaword	.LLST102
	.byte	0
	.uleb128 0x4b
	.uaword	.LBB383
	.uaword	.LBE383
	.uaword	0xcd2c
	.uleb128 0x4e
	.string	"src"
	.byte	0x1
	.uahalf	0x174
	.uaword	0xa784
	.byte	0x1
	.byte	0x62
	.uleb128 0x46
	.uaword	0xb668
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0x1
	.uahalf	0x176
	.uaword	0xccb9
	.uleb128 0x38
	.uaword	0xb69a
	.uaword	.LLST103
	.uleb128 0x33
	.uaword	0xb68e
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xb6a7
	.uaword	.LBB386
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x177
	.uaword	0xccff
	.uleb128 0x38
	.uaword	0xb6db
	.uaword	.LLST104
	.uleb128 0x38
	.uaword	0xb6c7
	.uaword	.LLST105
	.uleb128 0x33
	.uaword	0xb6bc
	.byte	0x1
	.byte	0x62
	.uleb128 0x4d
	.uaword	0xa75b
	.uaword	.LBB388
	.uaword	.LBE388
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x33
	.uaword	0xa778
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xb6ec
	.uaword	.LBB392
	.uaword	.LBE392
	.byte	0x1
	.uahalf	0x178
	.uaword	0xcd1b
	.uleb128 0x33
	.uaword	0xb703
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x40
	.uaword	.LVL155
	.uaword	0xdc46
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL115
	.uaword	0xdb71
	.uaword	0xcd46
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL126
	.uaword	0xdb71
	.uaword	0xcd60
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL130
	.uaword	0xdb9c
	.uaword	0xcd7a
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL145
	.uaword	0xdb9c
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xcd97
	.uleb128 0x20
	.uaword	0xa49a
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxVadc_Adc_initChannelConfig"
	.byte	0x1
	.uahalf	0x1a1
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xce2e
	.uleb128 0x50
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0xc320
	.byte	0x1
	.byte	0x64
	.uleb128 0x50
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0xa32e
	.byte	0x1
	.byte	0x65
	.uleb128 0x51
	.string	"IfxVadc_Adc_defaultChannelConfig"
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0xcd97
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxVadc_Adc_initGroup"
	.byte	0x1
	.uahalf	0x1bd
	.byte	0x1
	.uaword	0x9cae
	.uaword	.LFB359
	.uaword	.LFE359
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd533
	.uleb128 0x48
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0xc075
	.uaword	.LLST106
	.uleb128 0x48
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0xd533
	.uaword	.LLST107
	.uleb128 0x49
	.string	"status"
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x9cae
	.byte	0
	.uleb128 0x52
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x7df7
	.byte	0x1
	.byte	0x6c
	.uleb128 0x4a
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0xa196
	.uaword	.LLST108
	.uleb128 0x4a
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x665
	.uaword	.LLST109
	.uleb128 0x4a
	.uaword	.LASF67
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x295
	.uaword	.LLST110
	.uleb128 0x4a
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x22a
	.uaword	.LLST111
	.uleb128 0x2b
	.string	"convertMode"
	.byte	0x1
	.uahalf	0x288
	.uaword	0x7f47
	.uleb128 0x4b
	.uaword	.LBB394
	.uaword	.LBE394
	.uaword	0xcf53
	.uleb128 0x2c
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0x22a
	.uleb128 0x46
	.uaword	0xb829
	.uaword	.LBB395
	.uaword	.LBE395
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0xcf2f
	.uleb128 0x38
	.uaword	0xb864
	.uaword	.LLST112
	.uleb128 0x38
	.uaword	0xb857
	.uaword	.LLST113
	.byte	0
	.uleb128 0x4d
	.uaword	0xb873
	.uaword	.LBB397
	.uaword	.LBE397
	.byte	0x1
	.uahalf	0x1f6
	.uleb128 0x38
	.uaword	0xb8a0
	.uaword	.LLST114
	.uleb128 0x38
	.uaword	0xb894
	.uaword	.LLST115
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xb8ad
	.uaword	.LBB399
	.uaword	.LBE399
	.byte	0x1
	.uahalf	0x200
	.uaword	0xcf7a
	.uleb128 0x38
	.uaword	0xb8e3
	.uaword	.LLST116
	.uleb128 0x38
	.uaword	0xb8d7
	.uaword	.LLST117
	.byte	0
	.uleb128 0x46
	.uaword	0xb900
	.uaword	.LBB401
	.uaword	.LBE401
	.byte	0x1
	.uahalf	0x202
	.uaword	0xcfa1
	.uleb128 0x38
	.uaword	0xb938
	.uaword	.LLST118
	.uleb128 0x38
	.uaword	0xb92c
	.uaword	.LLST119
	.byte	0
	.uleb128 0x45
	.uaword	0xb8ad
	.uaword	.LBB403
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x289
	.uaword	0xcfc4
	.uleb128 0x44
	.uaword	0xb8e3
	.uleb128 0x38
	.uaword	0xb8d7
	.uaword	.LLST120
	.byte	0
	.uleb128 0x45
	.uaword	0xbdfb
	.uaword	.LBB411
	.uaword	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.uahalf	0x293
	.uaword	0xd061
	.uleb128 0x38
	.uaword	0xbe44
	.uaword	.LLST121
	.uleb128 0x38
	.uaword	0xbe38
	.uaword	.LLST122
	.uleb128 0x38
	.uaword	0xbe2c
	.uaword	.LLST123
	.uleb128 0x38
	.uaword	0xbe20
	.uaword	.LLST124
	.uleb128 0x53
	.uaword	0xa819
	.uaword	.LBB413
	.uaword	.Ldebug_ranges0+0x208
	.byte	0x2
	.uahalf	0x8f5
	.uleb128 0x38
	.uaword	0xa84f
	.uaword	.LLST121
	.uleb128 0x38
	.uaword	0xa843
	.uaword	.LLST122
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x208
	.uleb128 0x3a
	.uaword	0xa85b
	.uaword	.LLST127
	.uleb128 0x53
	.uaword	0xa78f
	.uaword	.LBB415
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x2
	.uahalf	0x6a8
	.uleb128 0x38
	.uaword	0xa7ac
	.uaword	.LLST128
	.uleb128 0x38
	.uaword	0xa7a3
	.uaword	.LLST129
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x220
	.uleb128 0x3a
	.uaword	0xa7b5
	.uaword	.LLST130
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xbdb1
	.uaword	.LBB422
	.uaword	.Ldebug_ranges0+0x238
	.byte	0x1
	.uahalf	0x291
	.uaword	0xd091
	.uleb128 0x38
	.uaword	0xbdee
	.uaword	.LLST131
	.uleb128 0x38
	.uaword	0xbde2
	.uaword	.LLST132
	.uleb128 0x38
	.uaword	0xbdd6
	.uaword	.LLST133
	.byte	0
	.uleb128 0x54
	.uaword	.Ldebug_ranges0+0x250
	.uaword	0xd1b8
	.uleb128 0x4c
	.string	"backgroundScanSlot"
	.byte	0x1
	.uahalf	0x25f
	.uaword	0xd53e
	.uaword	.LLST134
	.uleb128 0x45
	.uaword	0xbcf2
	.uaword	.LBB428
	.uaword	.Ldebug_ranges0+0x268
	.byte	0x1
	.uahalf	0x279
	.uaword	0xd0f8
	.uleb128 0x38
	.uaword	0xbd3e
	.uaword	.LLST135
	.uleb128 0x38
	.uaword	0xbd32
	.uaword	.LLST136
	.uleb128 0x38
	.uaword	0xbd26
	.uaword	.LLST137
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x268
	.uleb128 0x3a
	.uaword	0xbd4a
	.uaword	.LLST138
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xbd5b
	.uaword	.LBB434
	.uaword	.LBE434
	.byte	0x1
	.uahalf	0x280
	.uaword	0xd11f
	.uleb128 0x38
	.uaword	0xbd8f
	.uaword	.LLST139
	.uleb128 0x38
	.uaword	0xbd83
	.uaword	.LLST140
	.byte	0
	.uleb128 0x46
	.uaword	0xbc41
	.uaword	.LBB436
	.uaword	.LBE436
	.byte	0x1
	.uahalf	0x264
	.uaword	0xd13d
	.uleb128 0x38
	.uaword	0xbc7b
	.uaword	.LLST141
	.byte	0
	.uleb128 0x45
	.uaword	0xbc88
	.uaword	.LBB438
	.uaword	.Ldebug_ranges0+0x288
	.byte	0x1
	.uahalf	0x266
	.uaword	0xd17c
	.uleb128 0x38
	.uaword	0xbcd5
	.uaword	.LLST142
	.uleb128 0x38
	.uaword	0xbcc9
	.uaword	.LLST143
	.uleb128 0x38
	.uaword	0xbcbd
	.uaword	.LLST144
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x288
	.uleb128 0x3a
	.uaword	0xbce1
	.uaword	.LLST145
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	0xbcf2
	.uaword	.LBB444
	.uaword	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.uahalf	0x26a
	.uleb128 0x38
	.uaword	0xbd3e
	.uaword	.LLST146
	.uleb128 0x38
	.uaword	0xbd32
	.uaword	.LLST147
	.uleb128 0x38
	.uaword	0xbd26
	.uaword	.LLST148
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x2a8
	.uleb128 0x3a
	.uaword	0xbd4a
	.uaword	.LLST149
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x54
	.uaword	.Ldebug_ranges0+0x2c0
	.uaword	0xd2ea
	.uleb128 0x4c
	.string	"scanSlot"
	.byte	0x1
	.uahalf	0x234
	.uaword	0xd549
	.uaword	.LLST150
	.uleb128 0x45
	.uaword	0xbac7
	.uaword	.LBB449
	.uaword	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.uahalf	0x23a
	.uaword	0xd1f2
	.uleb128 0x33
	.uaword	0xbaf7
	.byte	0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x46
	.uaword	0xbbc1
	.uaword	.LBB452
	.uaword	.LBE452
	.byte	0x1
	.uahalf	0x249
	.uaword	0xd210
	.uleb128 0x38
	.uaword	0xbbf2
	.uaword	.LLST151
	.byte	0
	.uleb128 0x45
	.uaword	0xbb63
	.uaword	.LBB454
	.uaword	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.uahalf	0x24f
	.uaword	0xd24f
	.uleb128 0x38
	.uaword	0xbba5
	.uaword	.LLST152
	.uleb128 0x38
	.uaword	0xbb99
	.uaword	.LLST153
	.uleb128 0x38
	.uaword	0xbb8d
	.uaword	.LLST154
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x2f0
	.uleb128 0x3a
	.uaword	0xbbb1
	.uaword	.LLST155
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xbbff
	.uaword	.LBB460
	.uaword	.LBE460
	.byte	0x1
	.uahalf	0x256
	.uaword	0xd276
	.uleb128 0x38
	.uaword	0xbc29
	.uaword	.LLST156
	.uleb128 0x38
	.uaword	0xbc1d
	.uaword	.LLST157
	.byte	0
	.uleb128 0x45
	.uaword	0xbb04
	.uaword	.LBB463
	.uaword	.Ldebug_ranges0+0x310
	.byte	0x1
	.uahalf	0x23c
	.uaword	0xd2b3
	.uleb128 0x38
	.uaword	0xbb47
	.uaword	.LLST158
	.uleb128 0x38
	.uaword	0xbb3b
	.uaword	.LLST159
	.uleb128 0x33
	.uaword	0xbb2f
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x310
	.uleb128 0x3a
	.uaword	0xbb53
	.uaword	.LLST160
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	0xbb63
	.uaword	.LBB469
	.uaword	.Ldebug_ranges0+0x330
	.byte	0x1
	.uahalf	0x240
	.uleb128 0x55
	.uaword	0xbba5
	.byte	0x1
	.uleb128 0x38
	.uaword	0xbb99
	.uaword	.LLST161
	.uleb128 0x33
	.uaword	0xbb8d
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x330
	.uleb128 0x3a
	.uaword	0xbbb1
	.uaword	.LLST162
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x54
	.uaword	.Ldebug_ranges0+0x348
	.uaword	0xd426
	.uleb128 0x4c
	.string	"queueSlot"
	.byte	0x1
	.uahalf	0x207
	.uaword	0xd554
	.uaword	.LLST163
	.uleb128 0x46
	.uaword	0xba4b
	.uaword	.LBB474
	.uaword	.LBE474
	.byte	0x1
	.uahalf	0x21d
	.uaword	0xd327
	.uleb128 0x38
	.uaword	0xba7d
	.uaword	.LLST164
	.byte	0
	.uleb128 0x45
	.uaword	0xb9ec
	.uaword	.LBB476
	.uaword	.Ldebug_ranges0+0x360
	.byte	0x1
	.uahalf	0x223
	.uaword	0xd366
	.uleb128 0x38
	.uaword	0xba2f
	.uaword	.LLST165
	.uleb128 0x38
	.uaword	0xba23
	.uaword	.LLST166
	.uleb128 0x38
	.uaword	0xba17
	.uaword	.LLST167
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x360
	.uleb128 0x3a
	.uaword	0xba3b
	.uaword	.LLST168
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0xba8a
	.uaword	.LBB482
	.uaword	.LBE482
	.byte	0x1
	.uahalf	0x22a
	.uaword	0xd38d
	.uleb128 0x38
	.uaword	0xbab3
	.uaword	.LLST169
	.uleb128 0x38
	.uaword	0xbaa7
	.uaword	.LLST170
	.byte	0
	.uleb128 0x46
	.uaword	0xb945
	.uaword	.LBB484
	.uaword	.LBE484
	.byte	0x1
	.uahalf	0x20d
	.uaword	0xd3ab
	.uleb128 0x38
	.uaword	0xb976
	.uaword	.LLST171
	.byte	0
	.uleb128 0x45
	.uaword	0xb983
	.uaword	.LBB486
	.uaword	.Ldebug_ranges0+0x380
	.byte	0x1
	.uahalf	0x20e
	.uaword	0xd3ea
	.uleb128 0x38
	.uaword	0xb9d0
	.uaword	.LLST172
	.uleb128 0x38
	.uaword	0xb9c4
	.uaword	.LLST173
	.uleb128 0x38
	.uaword	0xb9b8
	.uaword	.LLST174
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x380
	.uleb128 0x3a
	.uaword	0xb9dc
	.uaword	.LLST175
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	0xb9ec
	.uaword	.LBB492
	.uaword	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.uahalf	0x213
	.uleb128 0x38
	.uaword	0xba2f
	.uaword	.LLST176
	.uleb128 0x38
	.uaword	0xba23
	.uaword	.LLST177
	.uleb128 0x38
	.uaword	0xba17
	.uaword	.LLST178
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x3a0
	.uleb128 0x3a
	.uaword	0xba3b
	.uaword	.LLST179
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL168
	.uaword	0xdc76
	.uaword	0xd43a
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL170
	.uaword	0xdb71
	.uaword	0xd454
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL171
	.uaword	0xdd21
	.uaword	0xd47c
	.uleb128 0x35
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL172
	.uaword	0xdd21
	.uaword	0xd49e
	.uleb128 0x35
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x35
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.uaword	.LVL174
	.uaword	0xdd21
	.uaword	0xd4c0
	.uleb128 0x35
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.uaword	.LVL184
	.uaword	0xdd61
	.uaword	0xd4d4
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL193
	.uaword	0xdb9c
	.uaword	0xd4ee
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL197
	.uaword	0xdd21
	.uaword	0xd506
	.uleb128 0x35
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x34
	.uaword	.LVL199
	.uaword	0xdd21
	.uaword	0xd51e
	.uleb128 0x35
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x40
	.uaword	.LVL201
	.uaword	0xdd21
	.uleb128 0x35
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd539
	.uleb128 0x20
	.uaword	0xa73b
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd544
	.uleb128 0x20
	.uaword	0xa0f8
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd54f
	.uleb128 0x20
	.uaword	0xa26e
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd55a
	.uleb128 0x20
	.uaword	0xa204
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxVadc_Adc_initGroupConfig"
	.byte	0x1
	.uahalf	0x29c
	.byte	0x1
	.uaword	.LFB360
	.uaword	.LFE360
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd60d
	.uleb128 0x50
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x29c
	.uaword	0xc855
	.byte	0x1
	.byte	0x64
	.uleb128 0x50
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x29c
	.uaword	0xd60d
	.byte	0x1
	.byte	0x65
	.uleb128 0x51
	.string	"IfxVadc_Adc_defaultGroupConfig"
	.byte	0x1
	.uahalf	0x29e
	.uaword	0xd539
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xbd
	.byte	0x37
	.byte	0x86
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xbd
	.byte	0x37
	.byte	0x86
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9f86
	.uleb128 0x47
	.byte	0x1
	.string	"IfxVadc_Adc_initModule"
	.byte	0x1
	.uahalf	0x2cf
	.byte	0x1
	.uaword	0x9cae
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd88d
	.uleb128 0x48
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0xd60d
	.uaword	.LLST180
	.uleb128 0x48
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0xd88d
	.uaword	.LLST181
	.uleb128 0x49
	.string	"status"
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x9cae
	.byte	0
	.uleb128 0x4e
	.string	"vadcSFR"
	.byte	0x1
	.uahalf	0x2d2
	.uaword	0x7df7
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4a
	.uaword	.LASF67
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0x295
	.uaword	.LLST182
	.uleb128 0x4a
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0x22a
	.uaword	.LLST183
	.uleb128 0x4c
	.string	"groupNum"
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0x22a
	.uaword	.LLST184
	.uleb128 0x45
	.uaword	0xbe51
	.uaword	.LBB499
	.uaword	.Ldebug_ranges0+0x3b8
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0xd70b
	.uleb128 0x33
	.uaword	0xbe70
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x3b8
	.uleb128 0x3a
	.uaword	0xbe7c
	.uaword	.LLST185
	.uleb128 0x3b
	.uaword	.LVL267
	.uaword	0xdbc8
	.uleb128 0x34
	.uaword	.LVL269
	.uaword	0xdbf4
	.uaword	0xd700
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL271
	.uaword	0xdc1e
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xbed7
	.uaword	.LBB503
	.uaword	.Ldebug_ranges0+0x3d0
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0xd7a3
	.uleb128 0x38
	.uaword	0xbf21
	.uaword	.LLST186
	.uleb128 0x38
	.uaword	0xbf15
	.uaword	.LLST187
	.uleb128 0x38
	.uaword	0xbf09
	.uaword	.LLST188
	.uleb128 0x33
	.uaword	0xbefd
	.byte	0x1
	.byte	0x6f
	.uleb128 0x53
	.uaword	0xa819
	.uaword	.LBB505
	.uaword	.Ldebug_ranges0+0x3e8
	.byte	0x2
	.uahalf	0x8e3
	.uleb128 0x38
	.uaword	0xa84f
	.uaword	.LLST186
	.uleb128 0x38
	.uaword	0xa843
	.uaword	.LLST187
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x3e8
	.uleb128 0x3a
	.uaword	0xa85b
	.uaword	.LLST191
	.uleb128 0x53
	.uaword	0xa78f
	.uaword	.LBB507
	.uaword	.Ldebug_ranges0+0x400
	.byte	0x2
	.uahalf	0x6a8
	.uleb128 0x55
	.uaword	0xa7ac
	.byte	0xff
	.uleb128 0x38
	.uaword	0xa7a3
	.uaword	.LLST192
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x400
	.uleb128 0x3a
	.uaword	0xa7b5
	.uaword	.LLST193
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xbe8c
	.uaword	.LBB514
	.uaword	.Ldebug_ranges0+0x418
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0xd7d1
	.uleb128 0x38
	.uaword	0xbeca
	.uaword	.LLST194
	.uleb128 0x38
	.uaword	0xbebe
	.uaword	.LLST195
	.uleb128 0x33
	.uaword	0xbeb2
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x45
	.uaword	0xb8ad
	.uaword	.LBB521
	.uaword	.Ldebug_ranges0+0x438
	.byte	0x1
	.uahalf	0x2fa
	.uaword	0xd7f8
	.uleb128 0x38
	.uaword	0xb8e3
	.uaword	.LLST196
	.uleb128 0x38
	.uaword	0xb8d7
	.uaword	.LLST197
	.byte	0
	.uleb128 0x34
	.uaword	.LVL272
	.uaword	0xdd9b
	.uaword	0xd80c
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL273
	.uaword	0xddd2
	.uaword	0xd820
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL274
	.uaword	0xde04
	.uaword	0xd834
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL275
	.uaword	0xdc76
	.uaword	0xd848
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL286
	.uaword	0xdb71
	.uaword	0xd862
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL288
	.uaword	0xdb9c
	.uaword	0xd87c
	.uleb128 0x35
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL289
	.uaword	0xde36
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd893
	.uleb128 0x20
	.uaword	0xa570
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxVadc_Adc_initModuleConfig"
	.byte	0x1
	.uahalf	0x306
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd909
	.uleb128 0x48
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x306
	.uaword	0xd909
	.uaword	.LLST198
	.uleb128 0x48
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x306
	.uaword	0x7df7
	.uaword	.LLST199
	.uleb128 0x34
	.uaword	.LVL295
	.uaword	0xde62
	.uaword	0xd8ff
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL296
	.uaword	0xde96
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa570
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxVadc_Adc_initExternalMultiplexerModeConfig"
	.byte	0x1
	.uahalf	0x316
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd998
	.uleb128 0x56
	.string	"emuxConfig"
	.byte	0x1
	.uahalf	0x316
	.uaword	0xd998
	.uaword	.LLST200
	.uleb128 0x50
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x316
	.uaword	0x7df7
	.byte	0x1
	.byte	0x65
	.uleb128 0x4e
	.string	"defaultConfig"
	.byte	0x1
	.uahalf	0x321
	.uaword	0xa2d5
	.byte	0x9
	.byte	0x93
	.uleb128 0xc
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa654
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxVadc_Adc_initExternalMultiplexerMode"
	.byte	0x1
	.uahalf	0x32b
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdaf4
	.uleb128 0x48
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x32b
	.uaword	0x7df7
	.uaword	.LLST201
	.uleb128 0x56
	.string	"emuxControl"
	.byte	0x1
	.uahalf	0x32b
	.uaword	0xdaf4
	.uaword	.LLST202
	.uleb128 0x4c
	.string	"count"
	.byte	0x1
	.uahalf	0x32d
	.uaword	0x22a
	.uaword	.LLST203
	.uleb128 0x52
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x32e
	.uaword	0xa196
	.byte	0x1
	.byte	0x6e
	.uleb128 0x45
	.uaword	0xbf2e
	.uaword	.LBB527
	.uaword	.Ldebug_ranges0+0x458
	.byte	0x1
	.uahalf	0x32f
	.uaword	0xda53
	.uleb128 0x38
	.uaword	0xbf71
	.uaword	.LLST204
	.uleb128 0x38
	.uaword	0xbf65
	.uaword	.LLST205
	.uleb128 0x38
	.uaword	0xbf59
	.uaword	.LLST206
	.byte	0
	.uleb128 0x45
	.uaword	0xbf7e
	.uaword	.LBB532
	.uaword	.Ldebug_ranges0+0x478
	.byte	0x1
	.uahalf	0x335
	.uaword	0xdad5
	.uleb128 0x38
	.uaword	0xbfb5
	.uaword	.LLST207
	.uleb128 0x38
	.uaword	0xbfa9
	.uaword	.LLST208
	.uleb128 0x38
	.uaword	0xbf9c
	.uaword	.LLST209
	.uleb128 0x45
	.uaword	0xa7c1
	.uaword	.LBB534
	.uaword	.Ldebug_ranges0+0x490
	.byte	0x2
	.uahalf	0x826
	.uaword	0xdac4
	.uleb128 0x38
	.uaword	0xa80a
	.uaword	.LLST210
	.uleb128 0x38
	.uaword	0xa7fd
	.uaword	.LLST208
	.uleb128 0x38
	.uaword	0xa7f1
	.uaword	.LLST212
	.uleb128 0x38
	.uaword	0xa7e4
	.uaword	.LLST213
	.uleb128 0x3b
	.uaword	.LVL306
	.uaword	0xdebb
	.byte	0
	.uleb128 0x40
	.uaword	.LVL307
	.uaword	0xdee9
	.uleb128 0x35
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL310
	.byte	0x1
	.uaword	0xdf1c
	.uleb128 0x35
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x35
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xdafa
	.uleb128 0x20
	.uaword	0xa654
	.uleb128 0x10
	.uaword	0x9f4e
	.uaword	0xdb15
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xa
	.uleb128 0x11
	.uaword	0x49f
	.byte	0xa
	.byte	0
	.uleb128 0x57
	.string	"IfxVadc_Adc_masterIndex"
	.byte	0x1
	.byte	0x3c
	.uaword	0xdb3a
	.byte	0x5
	.byte	0x3
	.uaword	IfxVadc_Adc_masterIndex
	.uleb128 0x20
	.uaword	0xdaff
	.uleb128 0x10
	.uaword	0x32e
	.uaword	0xdb4f
	.uleb128 0x11
	.uaword	0x49f
	.byte	0x2
	.byte	0
	.uleb128 0x58
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xe
	.byte	0x96
	.uaword	0xdb6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0xdb3f
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_enableAccess"
	.byte	0x2
	.uahalf	0x51d
	.byte	0x1
	.byte	0x1
	.uaword	0xdb9c
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x990a
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_disableAccess"
	.byte	0x2
	.uahalf	0x50e
	.byte	0x1
	.byte	0x1
	.uaword	0xdbc8
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x990a
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x10
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x10
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0xdc1e
	.uleb128 0x5a
	.uaword	0x255
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x10
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0xdc46
	.uleb128 0x5a
	.uaword	0x255
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_getSrcAddress"
	.byte	0x2
	.uahalf	0x530
	.byte	0x1
	.uaword	0xa784
	.byte	0x1
	.uaword	0xdc76
	.uleb128 0x5a
	.uaword	0x665
	.uleb128 0x5a
	.uaword	0x9bbc
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_getAdcAnalogFrequency"
	.byte	0x2
	.uahalf	0x450
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uaword	0xdca9
	.uleb128 0x5a
	.uaword	0x7df7
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.string	"IfxVadc_getAdcModuleFrequency"
	.byte	0x2
	.uahalf	0x529
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_getChannelConversionTime"
	.byte	0x2
	.uahalf	0x62d
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uaword	0xdd21
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x665
	.uleb128 0x5a
	.uaword	0x8eb2
	.uleb128 0x5a
	.uaword	0x295
	.uleb128 0x5a
	.uaword	0x295
	.uleb128 0x5a
	.uaword	0x8881
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_setArbiterPriority"
	.byte	0x2
	.uahalf	0x4bd
	.byte	0x1
	.byte	0x1
	.uaword	0xdd61
	.uleb128 0x5a
	.uaword	0xa196
	.uleb128 0x5a
	.uaword	0x2ae
	.uleb128 0x5a
	.uaword	0x99bf
	.uleb128 0x5a
	.uaword	0x9a4b
	.uleb128 0x5a
	.uaword	0x9ad8
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_disablePostCalibration"
	.byte	0x2
	.uahalf	0x516
	.byte	0x1
	.byte	0x1
	.uaword	0xdd9b
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x665
	.uleb128 0x5a
	.uaword	0x2ae
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_selectPowerSupplyVoltage"
	.byte	0x2
	.uahalf	0x560
	.byte	0x1
	.byte	0x1
	.uaword	0xddd2
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x8fca
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_initializeFAdcI"
	.byte	0x2
	.uahalf	0x54c
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0xde04
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x287
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_initializeFAdcD"
	.byte	0x2
	.uahalf	0x545
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0xde36
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0x287
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_startupCalibration"
	.byte	0x2
	.uahalf	0x566
	.byte	0x1
	.byte	0x1
	.uaword	0xde62
	.uleb128 0x5a
	.uaword	0x7df7
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_getAdcDigitalFrequency"
	.byte	0x2
	.uahalf	0x456
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uaword	0xde96
	.uleb128 0x5a
	.uaword	0x7df7
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x11
	.uahalf	0x3a0
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x5
	.uahalf	0x163
	.byte	0x1
	.byte	0x1
	.uaword	0xdee9
	.uleb128 0x5a
	.uaword	0x77f7
	.uleb128 0x5a
	.uaword	0x22a
	.uleb128 0x5a
	.uaword	0x7a9d
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x5
	.uahalf	0x172
	.byte	0x1
	.byte	0x1
	.uaword	0xdf1c
	.uleb128 0x5a
	.uaword	0x77f7
	.uleb128 0x5a
	.uaword	0x22a
	.uleb128 0x5a
	.uaword	0x7da9
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxVadc_configExternalMultiplexerMode"
	.byte	0x2
	.uahalf	0x68f
	.byte	0x1
	.byte	0x1
	.uleb128 0x5a
	.uaword	0x7df7
	.uleb128 0x5a
	.uaword	0xa196
	.uleb128 0x5a
	.uaword	0x8bac
	.uleb128 0x5a
	.uaword	0x22a
	.uleb128 0x5a
	.uaword	0x8ad1
	.uleb128 0x5a
	.uaword	0x88ea
	.uleb128 0x5a
	.uaword	0x89c3
	.uleb128 0x5a
	.uaword	0x882f
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LFE352
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LFE353
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LFE353
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-1
	.uaword	.LFE353
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23-1
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	.LVL23-1
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL28
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL35
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL31
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42
	.uaword	.LFE355
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL39
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43-1
	.uaword	.LFE355
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -96
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x5
	.byte	0x84
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL47
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE356
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL50
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL53
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL86
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL110
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL86
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL110
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x73
	.sleb128 15
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL61
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL80
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL64
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL89
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL65
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL97
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL66
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL67
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL68
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL81
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL110
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL82
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL110
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL83
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL110
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL84
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL110
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL87
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL91
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL92
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL93
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL94
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL99
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL100
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL101
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL102
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL114
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL111
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL115-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL113
	.uaword	.LVL115-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	.LVL115-1
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL147
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL113
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x8f
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL115
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x8f
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL116
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL117
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x8f
	.sleb128 17
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL118
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL119
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x8f
	.sleb128 13
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL120
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x8f
	.sleb128 19
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL121
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL122
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL123
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x8f
	.sleb128 18
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL152
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x8f
	.sleb128 11
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL131
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL152
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x8f
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL137
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x8f
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL137
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL138
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL139
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL142
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x8f
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL147
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL147
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x8f
	.sleb128 9
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL164
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL167
	.uaword	.LFE359
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL164
	.uaword	.LVL168-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL168-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL166
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL173
	.uaword	.LVL174-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL174-1
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL196
	.uaword	.LVL197-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL197-1
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL198
	.uaword	.LVL199-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL199-1
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL200
	.uaword	.LVL201-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL201-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL166
	.uaword	.LVL168-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 4
	.uaword	.LVL168-1
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL183
	.uaword	.LVL184-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL196
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL169
	.uaword	.LVL170-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL170-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL175
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x12
	.byte	0x7f
	.sleb128 0
	.byte	0x3b
	.byte	0x1e
	.byte	0x8f
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x3
	.uaword	IfxVadc_Adc_masterIndex
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL176
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL179
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LFE359
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL179
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL202
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x8f
	.sleb128 50
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL180
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL202
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL182
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL186
	.uaword	.LVL192
	.uahalf	0x7
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL186
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL186
	.uaword	.LVL193-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL186
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x178
	.byte	0x82
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x178
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x181
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL189
	.uaword	.LVL196
	.uahalf	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL185
	.uaword	.LVL193-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL185
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL202
	.uaword	.LVL212
	.uahalf	0x3
	.byte	0x8f
	.sleb128 40
	.byte	0x9f
	.uaword	.LVL236
	.uaword	.LVL245
	.uahalf	0x3
	.byte	0x8f
	.sleb128 40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x8f
	.sleb128 44
	.uaword	.LVL205
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x8f
	.sleb128 42
	.uaword	.LVL205
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL204
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL203
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0xa
	.byte	0x8f
	.sleb128 40
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL208
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL236
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x8f
	.sleb128 43
	.uaword	.LVL239
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x8f
	.sleb128 45
	.uaword	.LVL239
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL238
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL237
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL241
	.uaword	.LVL245
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL241
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x8f
	.sleb128 42
	.uaword	.LVL243
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL241
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL212
	.uaword	.LVL224
	.uahalf	0x3
	.byte	0x8f
	.sleb128 24
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LFE359
	.uahalf	0x3
	.byte	0x8f
	.sleb128 24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL215
	.uaword	.LVL217
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL217
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL215
	.uaword	.LVL217
	.uahalf	0x2
	.byte	0x8f
	.sleb128 26
	.uaword	.LVL217
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL215
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL216
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0xa
	.byte	0x8f
	.sleb128 24
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL220
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x2
	.byte	0x8f
	.sleb128 27
	.uaword	.LVL257
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x2
	.byte	0x8f
	.sleb128 29
	.uaword	.LVL257
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL255
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x8f
	.sleb128 26
	.uaword	.LVL261
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL260
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL224
	.uaword	.LVL236
	.uahalf	0x3
	.byte	0x8f
	.sleb128 32
	.byte	0x9f
	.uaword	.LVL245
	.uaword	.LVL254
	.uahalf	0x3
	.byte	0x8f
	.sleb128 32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL227
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL229
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL227
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x8f
	.sleb128 34
	.uaword	.LVL229
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL227
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL228
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL233
	.uaword	.LVL234
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0xa
	.byte	0x8f
	.sleb128 32
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL232
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL245
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x8f
	.sleb128 35
	.uaword	.LVL248
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x8f
	.sleb128 37
	.uaword	.LVL248
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL247
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL246
	.uaword	.LVL249
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL250
	.uaword	.LVL254
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL250
	.uaword	.LVL252
	.uahalf	0x2
	.byte	0x8f
	.sleb128 34
	.uaword	.LVL252
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL250
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL251
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL264
	.uaword	.LVL267-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL267-1
	.uaword	.LFE361
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL264
	.uaword	.LVL267-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL267-1
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL275
	.uaword	.LVL284
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL291
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL283
	.uaword	.LVL285
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL268
	.uaword	.LVL269-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL269-1
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL270
	.uaword	.LVL271-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL277
	.uaword	.LVL283
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL277
	.uaword	.LVL284
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL291
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL277
	.uaword	.LVL285
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL279
	.uaword	.LVL280
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x178
	.byte	0x82
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x178
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x181
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL281
	.uaword	.LVL282
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x7
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL276
	.uaword	.LVL285
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL286
	.uaword	.LVL291
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3a
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x480
	.byte	0x9f
	.uaword	.LVL287
	.uaword	.LVL290
	.uahalf	0xb
	.byte	0x7f
	.sleb128 -1
	.byte	0x3a
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x480
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL293
	.uaword	.LVL294
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL294
	.uaword	.LFE362
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL293
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL295-1
	.uaword	.LFE362
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL297
	.uaword	.LVL299
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL299
	.uaword	.LVL300
	.uahalf	0x3
	.byte	0x84
	.sleb128 -12
	.byte	0x9f
	.uaword	.LVL300
	.uaword	.LFE363
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL301
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL304
	.uaword	.LVL310
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL310
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL301
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL304
	.uaword	.LVL310
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL310
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL301
	.uaword	.LVL304
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL304
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL307
	.uaword	.LVL308
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL310
	.uaword	.LFE364
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x2
	.byte	0x85
	.sleb128 10
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x2
	.byte	0x85
	.sleb128 10
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL302
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL304
	.uaword	.LVL310
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL310
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 25
	.uaword	.LVL306-1
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL305
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB224
	.uaword	.LBE224
	.uaword	.LBB228
	.uaword	.LBE228
	.uaword	.LBB229
	.uaword	.LBE229
	.uaword	0
	.uaword	0
	.uaword	.LBB232
	.uaword	.LBE232
	.uaword	.LBB236
	.uaword	.LBE236
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	0
	.uaword	0
	.uaword	.LBB246
	.uaword	.LBE246
	.uaword	.LBB252
	.uaword	.LBE252
	.uaword	.LBB253
	.uaword	.LBE253
	.uaword	.LBB254
	.uaword	.LBE254
	.uaword	.LBB255
	.uaword	.LBE255
	.uaword	0
	.uaword	0
	.uaword	.LBB258
	.uaword	.LBE258
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	0
	.uaword	0
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB265
	.uaword	.LBE265
	.uaword	0
	.uaword	0
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB299
	.uaword	.LBE299
	.uaword	0
	.uaword	0
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	.LBB314
	.uaword	.LBE314
	.uaword	0
	.uaword	0
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	.LBB277
	.uaword	.LBE277
	.uaword	0
	.uaword	0
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	.LBB331
	.uaword	.LBE331
	.uaword	0
	.uaword	0
	.uaword	.LBB289
	.uaword	.LBE289
	.uaword	.LBB292
	.uaword	.LBE292
	.uaword	0
	.uaword	0
	.uaword	.LBB306
	.uaword	.LBE306
	.uaword	.LBB309
	.uaword	.LBE309
	.uaword	0
	.uaword	0
	.uaword	.LBB321
	.uaword	.LBE321
	.uaword	.LBB324
	.uaword	.LBE324
	.uaword	0
	.uaword	0
	.uaword	.LBB332
	.uaword	.LBE332
	.uaword	.LBB336
	.uaword	.LBE336
	.uaword	.LBB337
	.uaword	.LBE337
	.uaword	0
	.uaword	0
	.uaword	.LBB338
	.uaword	.LBE338
	.uaword	.LBB341
	.uaword	.LBE341
	.uaword	0
	.uaword	0
	.uaword	.LBB360
	.uaword	.LBE360
	.uaword	.LBB363
	.uaword	.LBE363
	.uaword	0
	.uaword	0
	.uaword	.LBB371
	.uaword	.LBE371
	.uaword	.LBB376
	.uaword	.LBE376
	.uaword	0
	.uaword	0
	.uaword	.LBB386
	.uaword	.LBE386
	.uaword	.LBB391
	.uaword	.LBE391
	.uaword	0
	.uaword	0
	.uaword	.LBB403
	.uaword	.LBE403
	.uaword	.LBB408
	.uaword	.LBE408
	.uaword	.LBB409
	.uaword	.LBE409
	.uaword	.LBB410
	.uaword	.LBE410
	.uaword	0
	.uaword	0
	.uaword	.LBB411
	.uaword	.LBE411
	.uaword	.LBB426
	.uaword	.LBE426
	.uaword	0
	.uaword	0
	.uaword	.LBB413
	.uaword	.LBE413
	.uaword	.LBB420
	.uaword	.LBE420
	.uaword	0
	.uaword	0
	.uaword	.LBB415
	.uaword	.LBE415
	.uaword	.LBB418
	.uaword	.LBE418
	.uaword	0
	.uaword	0
	.uaword	.LBB422
	.uaword	.LBE422
	.uaword	.LBB425
	.uaword	.LBE425
	.uaword	0
	.uaword	0
	.uaword	.LBB427
	.uaword	.LBE427
	.uaword	.LBB496
	.uaword	.LBE496
	.uaword	0
	.uaword	0
	.uaword	.LBB428
	.uaword	.LBE428
	.uaword	.LBB432
	.uaword	.LBE432
	.uaword	.LBB433
	.uaword	.LBE433
	.uaword	0
	.uaword	0
	.uaword	.LBB438
	.uaword	.LBE438
	.uaword	.LBB442
	.uaword	.LBE442
	.uaword	.LBB443
	.uaword	.LBE443
	.uaword	0
	.uaword	0
	.uaword	.LBB444
	.uaword	.LBE444
	.uaword	.LBB447
	.uaword	.LBE447
	.uaword	0
	.uaword	0
	.uaword	.LBB448
	.uaword	.LBE448
	.uaword	.LBB498
	.uaword	.LBE498
	.uaword	0
	.uaword	0
	.uaword	.LBB449
	.uaword	.LBE449
	.uaword	.LBB462
	.uaword	.LBE462
	.uaword	0
	.uaword	0
	.uaword	.LBB454
	.uaword	.LBE454
	.uaword	.LBB458
	.uaword	.LBE458
	.uaword	.LBB459
	.uaword	.LBE459
	.uaword	0
	.uaword	0
	.uaword	.LBB463
	.uaword	.LBE463
	.uaword	.LBB467
	.uaword	.LBE467
	.uaword	.LBB468
	.uaword	.LBE468
	.uaword	0
	.uaword	0
	.uaword	.LBB469
	.uaword	.LBE469
	.uaword	.LBB472
	.uaword	.LBE472
	.uaword	0
	.uaword	0
	.uaword	.LBB473
	.uaword	.LBE473
	.uaword	.LBB497
	.uaword	.LBE497
	.uaword	0
	.uaword	0
	.uaword	.LBB476
	.uaword	.LBE476
	.uaword	.LBB480
	.uaword	.LBE480
	.uaword	.LBB481
	.uaword	.LBE481
	.uaword	0
	.uaword	0
	.uaword	.LBB486
	.uaword	.LBE486
	.uaword	.LBB490
	.uaword	.LBE490
	.uaword	.LBB491
	.uaword	.LBE491
	.uaword	0
	.uaword	0
	.uaword	.LBB492
	.uaword	.LBE492
	.uaword	.LBB495
	.uaword	.LBE495
	.uaword	0
	.uaword	0
	.uaword	.LBB499
	.uaword	.LBE499
	.uaword	.LBB502
	.uaword	.LBE502
	.uaword	0
	.uaword	0
	.uaword	.LBB503
	.uaword	.LBE503
	.uaword	.LBB520
	.uaword	.LBE520
	.uaword	0
	.uaword	0
	.uaword	.LBB505
	.uaword	.LBE505
	.uaword	.LBB512
	.uaword	.LBE512
	.uaword	0
	.uaword	0
	.uaword	.LBB507
	.uaword	.LBE507
	.uaword	.LBB510
	.uaword	.LBE510
	.uaword	0
	.uaword	0
	.uaword	.LBB514
	.uaword	.LBE514
	.uaword	.LBB518
	.uaword	.LBE518
	.uaword	.LBB519
	.uaword	.LBE519
	.uaword	0
	.uaword	0
	.uaword	.LBB521
	.uaword	.LBE521
	.uaword	.LBB525
	.uaword	.LBE525
	.uaword	.LBB526
	.uaword	.LBE526
	.uaword	0
	.uaword	0
	.uaword	.LBB527
	.uaword	.LBE527
	.uaword	.LBB531
	.uaword	.LBE531
	.uaword	.LBB540
	.uaword	.LBE540
	.uaword	0
	.uaword	0
	.uaword	.LBB532
	.uaword	.LBE532
	.uaword	.LBB539
	.uaword	.LBE539
	.uaword	0
	.uaword	0
	.uaword	.LBB534
	.uaword	.LBE534
	.uaword	.LBB537
	.uaword	.LBE537
	.uaword	0
	.uaword	0
	.uaword	.LFB352
	.uaword	.LFE352
	.uaword	.LFB353
	.uaword	.LFE353
	.uaword	.LFB354
	.uaword	.LFE354
	.uaword	.LFB355
	.uaword	.LFE355
	.uaword	.LFB356
	.uaword	.LFE356
	.uaword	.LFB357
	.uaword	.LFE357
	.uaword	.LFB358
	.uaword	.LFE358
	.uaword	.LFB359
	.uaword	.LFE359
	.uaword	.LFB360
	.uaword	.LFE360
	.uaword	.LFB361
	.uaword	.LFE361
	.uaword	.LFB362
	.uaword	.LFE362
	.uaword	.LFB363
	.uaword	.LFE363
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF56:
	.string	"rightAlignedStorage"
.LASF0:
	.string	"module"
.LASF67:
	.string	"analogFrequency"
.LASF40:
	.string	"triggerSource"
.LASF39:
	.string	"gatingSource"
.LASF36:
	.string	"RDIS_CTRL"
.LASF59:
	.string	"channelId"
.LASF33:
	.string	"MODNUMBER"
.LASF63:
	.string	"lowerBoundary"
.LASF37:
	.string	"pinIndex"
.LASF49:
	.string	"group"
.LASF44:
	.string	"triggerConfig"
.LASF42:
	.string	"triggerMode"
.LASF38:
	.string	"vadc"
.LASF45:
	.string	"requestSlotPrio"
.LASF65:
	.string	"boundaryMode"
.LASF69:
	.string	"vadcG"
.LASF60:
	.string	"inputClass"
.LASF13:
	.string	"reserved_10"
.LASF5:
	.string	"reserved_11"
.LASF18:
	.string	"reserved_12"
.LASF2:
	.string	"reserved_13"
.LASF21:
	.string	"reserved_16"
.LASF15:
	.string	"reserved_17"
.LASF9:
	.string	"XTMODE"
.LASF68:
	.string	"emuxInterface"
.LASF52:
	.string	"padDriver"
.LASF54:
	.string	"globalResultUsage"
.LASF51:
	.string	"outputMode"
.LASF14:
	.string	"RPTDIS"
.LASF61:
	.string	"reference"
.LASF43:
	.string	"arbiterRoundLength"
.LASF20:
	.string	"reserved_20"
.LASF10:
	.string	"reserved_21"
.LASF3:
	.string	"reserved_22"
.LASF11:
	.string	"reserved_24"
.LASF32:
	.string	"reserved_25"
.LASF6:
	.string	"reserved_27"
.LASF24:
	.string	"reserved_28"
.LASF19:
	.string	"reserved_29"
.LASF26:
	.string	"REQCHNR"
.LASF62:
	.string	"resultRegister"
.LASF28:
	.string	"reserved_0"
.LASF31:
	.string	"reserved_1"
.LASF16:
	.string	"reserved_2"
.LASF25:
	.string	"reserved_3"
.LASF8:
	.string	"reserved_4"
.LASF17:
	.string	"reserved_5"
.LASF12:
	.string	"reserved_6"
.LASF30:
	.string	"reserved_7"
.LASF1:
	.string	"reserved_8"
.LASF27:
	.string	"reserved_9"
.LASF35:
	.string	"reserved_C"
.LASF4:
	.string	"reserved_31"
.LASF47:
	.string	"sampleTime"
.LASF73:
	.string	"masterIndex"
.LASF66:
	.string	"limitCheck"
.LASF64:
	.string	"upperBoundary"
.LASF7:
	.string	"SRCRESREG"
.LASF75:
	.string	"groupIndex"
.LASF53:
	.string	"channel"
.LASF22:
	.string	"BOUNDARY0"
.LASF23:
	.string	"BOUNDARY1"
.LASF46:
	.string	"requestSlotStartMode"
.LASF74:
	.string	"config"
.LASF48:
	.string	"resolution"
.LASF58:
	.string	"channelSrcNr"
.LASF34:
	.string	"reserved_144"
.LASF70:
	.string	"channelIndex"
.LASF57:
	.string	"resultSrcNr"
.LASF50:
	.string	"groupId"
.LASF41:
	.string	"gatingMode"
.LASF29:
	.string	"RESULT"
.LASF55:
	.string	"synchonize"
.LASF72:
	.string	"inputClassNum"
.LASF71:
	.string	"tempChctr"
	.extern	IfxVadc_configExternalMultiplexerMode,STT_FUNC,0
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxVadc_getAdcDigitalFrequency,STT_FUNC,0
	.extern	IfxVadc_startupCalibration,STT_FUNC,0
	.extern	IfxVadc_initializeFAdcD,STT_FUNC,0
	.extern	IfxVadc_initializeFAdcI,STT_FUNC,0
	.extern	IfxVadc_selectPowerSupplyVoltage,STT_FUNC,0
	.extern	IfxVadc_disablePostCalibration,STT_FUNC,0
	.extern	IfxVadc_setArbiterPriority,STT_FUNC,0
	.extern	IfxVadc_getChannelConversionTime,STT_FUNC,0
	.extern	IfxVadc_getAdcModuleFrequency,STT_FUNC,0
	.extern	IfxVadc_getAdcAnalogFrequency,STT_FUNC,0
	.extern	IfxVadc_getSrcAddress,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxVadc_disableAccess,STT_FUNC,0
	.extern	IfxVadc_enableAccess,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
