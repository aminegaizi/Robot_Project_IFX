	.file	"IfxI2c_I2c.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxI2c_I2c_initConfig,"ax",@progbits
	.align 1
	.global	IfxI2c_I2c_initConfig
	.type	IfxI2c_I2c_initConfig, @function
IfxI2c_I2c_initConfig:
.LFB273:
	.file 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/I2c/I2c/IfxI2c_I2c.c"
	.loc 1 36 0
.LVL0:
	.loc 1 38 0
	movh	%d15, 18627
	addi	%d15, %d15, 20480
	.loc 1 37 0
	st.a	[%a4]0, %a5
	.loc 1 38 0
	st.w	[%a4] 4, %d15
	.loc 1 39 0
	mov	%d15, 0
	st.w	[%a4] 8, %d15
	ret
.LFE273:
	.size	IfxI2c_I2c_initConfig, .-IfxI2c_I2c_initConfig
.section .text.IfxI2c_I2c_initDevice,"ax",@progbits
	.align 1
	.global	IfxI2c_I2c_initDevice
	.type	IfxI2c_I2c_initDevice, @function
IfxI2c_I2c_initDevice:
.LFB274:
	.loc 1 44 0
.LVL1:
	.loc 1 45 0
	ld.w	%d15, [%a5]0
	st.w	[%a4]0, %d15
	.loc 1 46 0
	ld.bu	%d15, [%a5] 4
	st.b	[%a4] 4, %d15
	ret
.LFE274:
	.size	IfxI2c_I2c_initDevice, .-IfxI2c_I2c_initDevice
.section .text.IfxI2c_I2c_initDeviceConfig,"ax",@progbits
	.align 1
	.global	IfxI2c_I2c_initDeviceConfig
	.type	IfxI2c_I2c_initDeviceConfig, @function
IfxI2c_I2c_initDeviceConfig:
.LFB275:
	.loc 1 51 0
.LVL2:
	.loc 1 53 0
	mov	%d15, -1
	.loc 1 52 0
	st.a	[%a4]0, %a5
	.loc 1 53 0
	st.b	[%a4] 4, %d15
	ret
.LFE275:
	.size	IfxI2c_I2c_initDeviceConfig, .-IfxI2c_I2c_initDeviceConfig
.section .text.IfxI2c_I2c_initModule,"ax",@progbits
	.align 1
	.global	IfxI2c_I2c_initModule
	.type	IfxI2c_I2c_initModule, @function
IfxI2c_I2c_initModule:
.LFB276:
	.loc 1 58 0
.LVL3:
	.loc 1 59 0
	ld.a	%a15, [%a5]0
.LVL4:
.LBB168:
.LBB169:
	.file 2 "0_Src/BaseSw/iLLD/TC29B/Tricore/I2c/Std/IfxI2c.h"
	.loc 2 896 0
	mov	%d15, 0
.LBE169:
.LBE168:
	.loc 1 58 0
	mov.aa	%a12, %a4
	.loc 1 60 0
	st.a	[%a4]0, %a15
	.loc 1 62 0
	mov.aa	%a4, %a15
.LVL5:
	.loc 1 58 0
	mov.aa	%a13, %a5
	.loc 1 62 0
	call	IfxI2c_enableModule
.LVL6:
	.loc 1 64 0
	mov.aa	%a4, %a15
.LBB171:
.LBB170:
	.loc 2 896 0
	st.w	[%a15] 16, %d15
.LBE170:
.LBE171:
	.loc 1 64 0
	call	IfxI2c_configureAsMaster
.LVL7:
	.loc 1 65 0
	ld.w	%d4, [%a13] 4
	mov.aa	%a4, %a15
	call	IfxI2c_setBaudrate
.LVL8:
	.loc 1 66 0
	ld.a	%a2, [%a13] 8
	ld.a	%a4, [%a2]0
	ld.a	%a5, [%a2] 4
	ld.bu	%d4, [%a2] 8
	call	IfxI2c_initSclSdaPin
.LVL9:
.LBB172:
.LBB173:
	.loc 2 860 0
	mov	%d2, 1
.LBE173:
.LBE172:
	.loc 1 68 0
	mov.aa	%a4, %a15
.LBB175:
.LBB174:
	.loc 2 860 0
	st.w	[%a15] 16, %d2
.LBE174:
.LBE175:
	.loc 1 68 0
	call	IfxI2c_getBaudrate
.LVL10:
	st.w	[%a12] 8, %d2
.LVL11:
.LBB176:
.LBB177:
	.loc 2 741 0
	ld.w	%d2, [%a15] 36
.LBE177:
.LBE176:
	.loc 1 70 0
	st.b	[%a12] 5, %d15
.LBB179:
.LBB178:
	.loc 2 741 0
	and	%d2, %d2, 3
.LBE178:
.LBE179:
	.loc 1 69 0
	st.b	[%a12] 4, %d2
	.loc 1 70 0
	ret
.LFE276:
	.size	IfxI2c_I2c_initModule, .-IfxI2c_I2c_initModule
.section .text.IfxI2c_I2c_read,"ax",@progbits
	.align 1
	.global	IfxI2c_I2c_read
	.type	IfxI2c_I2c_read, @function
IfxI2c_I2c_read:
.LFB277:
	.loc 1 75 0
.LVL12:
	.loc 1 77 0
	ld.a	%a2, [%a4]0
	.loc 1 81 0
	mov	%d15, 0
	.loc 1 75 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 77 0
	ld.a	%a15, [%a2]0
.LVL13:
	.loc 1 81 0
	st.w	[%SP] 4, %d15
	.loc 1 79 0
	ld.bu	%d2, [%a4] 4
.LVL14:
.LBB180:
.LBB181:
	.loc 2 567 0
	ld.w	%d15, [%a15] 36
	and	%d15, %d15, 3
	jnz	%d15, .L77
.LVL15:
.LBE181:
.LBE180:
.LBB182:
.LBB183:
	.loc 2 584 0
	mov	%d15, 127
.LBE183:
.LBE182:
.LBB185:
.LBB186:
	.loc 2 909 0
	lea	%a2, [%a15] -32768
	addih.a	%a2, %a2, 1
.LBE186:
.LBE185:
.LBB188:
.LBB184:
	.loc 2 584 0
	st.w	[%a15] 120, %d15
.LVL16:
.LBE184:
.LBE188:
.LBB189:
.LBB190:
	.loc 2 578 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LBE190:
.LBE189:
	.loc 1 99 0
	or	%d15, %d2, 1
.LVL17:
.LBB191:
.LBB192:
	.loc 2 890 0
	ld.w	%d2, [%a15] 52
.LVL18:
	insert	%d2, %d2, 1, 0, 14
	st.w	[%a15] 52, %d2
.LVL19:
.LBE192:
.LBE191:
.LBB193:
.LBB194:
	.loc 2 872 0
	ld.w	%d2, [%a15] 44
	insert	%d2, %d2, %d4, 0, 14
	st.w	[%a15] 44, %d2
.LVL20:
.LBE194:
.LBE193:
.LBB195:
.LBB187:
	.loc 2 909 0
	st.w	[%a2]0, %d15
.LVL21:
.LBE187:
.LBE195:
.LBB196:
.LBB197:
	.loc 2 608 0
	ld.w	%d15, [%a15] 140
.LVL22:
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL23:
.LBE197:
.LBE196:
.LBB198:
.LBB199:
	.loc 2 620 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL24:
.LBE199:
.LBE198:
.LBB200:
.LBB201:
	.loc 2 602 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL25:
.LBE201:
.LBE200:
.LBB202:
.LBB203:
	.loc 2 590 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.L8:
.LBE203:
.LBE202:
	.loc 1 109 0 discriminator 1
	ld.w	%d15, [%a15] 116
	jnz.t	%d15, 0, .L8
	.loc 1 113 0
	ld.w	%d15, [%a15] 100
	jz	%d15, .L78
.LVL26:
.L73:
.LBB204:
.LBB205:
.LBB206:
	.loc 2 578 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL27:
.LBE206:
.LBE205:
	.loc 1 266 0
	mov	%d15, 4
.LVL28:
.L10:
	mov.aa	%a12, %a4
.LVL29:
.LBE204:
	.loc 1 270 0
	mov.aa	%a4, %a15
.LVL30:
	call	IfxI2c_releaseBus
.LVL31:
.LBB280:
.LBB281:
	.loc 2 741 0
	ld.w	%d2, [%a15] 36
.LBE281:
.LBE280:
	.loc 1 271 0
	ld.a	%a2, [%a12]0
.LVL32:
.LBB283:
.LBB282:
	.loc 2 741 0
	and	%d2, %d2, 3
.LBE282:
.LBE283:
	.loc 1 272 0
	st.b	[%a2] 5, %d15
	.loc 1 271 0
	st.b	[%a2] 4, %d2
	.loc 1 273 0
	mov	%d2, %d15
	ret
.LVL33:
.L77:
.LBB284:
.LBB285:
	.loc 2 741 0
	ld.w	%d15, [%a15] 36
.LBE285:
.LBE284:
	.loc 1 92 0
	mov	%d2, 3
.LBB287:
.LBB286:
	.loc 2 741 0
	and	%d15, %d15, 3
.LBE286:
.LBE287:
	.loc 1 90 0
	st.b	[%a2] 4, %d15
.LVL34:
	.loc 1 91 0
	mov	%d15, 3
	st.b	[%a2] 5, %d15
	.loc 1 92 0
	ret
.LVL35:
.L78:
.LBB288:
.LBB289:
	.loc 2 816 0
	ld.w	%d15, [%a15] 116
.LBE289:
.LBE288:
	.loc 1 118 0
	jz.t	%d15, 3, .L11
.LVL36:
.LBB290:
.LBB291:
	.loc 2 614 0
	mov	%d15, 8
	st.w	[%a15] 120, %d15
.LVL37:
.LBE291:
.LBE290:
	.loc 1 121 0
	mov	%d15, 2
	j	.L10
.LVL38:
.L11:
.LBB292:
.LBB293:
	.loc 2 816 0
	ld.w	%d15, [%a15] 116
.LBE293:
.LBE292:
	.loc 1 123 0
	jnz.t	%d15, 4, .L79
	.loc 1 76 0
	mov	%d15, 0
	.loc 1 128 0
	jlez	%d4, .L10
.LBB294:
	.loc 1 131 0
	lt	%d15, %d4, 33
.LBE294:
	.loc 1 82 0
	mov	%d3, %d4
.LBB295:
	.loc 1 131 0
	jnz	%d15, .L60
.LVL39:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 632 0
#APP
	# 632 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d7, LO:0xFE2C
	# 0 "" 2
.LVL40:
#NO_APP
.LBE212:
	.loc 3 633 0
	extr.u	%d7, %d7, 15, 1
.LVL41:
.LBE211:
.LBE210:
	.loc 3 641 0
#APP
	# 641 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB213:
.LBB214:
	.file 4 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 1405 0
#APP
	# 1405 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL42:
#NO_APP
.LBE214:
.LBE213:
.LBE209:
.LBE208:
.LBB215:
.LBB216:
	.loc 1 158 0
	lea	%a12, [%a15] -16384
.LBE216:
.LBE215:
	.loc 1 136 0
	mov	%d5, 0
.LBB231:
.LBB225:
	.loc 1 158 0
	addih.a	%a12, %a12, 1
.LVL43:
.L23:
.LBE225:
	.loc 1 138 0
	jlt	%d3, 4, .L14
.LVL44:
	.loc 1 141 0
	add	%d3, -4
.LVL45:
	.loc 1 140 0
	mov	%d6, 4
.LVL46:
.L16:
	.loc 1 151 0 discriminator 1
	ld.w	%d15, [%a15] 128
.LVL47:
	jz	%d15, .L16
	.loc 1 156 0
	and	%d2, %d15, 15
	jz	%d2, .L17
.LBB226:
	.loc 1 158 0
	ld.w	%d2, [%a12]0
	mov.a	%a2, %d6
	st.w	[%SP] 4, %d2
.LVL48:
	.loc 1 161 0
	mov.a	%a3, 0
	add.a	%a2, -1
	jz	%d6, .L19
.LVL49:
.L53:
	addsc.a	%a7, %a3, %d5, 0
	.loc 1 163 0 discriminator 3
	lea	%a6, [%SP] 4
.LVL50:
	add.a	%a6, %a3
.LVL51:
	add.a	%a7, %a5
	ld.bu	%d2, [%a6]0
	st.b	[%a7]0, %d2
	.loc 1 161 0 discriminator 3
	add.a	%a3, 1
.LVL52:
	loop	%a2, .L53
.LVL53:
.L19:
.LBB217:
.LBB218:
	.loc 2 608 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 1
	st.w	[%a15] 140, %d2
.LVL54:
.LBE218:
.LBE217:
.LBB219:
.LBB220:
	.loc 2 620 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 2
	st.w	[%a15] 140, %d2
.LVL55:
.LBE220:
.LBE219:
.LBB221:
.LBB222:
	.loc 2 602 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 4
	st.w	[%a15] 140, %d2
.LVL56:
.LBE222:
.LBE221:
.LBB223:
.LBB224:
	.loc 2 590 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 8
	st.w	[%a15] 140, %d2
.LVL57:
.L17:
.LBE224:
.LBE223:
.LBE226:
	.loc 1 173 0
	jnz.t	%d15, 5, .L80
	.loc 1 180 0
	jnz.t	%d15, 4, .L81
.LBE231:
	.loc 1 136 0 discriminator 2
	add	%d5, 4
.LVL58:
	jlt.u	%d5, %d4, .L23
.LBE207:
.LBE295:
	.loc 1 76 0
	mov	%d15, 0
.LVL59:
.L21:
.LBB296:
.LBB240:
.LBB232:
.LBB233:
	.loc 3 916 0
	jz	%d7, .L25
	.loc 3 918 0
#APP
	# 918 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L25:
.LVL60:
.LBE233:
.LBE232:
.LBB234:
.LBB235:
	.loc 2 816 0 discriminator 1
	ld.w	%d2, [%a15] 116
.LBE235:
.LBE234:
	.loc 1 191 0 discriminator 1
	jz.t	%d2, 5, .L25
.LVL61:
.LBB236:
.LBB237:
	.loc 2 614 0
	mov	%d2, 32
	st.w	[%a15] 120, %d2
	j	.L26
.LVL62:
.L60:
.LBE237:
.LBE236:
.LBE240:
.LBB241:
.LBB242:
.LBB243:
	.loc 2 816 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE243:
.LBE242:
	.loc 1 199 0 discriminator 1
	jz.t	%d15, 5, .L60
.LVL63:
.LBB244:
.LBB245:
	.loc 2 614 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE245:
.LBE244:
	.loc 1 206 0
	ld.w	%d2, [%a15] 128
.LVL64:
	.loc 1 208 0
	jz.t	%d2, 5, .L27
.LVL65:
.LBB246:
.LBB247:
	.loc 2 584 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL66:
.LBE247:
.LBE246:
	.loc 1 214 0
	mov	%d15, 4
	jz.t	%d2, 4, .L26
.LVL67:
.L35:
.LBB248:
.LBB249:
	.loc 2 578 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL68:
	mov	%d15, 4
.LVL69:
.L26:
.LBE249:
.LBE248:
.LBE241:
	.loc 1 255 0
	ld.w	%d2, [%a15] 128
.LVL70:
	.loc 1 257 0
	jz.t	%d2, 5, .L33
.LVL71:
.LBB274:
.LBB275:
	.loc 2 584 0
	mov	%d15, 127
.LVL72:
	st.w	[%a15] 120, %d15
.LVL73:
.LBE275:
.LBE274:
	.loc 1 260 0
	mov	%d15, 4
.LVL74:
.L33:
	.loc 1 263 0
	jz.t	%d2, 4, .L10
	j	.L73
.LVL75:
.L79:
.LBE296:
.LBB297:
.LBB298:
	.loc 2 614 0
	mov	%d15, 16
	st.w	[%a15] 120, %d15
.LVL76:
.LBE298:
.LBE297:
	.loc 1 126 0
	mov	%d15, 1
	j	.L10
.LVL77:
.L14:
.LBB299:
.LBB276:
.LBB238:
	.loc 1 145 0
	mov	%d6, %d3
.LVL78:
	.loc 1 146 0
	mov	%d3, 0
	j	.L16
.LVL79:
.L27:
.LBE238:
.LBE276:
.LBB277:
	.loc 1 214 0
	jnz.t	%d2, 4, .L35
.LVL80:
	lea	%a12, [%a15] -16384
.LBB250:
	.loc 1 225 0
	mov	%d2, 0
.LVL81:
.LBB251:
	.loc 1 239 0
	addih.a	%a12, %a12, 1
.LVL82:
.L32:
	.loc 1 227 0
	jlt	%d3, 4, .L28
.LVL83:
	.loc 1 239 0
	ld.w	%d15, [%a12]0
	st.w	[%SP] 4, %d15
.LBB252:
.LBB253:
	.loc 2 608 0
	ld.w	%d15, [%a15] 140
.LBE253:
.LBE252:
	.loc 1 230 0
	add	%d3, -4
.LVL84:
.LBB257:
.LBB254:
	.loc 2 608 0
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL85:
.LBE254:
.LBE257:
.LBB258:
.LBB259:
	.loc 2 620 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL86:
.LBE259:
.LBE258:
.LBB261:
.LBB262:
	.loc 2 602 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL87:
.LBE262:
.LBE261:
.LBB264:
.LBB265:
	.loc 2 590 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LVL88:
.LBE265:
.LBE264:
	.loc 1 229 0
	mov	%d15, 4
.LVL89:
.L29:
	add	%d5, %d15, -1
	cmovn	%d5, %d15, 0
	mov.a	%a2, %d5
	.loc 1 229 0 is_stmt 0 discriminator 3
	mov.a	%a3, 0
.LVL90:
.L31:
	addsc.a	%a7, %a3, %d2, 0
	.loc 1 247 0 is_stmt 1 discriminator 3
	lea	%a6, [%SP] 4
.LVL91:
	add.a	%a6, %a3
.LVL92:
	add.a	%a7, %a5
	ld.bu	%d15, [%a6]0
	st.b	[%a7]0, %d15
	.loc 1 245 0 discriminator 3
	add.a	%a3, 1
.LVL93:
	loop	%a2, .L31
.LVL94:
.L30:
.LBE251:
	.loc 1 225 0 discriminator 2
	add	%d2, 4
.LVL95:
	jlt.u	%d2, %d4, .L32
.LBE250:
.LBE277:
.LBE299:
	.loc 1 76 0
	mov	%d15, 0
.LBB300:
.LBB278:
.LBB273:
	j	.L26
.L28:
.LBB272:
	.loc 1 239 0
	ld.w	%d5, [%a12]0
	st.w	[%SP] 4, %d5
.LBB267:
.LBB255:
	.loc 2 608 0
	ld.w	%d5, [%a15] 140
.LBE255:
.LBE267:
	.loc 1 234 0
	mov	%d15, %d3
.LVL96:
.LBB268:
.LBB256:
	.loc 2 608 0
	or	%d5, %d5, 1
	st.w	[%a15] 140, %d5
.LVL97:
.LBE256:
.LBE268:
.LBB269:
.LBB260:
	.loc 2 620 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 2
	st.w	[%a15] 140, %d5
.LVL98:
.LBE260:
.LBE269:
.LBB270:
.LBB263:
	.loc 2 602 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 4
	st.w	[%a15] 140, %d5
.LVL99:
.LBE263:
.LBE270:
.LBB271:
.LBB266:
	.loc 2 590 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 8
	st.w	[%a15] 140, %d5
.LVL100:
.LBE266:
.LBE271:
	.loc 1 245 0
	jz	%d3, .L30
.LVL101:
	.loc 1 235 0
	mov	%d3, 0
.LVL102:
	j	.L29
.LVL103:
.L80:
.LBE272:
.LBE273:
.LBE278:
.LBB279:
.LBB239:
.LBB227:
.LBB228:
	.loc 2 584 0
	mov	%d15, 127
.LVL104:
	st.w	[%a15] 120, %d15
.LVL105:
.LBE228:
.LBE227:
	.loc 1 176 0
	mov	%d15, 4
	.loc 1 177 0
	j	.L21
.LVL106:
.L81:
.LBB229:
.LBB230:
	.loc 2 578 0
	mov	%d15, 15
.LVL107:
	st.w	[%a15] 104, %d15
.LVL108:
.LBE230:
.LBE229:
	.loc 1 183 0
	mov	%d15, 4
	.loc 1 184 0
	j	.L21
.LBE239:
.LBE279:
.LBE300:
.LFE277:
	.size	IfxI2c_I2c_read, .-IfxI2c_I2c_read
.section .text.IfxI2c_I2c_write,"ax",@progbits
	.align 1
	.global	IfxI2c_I2c_write
	.type	IfxI2c_I2c_write, @function
IfxI2c_I2c_write:
.LFB278:
	.loc 1 278 0
.LVL109:
	.loc 1 280 0
	ld.a	%a2, [%a4]0
	.loc 1 278 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 281 0
	ld.bu	%d5, [%a4] 4
	.loc 1 280 0
	ld.a	%a15, [%a2]0
.LVL110:
.LBB301:
.LBB302:
	.loc 2 567 0
	ld.w	%d15, [%a15] 36
	and	%d15, %d15, 3
	jnz	%d15, .L141
.LVL111:
.LBE302:
.LBE301:
.LBB303:
.LBB304:
	.loc 2 584 0
	mov	%d15, 127
.LBE304:
.LBE303:
	.loc 1 301 0
	st.w	[%SP] 4, %d5
.LBB306:
.LBB307:
	.loc 2 909 0
	lea	%a6, [%a15] -32768
.LBE307:
.LBE306:
.LBB310:
.LBB305:
	.loc 2 584 0
	st.w	[%a15] 120, %d15
.LVL112:
.LBE305:
.LBE310:
.LBB311:
.LBB312:
	.loc 2 578 0
	mov	%d15, 15
.LBE312:
.LBE311:
.LBB314:
.LBB308:
	.loc 2 909 0
	addih.a	%a2, %a6, 1
.LBE308:
.LBE314:
.LBB315:
.LBB313:
	.loc 2 578 0
	st.w	[%a15] 104, %d15
.LBE313:
.LBE315:
.LBB316:
.LBB317:
	.loc 2 890 0
	ld.w	%d15, [%a15] 52
	insert	%d15, %d15, 1, 0, 14
	st.w	[%a15] 52, %d15
.LVL113:
.LBE317:
.LBE316:
.LBB318:
.LBB309:
	.loc 2 909 0
	st.w	[%a2]0, %d5
.LVL114:
.LBE309:
.LBE318:
.LBB319:
.LBB320:
	.loc 2 608 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL115:
.LBE320:
.LBE319:
.LBB321:
.LBB322:
	.loc 2 620 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL116:
.LBE322:
.LBE321:
.LBB323:
.LBB324:
	.loc 2 602 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL117:
.LBE324:
.LBE323:
.LBB325:
.LBB326:
	.loc 2 590 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.L85:
.LVL118:
.LBE326:
.LBE325:
.LBB327:
.LBB328:
	.loc 2 816 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE328:
.LBE327:
	.loc 1 311 0 discriminator 1
	jz.t	%d15, 5, .L85
.LVL119:
.LBB329:
.LBB330:
	.loc 2 614 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LVL120:
.LBE330:
.LBE329:
.LBB331:
.LBB332:
	.loc 2 816 0
	ld.w	%d15, [%a15] 116
.LBE332:
.LBE331:
	.loc 1 317 0
	jnz.t	%d15, 3, .L142
.LVL121:
.LBB333:
.LBB334:
	.loc 2 816 0
	ld.w	%d15, [%a15] 116
.LBE334:
.LBE333:
	.loc 1 322 0
	jz.t	%d15, 4, .L88
.LVL122:
.LBB335:
.LBB336:
	.loc 2 614 0
	mov	%d15, 16
.LBE336:
.LBE335:
	.loc 1 325 0
	mov	%d8, 1
.LBB338:
.LBB337:
	.loc 2 614 0
	st.w	[%a15] 120, %d15
.LVL123:
.L87:
	mov.aa	%a12, %a4
.LVL124:
.LBE337:
.LBE338:
	.loc 1 420 0
	mov.aa	%a4, %a15
.LVL125:
	call	IfxI2c_releaseBus
.LVL126:
.LBB339:
.LBB340:
	.loc 2 741 0
	ld.w	%d15, [%a15] 36
.LBE340:
.LBE339:
	.loc 1 421 0
	ld.a	%a2, [%a12]0
.LVL127:
.LBB342:
.LBB341:
	.loc 2 741 0
	and	%d15, %d15, 3
.LBE341:
.LBE342:
	.loc 1 423 0
	mov	%d2, %d8
	.loc 1 422 0
	st.b	[%a2] 5, %d8
	.loc 1 421 0
	st.b	[%a2] 4, %d15
	.loc 1 423 0
	ret
.LVL128:
.L141:
.LBB343:
.LBB344:
	.loc 2 741 0
	ld.w	%d15, [%a15] 36
.LBE344:
.LBE343:
	.loc 1 292 0
	mov	%d2, 3
.LBB346:
.LBB345:
	.loc 2 741 0
	and	%d15, %d15, 3
.LBE345:
.LBE346:
	.loc 1 290 0
	st.b	[%a2] 4, %d15
.LVL129:
	.loc 1 291 0
	mov	%d15, 3
	st.b	[%a2] 5, %d15
	.loc 1 292 0
	ret
.LVL130:
.L142:
.LBB347:
.LBB348:
	.loc 2 614 0
	mov	%d15, 8
.LBE348:
.LBE347:
	.loc 1 320 0
	mov	%d8, 2
.LBB350:
.LBB349:
	.loc 2 614 0
	st.w	[%a15] 120, %d15
.LVL131:
.LBE349:
.LBE350:
	j	.L87
.LVL132:
.L88:
	.loc 1 279 0
	mov	%d8, 0
	.loc 1 327 0
	jlez	%d4, .L87
	.loc 1 283 0
	add	%d4, 1
.LVL133:
.LBB351:
.LBB352:
.LBB353:
.LBB354:
.LBB355:
.LBB356:
	.loc 3 632 0
#APP
	# 632 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d10, LO:0xFE2C
	# 0 "" 2
.LVL134:
#NO_APP
.LBE356:
	.loc 3 633 0
	extr.u	%d10, %d10, 15, 1
.LVL135:
.LBE355:
.LBE354:
	.loc 3 641 0
#APP
	# 641 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB357:
.LBB358:
	.loc 4 1405 0
#APP
	# 1405 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL136:
#NO_APP
.LBE358:
.LBE357:
.LBE353:
.LBE352:
.LBB359:
.LBB360:
	.loc 2 890 0
	ld.w	%d15, [%a15] 52
.LBE360:
.LBE359:
	.loc 1 336 0
	mov	%d1, %d4
.LBB363:
.LBB361:
	.loc 2 890 0
	insert	%d15, %d15, %d4, 0, 14
.LBE361:
.LBE363:
	.loc 1 336 0
	mov	%d3, 0
	.loc 1 340 0
	mov	%d9, 0
.LBB364:
.LBB365:
.LBB366:
	.loc 2 584 0
	mov	%d6, 127
.LBE366:
.LBE365:
.LBE364:
.LBB371:
.LBB362:
	.loc 2 890 0
	st.w	[%a15] 52, %d15
.LVL137:
.LBE362:
.LBE371:
.LBB372:
.LBB373:
	.loc 2 909 0
	addih.a	%a6, %a6, 1
.LVL138:
.LBE373:
.LBE372:
	.loc 1 338 0
	jlt	%d4, 4, .L89
.LVL139:
.L143:
	.loc 1 341 0
	add	%d4, -4
.LVL140:
	.loc 1 349 0
	st.w	[%SP] 4, %d9
.LVL141:
	.loc 1 340 0
	mov	%d2, 4
.LVL142:
.L90:
	addi	%d0, %d2, -1
	sel	%d0, %d2, %d0, 0
	mov.a	%a2, %d0
	mov	%d15, 0
	addi	%d7, %d3, -1
.LVL143:
.L94:
	.loc 1 353 0
	or	%d2, %d15, %d3
	jnz	%d2, .L92
	.loc 1 355 0
	st.b	[%SP] 4, %d5
.L93:
	.loc 1 351 0 discriminator 2
	add	%d15, 1
.LVL144:
	loop	%a2, .L94
.LVL145:
.L100:
.LBB375:
	.loc 1 368 0
	ld.w	%d15, [%a15] 128
.LVL146:
	.loc 1 370 0
	jz.t	%d15, 5, .L95
.LVL147:
.LBB368:
.LBB367:
	.loc 2 584 0
	st.w	[%a15] 120, %d6
.LVL148:
.LBE367:
.LBE368:
	.loc 1 373 0
	mov	%d8, 4
.LVL149:
.L95:
	.loc 1 376 0
	jz.t	%d15, 4, .L96
.LVL150:
.LBB369:
.LBB370:
	.loc 2 578 0
	mov	%d15, 15
.LVL151:
	st.w	[%a15] 104, %d15
.LVL152:
.LBE370:
.LBE369:
.LBE375:
	.loc 1 381 0
	ld.w	%d15, [%a15] 56
.LVL153:
.L97:
	mov	%d8, 4
.L98:
.LVL154:
.LBB376:
.LBB377:
	.loc 3 916 0
	jz	%d10, .L104
	.loc 3 918 0
#APP
	# 918 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L104:
.LVL155:
.LBE377:
.LBE376:
.LBB378:
.LBB379:
	.loc 2 816 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE379:
.LBE378:
	.loc 1 398 0 discriminator 1
	jz.t	%d15, 5, .L104
.LVL156:
.LBB380:
.LBB381:
	.loc 2 614 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE381:
.LBE380:
	.loc 1 405 0
	ld.w	%d15, [%a15] 128
.LVL157:
	.loc 1 407 0
	jz.t	%d15, 5, .L105
.LVL158:
.LBB382:
.LBB383:
	.loc 2 584 0
	mov	%d2, 127
.LBE383:
.LBE382:
	.loc 1 410 0
	mov	%d8, 4
.LVL159:
.LBB385:
.LBB384:
	.loc 2 584 0
	st.w	[%a15] 120, %d2
.LVL160:
.L105:
.LBE384:
.LBE385:
	.loc 1 413 0
	jz.t	%d15, 4, .L87
.LVL161:
.LBB386:
.LBB387:
	.loc 2 578 0
	mov	%d15, 15
.LVL162:
.LBE387:
.LBE386:
	.loc 1 416 0
	mov	%d8, 4
.LVL163:
.LBB389:
.LBB388:
	.loc 2 578 0
	st.w	[%a15] 104, %d15
.LVL164:
	j	.L87
.LVL165:
.L96:
.LBE388:
.LBE389:
	.loc 1 381 0
	ld.w	%d15, [%a15] 56
.LVL166:
	and	%d15, %d15, 63
	ne	%d15, %d15, 8
	jnz	%d15, .L99
	.loc 1 381 0 is_stmt 0 discriminator 1
	jne	%d8, 4, .L100
	mov	%d8, 4
.LVL167:
	j	.L98
.LVL168:
.L92:
	mov.a	%a7, %d7
	addsc.a	%a3, %a7, %d15, 0
	.loc 1 360 0 is_stmt 1
	lea	%a7, [%SP] 4
.LVL169:
	add.a	%a3, %a5
	ld.bu	%d2, [%a3]0
	addsc.a	%a3, %a7, %d15, 0
	st.b	[%a3]0, %d2
	j	.L93
.LVL170:
.L99:
	.loc 1 383 0
	jeq	%d8, 4, .L97
.LVL171:
.LBB390:
.LBB374:
	.loc 2 909 0 discriminator 2
	ld.w	%d15, [%SP] 4
	st.w	[%a6]0, %d15
.LVL172:
.LBE374:
.LBE390:
.LBB391:
.LBB392:
	.loc 2 608 0 discriminator 2
	ld.w	%d15, [%a15] 140
.LBE392:
.LBE391:
	.loc 1 336 0 discriminator 2
	add	%d3, 4
.LVL173:
.LBB394:
.LBB393:
	.loc 2 608 0 discriminator 2
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL174:
.LBE393:
.LBE394:
.LBB395:
.LBB396:
	.loc 2 620 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL175:
.LBE396:
.LBE395:
.LBB397:
.LBB398:
	.loc 2 602 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL176:
.LBE398:
.LBE397:
.LBB399:
.LBB400:
	.loc 2 590 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LBE400:
.LBE399:
	.loc 1 336 0 discriminator 2
	jge.u	%d3, %d1, .L98
	.loc 1 338 0
	jge	%d4, 4, .L143
.LVL177:
.L89:
	.loc 1 349 0
	st.w	[%SP] 4, %d9
	.loc 1 345 0
	mov	%d2, %d4
.LVL178:
	.loc 1 351 0
	jz	%d4, .L100
	.loc 1 346 0
	mov	%d4, 0
	j	.L90
.LBE351:
.LFE278:
	.size	IfxI2c_I2c_write, .-IfxI2c_I2c_write
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
	.uaword	.LFB273
	.uaword	.LFE273-.LFB273
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB274
	.uaword	.LFE274-.LFB274
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB275
	.uaword	.LFE275-.LFB275
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB276
	.uaword	.LFE276-.LFB276
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB277
	.uaword	.LFE277-.LFB277
	.byte	0x4
	.uaword	.LCFI0-.LFB277
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB278
	.uaword	.LFE278-.LFB278
	.byte	0x4
	.uaword	.LCFI1-.LFB278
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxI2c_regdef.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_regdef.h"
	.file 9 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_regdef.h"
	.file 10 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
	.file 11 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxI2c_PinMap.h"
	.file 12 "0_Src/BaseSw/iLLD/TC29B/Tricore/I2c/I2c/IfxI2c_I2c.h"
	.file 13 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x63c9
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC29B/Tricore/I2c/I2c/IfxI2c_I2c.c"
	.string	"C:\\\\Robot_Project_Handover\\\\Beeper_Song"
	.uaword	.Ldebug_ranges0+0x370
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
	.byte	0x5
	.byte	0x59
	.uaword	0x1b6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x5
	.byte	0x5a
	.uaword	0x1d5
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
	.byte	0x5
	.byte	0x5c
	.uaword	0x172
	.uleb128 0x3
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x17e
	.uleb128 0x3
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x223
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
	.byte	0x5
	.byte	0x68
	.uaword	0x1b6
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
	.uaword	0x27e
	.uleb128 0x5
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1c7
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x71
	.uaword	0x309
	.uleb128 0x7
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x7
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x7
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x7
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x7
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x7
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x7
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x7
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x6
	.byte	0x7a
	.uaword	0x290
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.uaword	0x33d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0x7f
	.uaword	0x278
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x6
	.byte	0x80
	.uaword	0x1f8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x81
	.uaword	0x31a
	.uleb128 0xb
	.string	"_Ifx_I2C_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x56b
	.uleb128 0xc
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_I2C_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x357
	.uleb128 0xb
	.string	"_Ifx_I2C_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x5c3
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x7
	.byte	0x54
	.uaword	0x56b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x596
	.uleb128 0xb
	.string	"_Ifx_I2C_ADDRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x68f
	.uleb128 0xc
	.string	"ADR"
	.byte	0x7
	.byte	0x5a
	.uaword	0x56b
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x7
	.byte	0x5b
	.uaword	0x56b
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TBAM"
	.byte	0x7
	.byte	0x5c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"GCE"
	.byte	0x7
	.byte	0x5d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"MCE"
	.byte	0x7
	.byte	0x5e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"MnS"
	.byte	0x7
	.byte	0x5f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"SONA"
	.byte	0x7
	.byte	0x60
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"SOPE"
	.byte	0x7
	.byte	0x61
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"reserved_22"
	.byte	0x7
	.byte	0x62
	.uaword	0x56b
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ADDRCFG_Bits"
	.byte	0x7
	.byte	0x63
	.uaword	0x5de
	.uleb128 0xb
	.string	"_Ifx_I2C_BUSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x66
	.uaword	0x6f6
	.uleb128 0xc
	.string	"BS"
	.byte	0x7
	.byte	0x68
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"RnW"
	.byte	0x7
	.byte	0x69
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x7
	.byte	0x6a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_BUSSTAT_Bits"
	.byte	0x7
	.byte	0x6b
	.uaword	0x6ab
	.uleb128 0xb
	.string	"_Ifx_I2C_CLC1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x6e
	.uaword	0x7bb
	.uleb128 0xc
	.string	"DISR"
	.byte	0x7
	.byte	0x70
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"DISS"
	.byte	0x7
	.byte	0x71
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"SPEN"
	.byte	0x7
	.byte	0x72
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EDIS"
	.byte	0x7
	.byte	0x73
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"SBWE"
	.byte	0x7
	.byte	0x74
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"FSOE"
	.byte	0x7
	.byte	0x75
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.byte	0x76
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"RMC"
	.byte	0x7
	.byte	0x77
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x7
	.byte	0x78
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_CLC1_Bits"
	.byte	0x7
	.byte	0x79
	.uaword	0x712
	.uleb128 0xb
	.string	"_Ifx_I2C_CLC_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x7c
	.uaword	0x81e
	.uleb128 0xc
	.string	"DISR"
	.byte	0x7
	.byte	0x7e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"DISS"
	.byte	0x7
	.byte	0x7f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x7
	.byte	0x80
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_CLC_Bits"
	.byte	0x7
	.byte	0x81
	.uaword	0x7d4
	.uleb128 0xb
	.string	"_Ifx_I2C_ENDDCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x84
	.uaword	0x889
	.uleb128 0xc
	.string	"SETRSC"
	.byte	0x7
	.byte	0x86
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"SETEND"
	.byte	0x7
	.byte	0x87
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x7
	.byte	0x88
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ENDDCTRL_Bits"
	.byte	0x7
	.byte	0x89
	.uaword	0x836
	.uleb128 0xb
	.string	"_Ifx_I2C_ERRIRQSC_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8c
	.uaword	0x911
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x7
	.byte	0x8e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x7
	.byte	0x8f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x7
	.byte	0x90
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x7
	.byte	0x91
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x7
	.byte	0x92
	.uaword	0x56b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSC_Bits"
	.byte	0x7
	.byte	0x93
	.uaword	0x8a6
	.uleb128 0xb
	.string	"_Ifx_I2C_ERRIRQSM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x96
	.uaword	0x999
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x7
	.byte	0x98
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x7
	.byte	0x99
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x7
	.byte	0x9a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x7
	.byte	0x9b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x7
	.byte	0x9c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSM_Bits"
	.byte	0x7
	.byte	0x9d
	.uaword	0x92e
	.uleb128 0xb
	.string	"_Ifx_I2C_ERRIRQSS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa0
	.uaword	0xa21
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x7
	.byte	0xa2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x7
	.byte	0xa3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x7
	.byte	0xa4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x7
	.byte	0xa5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x7
	.byte	0xa6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSS_Bits"
	.byte	0x7
	.byte	0xa7
	.uaword	0x9b6
	.uleb128 0xb
	.string	"_Ifx_I2C_FDIVCFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xaa
	.uaword	0xa99
	.uleb128 0xc
	.string	"DEC"
	.byte	0x7
	.byte	0xac
	.uaword	0x56b
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x7
	.byte	0xad
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"INC"
	.byte	0x7
	.byte	0xae
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x7
	.byte	0xaf
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FDIVCFG_Bits"
	.byte	0x7
	.byte	0xb0
	.uaword	0xa3e
	.uleb128 0xb
	.string	"_Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb3
	.uaword	0xb14
	.uleb128 0xc
	.string	"DEC"
	.byte	0x7
	.byte	0xb5
	.uaword	0x56b
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x7
	.byte	0xb6
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"INC"
	.byte	0x7
	.byte	0xb7
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x7
	.byte	0xb8
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0x7
	.byte	0xb9
	.uaword	0xab5
	.uleb128 0xb
	.string	"_Ifx_I2C_FFSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbc
	.uaword	0xb71
	.uleb128 0xc
	.string	"FFS"
	.byte	0x7
	.byte	0xbe
	.uaword	0x56b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.byte	0xbf
	.uaword	0x56b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FFSSTAT_Bits"
	.byte	0x7
	.byte	0xc0
	.uaword	0xb34
	.uleb128 0xb
	.string	"_Ifx_I2C_FIFOCFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc3
	.uaword	0xc5f
	.uleb128 0xc
	.string	"RXBS"
	.byte	0x7
	.byte	0xc5
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc6
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"TXBS"
	.byte	0x7
	.byte	0xc7
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.byte	0xc8
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"RXFA"
	.byte	0x7
	.byte	0xc9
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x7
	.byte	0xca
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"TXFA"
	.byte	0x7
	.byte	0xcb
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0x7
	.byte	0xcc
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"RXFC"
	.byte	0x7
	.byte	0xcd
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"TXFC"
	.byte	0x7
	.byte	0xce
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"reserved_18"
	.byte	0x7
	.byte	0xcf
	.uaword	0x56b
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FIFOCFG_Bits"
	.byte	0x7
	.byte	0xd0
	.uaword	0xb8d
	.uleb128 0xb
	.string	"_Ifx_I2C_GPCTL_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd3
	.uaword	0xcb8
	.uleb128 0xc
	.string	"PISEL"
	.byte	0x7
	.byte	0xd5
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x7
	.byte	0xd6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_GPCTL_Bits"
	.byte	0x7
	.byte	0xd7
	.uaword	0xc7b
	.uleb128 0xb
	.string	"_Ifx_I2C_ICR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xda
	.uaword	0xd38
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0x7
	.byte	0xdc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0x7
	.byte	0xdd
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF17
	.byte	0x7
	.byte	0xde
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0x7
	.byte	0xdf
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x7
	.byte	0xe0
	.uaword	0x56b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ICR_Bits"
	.byte	0x7
	.byte	0xe1
	.uaword	0xcd2
	.uleb128 0xb
	.string	"_Ifx_I2C_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe4
	.uaword	0xd9b
	.uleb128 0xc
	.string	"MOD_REV"
	.byte	0x7
	.byte	0xe6
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0x7
	.byte	0xe7
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x7
	.byte	0xe8
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ID_Bits"
	.byte	0x7
	.byte	0xe9
	.uaword	0xd50
	.uleb128 0xb
	.string	"_Ifx_I2C_IMSC_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xec
	.uaword	0xe37
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0x7
	.byte	0xee
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0x7
	.byte	0xef
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF17
	.byte	0x7
	.byte	0xf0
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0x7
	.byte	0xf1
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF20
	.byte	0x7
	.byte	0xf2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0x7
	.byte	0xf3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.byte	0xf4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_IMSC_Bits"
	.byte	0x7
	.byte	0xf5
	.uaword	0xdb2
	.uleb128 0xb
	.string	"_Ifx_I2C_ISR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf8
	.uaword	0xed5
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0x7
	.byte	0xfa
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0x7
	.byte	0xfb
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF17
	.byte	0x7
	.byte	0xfc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0x7
	.byte	0xfd
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF20
	.byte	0x7
	.byte	0xfe
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0x7
	.byte	0xff
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x100
	.uaword	0x56b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ISR_Bits"
	.byte	0x7
	.uahalf	0x101
	.uaword	0xe50
	.uleb128 0x10
	.string	"_Ifx_I2C_KRST0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x104
	.uaword	0xf40
	.uleb128 0x11
	.string	"RST"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x107
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x108
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_KRST0_Bits"
	.byte	0x7
	.uahalf	0x109
	.uaword	0xeee
	.uleb128 0x10
	.string	"_Ifx_I2C_KRST1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10c
	.uaword	0xf99
	.uleb128 0x11
	.string	"RST"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_KRST1_Bits"
	.byte	0x7
	.uahalf	0x110
	.uaword	0xf5b
	.uleb128 0x10
	.string	"_Ifx_I2C_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x113
	.uaword	0xff4
	.uleb128 0x11
	.string	"CLR"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x116
	.uaword	0x56b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_KRSTCLR_Bits"
	.byte	0x7
	.uahalf	0x117
	.uaword	0xfb4
	.uleb128 0x10
	.string	"_Ifx_I2C_MIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x109d
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x120
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x121
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x122
	.uaword	0x56b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_MIS_Bits"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x1011
	.uleb128 0x10
	.string	"_Ifx_I2C_MODID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x126
	.uaword	0x110d
	.uleb128 0x11
	.string	"MOD_REV"
	.byte	0x7
	.uahalf	0x128
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"MOD_TYPE"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_MODID_Bits"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x10b6
	.uleb128 0x10
	.string	"_Ifx_I2C_MRPSCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x116a
	.uleb128 0x11
	.string	"MRPS"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x56b
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x131
	.uaword	0x56b
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_MRPSCTRL_Bits"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x1128
	.uleb128 0x10
	.string	"_Ifx_I2C_PIRQSC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1223
	.uleb128 0x11
	.string	"AM"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"GC"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"MC"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"AL"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"NACK"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"RX"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x56b
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_PIRQSC_Bits"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x1188
	.uleb128 0x10
	.string	"_Ifx_I2C_PIRQSM_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x142
	.uaword	0x12da
	.uleb128 0x11
	.string	"AM"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"GC"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"MC"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"AL"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"NACK"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x149
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"RX"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x56b
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_PIRQSM_Bits"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x123f
	.uleb128 0x10
	.string	"_Ifx_I2C_PIRQSS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1391
	.uleb128 0x11
	.string	"AM"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"GC"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"MC"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"AL"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"NACK"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x156
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"RX"
	.byte	0x7
	.uahalf	0x157
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x158
	.uaword	0x56b
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_PIRQSS_Bits"
	.byte	0x7
	.uahalf	0x159
	.uaword	0x12f6
	.uleb128 0x10
	.string	"_Ifx_I2C_RIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x1439
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x160
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x161
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x162
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x163
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x164
	.uaword	0x56b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RIS_Bits"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x13ad
	.uleb128 0x10
	.string	"_Ifx_I2C_RPSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x168
	.uaword	0x1492
	.uleb128 0x11
	.string	"RPS"
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x56b
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x56b
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RPSSTAT_Bits"
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x1452
	.uleb128 0x10
	.string	"_Ifx_I2C_RUNCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x14ef
	.uleb128 0x11
	.string	"RUN"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x172
	.uaword	0x56b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RUNCTRL_Bits"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x14af
	.uleb128 0x10
	.string	"_Ifx_I2C_RXD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x176
	.uaword	0x1538
	.uleb128 0x11
	.string	"RXD"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x56b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RXD_Bits"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x150c
	.uleb128 0x10
	.string	"_Ifx_I2C_TIMCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x164d
	.uleb128 0x11
	.string	"SDA_DEL_HD_DAT"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x56b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"HS_SDA_DEL_HD_DAT"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.string	"SCL_DEL_HD_STA"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x181
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"EN_SCL_LOW_LEN"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"FS_SCL_LOW"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"HS_SDA_DEL"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.string	"reserved_19"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"SCL_LOW_LEN"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_TIMCFG_Bits"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x1551
	.uleb128 0x10
	.string	"_Ifx_I2C_TPSCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x16a9
	.uleb128 0x11
	.string	"TPS"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x56b
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x56b
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_TPSCTRL_Bits"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x1669
	.uleb128 0x10
	.string	"_Ifx_I2C_TXD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x191
	.uaword	0x16f2
	.uleb128 0x11
	.string	"TXD"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x56b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_TXD_Bits"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x16c6
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x1733
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x57b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ACCEN0"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x170b
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x1772
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1a6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x5c3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ACCEN1"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x174a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x17b1
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x68f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ADDRCFG"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x1789
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x17f1
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x6f6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_BUSSTAT"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x17c9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1831
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x81e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_CLC"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x1809
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x186d
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x7bb
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_CLC1"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x1845
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x18aa
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x889
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ENDDCTRL"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x1882
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x18eb
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x911
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ERRIRQSC"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x18c3
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x192c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x999
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ERRIRQSM"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x1904
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x196d
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0xa21
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ERRIRQSS"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x1945
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x19ae
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0xa99
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_FDIVCFG"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x1986
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x19ee
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0xb14
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_FDIVHIGHCFG"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x19c6
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x1a32
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x200
	.uaword	0xb71
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_FFSSTAT"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x1a0a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x204
	.uaword	0x1a72
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x208
	.uaword	0xc5f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_FIFOCFG"
	.byte	0x7
	.uahalf	0x209
	.uaword	0x1a4a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x1ab2
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x210
	.uaword	0xcb8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_GPCTL"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x1a8a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1af0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x218
	.uaword	0xd38
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ICR"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1ac8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x1b2c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x220
	.uaword	0xd9b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ID"
	.byte	0x7
	.uahalf	0x221
	.uaword	0x1b04
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x224
	.uaword	0x1b67
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x228
	.uaword	0xe37
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_IMSC"
	.byte	0x7
	.uahalf	0x229
	.uaword	0x1b3f
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x1ba4
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x230
	.uaword	0xed5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_ISR"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x1b7c
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x234
	.uaword	0x1be0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x238
	.uaword	0xf40
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_KRST0"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1bb8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x23c
	.uaword	0x1c1e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x240
	.uaword	0xf99
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_KRST1"
	.byte	0x7
	.uahalf	0x241
	.uaword	0x1bf6
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x244
	.uaword	0x1c5c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x247
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x248
	.uaword	0xff4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_KRSTCLR"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x1c34
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x1c9c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x109d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_MIS"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x1c74
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x254
	.uaword	0x1cd8
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x110d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_MODID"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x1cb0
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x1d16
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x116a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_MRPSCTRL"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x1cee
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x264
	.uaword	0x1d57
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x268
	.uaword	0x1223
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_PIRQSC"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x1d2f
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x1d96
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x270
	.uaword	0x12da
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_PIRQSM"
	.byte	0x7
	.uahalf	0x271
	.uaword	0x1d6e
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x274
	.uaword	0x1dd5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x1391
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_PIRQSS"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x1dad
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x1e14
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x1439
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RIS"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1dec
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x284
	.uaword	0x1e50
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x1492
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RPSSTAT"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x1e28
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x1e90
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x14ef
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RUNCTRL"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x1e68
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x294
	.uaword	0x1ed0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x1538
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_RXD"
	.byte	0x7
	.uahalf	0x299
	.uaword	0x1ea8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x1f0c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x164d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_TIMCFG"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1ee4
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1f4b
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x16a9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_TPSCTRL"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x1f23
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x1f8b
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x16f2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C_TXD"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x1f63
	.uleb128 0x14
	.string	"_Ifx_I2C"
	.uaword	0x10100
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x22bb
	.uleb128 0x15
	.string	"CLC1"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x186d
	.byte	0
	.uleb128 0x16
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x22bb
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x1b2c
	.byte	0x8
	.uleb128 0x16
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x22bb
	.byte	0xc
	.uleb128 0x15
	.string	"RUNCTRL"
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x1e90
	.byte	0x10
	.uleb128 0x15
	.string	"ENDDCTRL"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x18aa
	.byte	0x14
	.uleb128 0x15
	.string	"FDIVCFG"
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x19ae
	.byte	0x18
	.uleb128 0x15
	.string	"FDIVHIGHCFG"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x19ee
	.byte	0x1c
	.uleb128 0x15
	.string	"ADDRCFG"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x17b1
	.byte	0x20
	.uleb128 0x15
	.string	"BUSSTAT"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x17f1
	.byte	0x24
	.uleb128 0x15
	.string	"FIFOCFG"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x1a72
	.byte	0x28
	.uleb128 0x15
	.string	"MRPSCTRL"
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0x1d16
	.byte	0x2c
	.uleb128 0x15
	.string	"RPSSTAT"
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x1e50
	.byte	0x30
	.uleb128 0x15
	.string	"TPSCTRL"
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x1f4b
	.byte	0x34
	.uleb128 0x15
	.string	"FFSSTAT"
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1a32
	.byte	0x38
	.uleb128 0x15
	.string	"reserved_3C"
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x22bb
	.byte	0x3c
	.uleb128 0x15
	.string	"TIMCFG"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x1f0c
	.byte	0x40
	.uleb128 0x15
	.string	"reserved_44"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x22d7
	.byte	0x44
	.uleb128 0x15
	.string	"ERRIRQSM"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x192c
	.byte	0x60
	.uleb128 0x15
	.string	"ERRIRQSS"
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x196d
	.byte	0x64
	.uleb128 0x15
	.string	"ERRIRQSC"
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x18eb
	.byte	0x68
	.uleb128 0x15
	.string	"reserved_6C"
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x22bb
	.byte	0x6c
	.uleb128 0x15
	.string	"PIRQSM"
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x1d96
	.byte	0x70
	.uleb128 0x15
	.string	"PIRQSS"
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x1dd5
	.byte	0x74
	.uleb128 0x15
	.string	"PIRQSC"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x1d57
	.byte	0x78
	.uleb128 0x15
	.string	"reserved_7C"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x22bb
	.byte	0x7c
	.uleb128 0x15
	.string	"RIS"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x1e14
	.byte	0x80
	.uleb128 0x15
	.string	"IMSC"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x1b67
	.byte	0x84
	.uleb128 0x15
	.string	"MIS"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x1c9c
	.byte	0x88
	.uleb128 0x15
	.string	"ICR"
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x1af0
	.byte	0x8c
	.uleb128 0x15
	.string	"ISR"
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x1ba4
	.byte	0x90
	.uleb128 0x15
	.string	"reserved_94"
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x22e7
	.byte	0x94
	.uleb128 0x17
	.string	"TXD"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x1f8b
	.uahalf	0x8000
	.uleb128 0x17
	.string	"reserved_8004"
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x22f8
	.uahalf	0x8004
	.uleb128 0x17
	.string	"RXD"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x1ed0
	.uahalf	0xc000
	.uleb128 0x17
	.string	"reserved_C004"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x22f8
	.uahalf	0xc004
	.uleb128 0x18
	.string	"CLC"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x1831
	.uleb128 0x10000
	.uleb128 0x18
	.string	"MODID"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1cd8
	.uleb128 0x10004
	.uleb128 0x18
	.string	"GPCTL"
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x1ab2
	.uleb128 0x10008
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x1733
	.uleb128 0x1000c
	.uleb128 0x18
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x1772
	.uleb128 0x10010
	.uleb128 0x18
	.string	"KRST0"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x1be0
	.uleb128 0x10014
	.uleb128 0x18
	.string	"KRST1"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x1c1e
	.uleb128 0x10018
	.uleb128 0x18
	.string	"KRSTCLR"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x1c5c
	.uleb128 0x1001c
	.uleb128 0x18
	.string	"reserved_10020"
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x2309
	.uleb128 0x10020
	.byte	0
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x22cb
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x22e7
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0x1b
	.byte	0
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x22f8
	.uleb128 0x1b
	.uaword	0x22cb
	.uahalf	0x7f6b
	.byte	0
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x2309
	.uleb128 0x1b
	.uaword	0x22cb
	.uahalf	0x3ffb
	.byte	0
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x2319
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0xdf
	.byte	0
	.uleb128 0xf
	.string	"Ifx_I2C"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x2329
	.uleb128 0x1c
	.uaword	0x1f9f
	.uleb128 0x1c
	.uaword	0x56b
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x2343
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x2353
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x176
	.uaword	0x23c8
	.uleb128 0x11
	.string	"CCPN"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x232e
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x179
	.uaword	0x232e
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"IE"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x232e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"PIPN"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x232e
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.string	"reserved_26"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x232e
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x2353
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x3df
	.uaword	0x2409
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x3e1
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0x23c8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_CPU_ICR"
	.byte	0x8
	.uahalf	0x3e4
	.uaword	0x23e1
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x242d
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0x263f
	.uleb128 0xc
	.string	"EN0"
	.byte	0x9
	.byte	0x2f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x9
	.byte	0x30
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x9
	.byte	0x31
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x9
	.byte	0x32
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x9
	.byte	0x33
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x9
	.byte	0x34
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x9
	.byte	0x35
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x9
	.byte	0x36
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x9
	.byte	0x37
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x9
	.byte	0x38
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x9
	.byte	0x39
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x9
	.byte	0x3a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x9
	.byte	0x3b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x9
	.byte	0x3c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x9
	.byte	0x3d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x9
	.byte	0x3e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x9
	.byte	0x3f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x9
	.byte	0x40
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x9
	.byte	0x41
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x9
	.byte	0x42
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x9
	.byte	0x43
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x9
	.byte	0x44
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x9
	.byte	0x45
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x9
	.byte	0x46
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x9
	.byte	0x47
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x9
	.byte	0x48
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x9
	.byte	0x49
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x9
	.byte	0x4a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x9
	.byte	0x4b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x9
	.byte	0x4c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x9
	.byte	0x4d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x9
	.byte	0x4e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x9
	.byte	0x4f
	.uaword	0x242d
	.uleb128 0xb
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x52
	.uaword	0x2683
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0x54
	.uaword	0x56b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x9
	.byte	0x55
	.uaword	0x2658
	.uleb128 0xb
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.uaword	0x27ba
	.uleb128 0xc
	.string	"EN0"
	.byte	0x9
	.byte	0x5a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x9
	.byte	0x5b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x9
	.byte	0x5c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x9
	.byte	0x5d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x9
	.byte	0x5e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x9
	.byte	0x5f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x9
	.byte	0x60
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x9
	.byte	0x61
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x9
	.byte	0x62
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x9
	.byte	0x63
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x9
	.byte	0x64
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x9
	.byte	0x65
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x9
	.byte	0x66
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x9
	.byte	0x67
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x9
	.byte	0x68
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x9
	.byte	0x69
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0x6a
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x9
	.byte	0x6b
	.uaword	0x269c
	.uleb128 0xb
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x6e
	.uaword	0x281c
	.uleb128 0xc
	.string	"MODREV"
	.byte	0x9
	.byte	0x70
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MODTYPE"
	.byte	0x9
	.byte	0x71
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0x9
	.byte	0x72
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x9
	.byte	0x73
	.uaword	0x27d0
	.uleb128 0xb
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x76
	.uaword	0x293e
	.uleb128 0xc
	.string	"P0"
	.byte	0x9
	.byte	0x78
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"P1"
	.byte	0x9
	.byte	0x79
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"P2"
	.byte	0x9
	.byte	0x7a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"P3"
	.byte	0x9
	.byte	0x7b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"P4"
	.byte	0x9
	.byte	0x7c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"P5"
	.byte	0x9
	.byte	0x7d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"P6"
	.byte	0x9
	.byte	0x7e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"P7"
	.byte	0x9
	.byte	0x7f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"P8"
	.byte	0x9
	.byte	0x80
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"P9"
	.byte	0x9
	.byte	0x81
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"P10"
	.byte	0x9
	.byte	0x82
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"P11"
	.byte	0x9
	.byte	0x83
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"P12"
	.byte	0x9
	.byte	0x84
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"P13"
	.byte	0x9
	.byte	0x85
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"P14"
	.byte	0x9
	.byte	0x86
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"P15"
	.byte	0x9
	.byte	0x87
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0x88
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x9
	.byte	0x89
	.uaword	0x2831
	.uleb128 0xb
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x8c
	.uaword	0x29e6
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0x8e
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC0"
	.byte	0x9
	.byte	0x8f
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0x9
	.byte	0x90
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC1"
	.byte	0x9
	.byte	0x91
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0x92
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC2"
	.byte	0x9
	.byte	0x93
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x9
	.byte	0x94
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC3"
	.byte	0x9
	.byte	0x95
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x9
	.byte	0x96
	.uaword	0x2953
	.uleb128 0xb
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x99
	.uaword	0x2a96
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0x9b
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC12"
	.byte	0x9
	.byte	0x9c
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0x9
	.byte	0x9d
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC13"
	.byte	0x9
	.byte	0x9e
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0x9f
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC14"
	.byte	0x9
	.byte	0xa0
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x9
	.byte	0xa1
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC15"
	.byte	0x9
	.byte	0xa2
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x9
	.byte	0xa3
	.uaword	0x29fe
	.uleb128 0xb
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.uaword	0x2b42
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xa8
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC4"
	.byte	0x9
	.byte	0xa9
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0x9
	.byte	0xaa
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC5"
	.byte	0x9
	.byte	0xab
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0xac
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC6"
	.byte	0x9
	.byte	0xad
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x9
	.byte	0xae
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC7"
	.byte	0x9
	.byte	0xaf
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x9
	.byte	0xb0
	.uaword	0x2aaf
	.uleb128 0xb
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb3
	.uaword	0x2bef
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xb5
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC8"
	.byte	0x9
	.byte	0xb6
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0x9
	.byte	0xb7
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC9"
	.byte	0x9
	.byte	0xb8
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0xb9
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC10"
	.byte	0x9
	.byte	0xba
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x9
	.byte	0xbb
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC11"
	.byte	0x9
	.byte	0xbc
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x9
	.byte	0xbd
	.uaword	0x2b5a
	.uleb128 0xb
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x2c4f
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xc2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0x9
	.byte	0xc3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x9
	.byte	0xc4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x9
	.byte	0xc5
	.uaword	0x2c07
	.uleb128 0xb
	.string	"_Ifx_P_LPCR0_P21_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc8
	.uaword	0x2cd9
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0x9
	.byte	0xca
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RX_DIS"
	.byte	0x9
	.byte	0xcb
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"TERM"
	.byte	0x9
	.byte	0xcc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"LRXTERM"
	.byte	0x9
	.byte	0xcd
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0x9
	.byte	0xce
	.uaword	0x56b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_P21_Bits"
	.byte	0x9
	.byte	0xcf
	.uaword	0x2c67
	.uleb128 0xb
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd2
	.uaword	0x2d3d
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xd4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0x9
	.byte	0xd5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x9
	.byte	0xd6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x9
	.byte	0xd7
	.uaword	0x2cf5
	.uleb128 0xb
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xda
	.uaword	0x2dc7
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0x9
	.byte	0xdc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RX_DIS"
	.byte	0x9
	.byte	0xdd
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"TERM"
	.byte	0x9
	.byte	0xde
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"LRXTERM"
	.byte	0x9
	.byte	0xdf
	.uaword	0x56b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0x9
	.byte	0xe0
	.uaword	0x56b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x9
	.byte	0xe1
	.uaword	0x2d55
	.uleb128 0xb
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xe4
	.uaword	0x2e2b
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xe6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0x9
	.byte	0xe7
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x9
	.byte	0xe8
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x9
	.byte	0xe9
	.uaword	0x2de3
	.uleb128 0xb
	.string	"_Ifx_P_LPCR2_P21_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xec
	.uaword	0x2efe
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xee
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"LVDSR"
	.byte	0x9
	.byte	0xef
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"LVDSRL"
	.byte	0x9
	.byte	0xf0
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x9
	.byte	0xf1
	.uaword	0x56b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"TDIS_CTRL"
	.byte	0x9
	.byte	0xf2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"TX_DIS"
	.byte	0x9
	.byte	0xf3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"TX_PD"
	.byte	0x9
	.byte	0xf4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"TX_PWDPD"
	.byte	0x9
	.byte	0xf5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x9
	.byte	0xf6
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_P21_Bits"
	.byte	0x9
	.byte	0xf7
	.uaword	0x2e43
	.uleb128 0xb
	.string	"_Ifx_P_LPCR3_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xfa
	.uaword	0x2f62
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x9
	.byte	0xfc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0x9
	.byte	0xfd
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x9
	.byte	0xfe
	.uaword	0x56b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR3_Bits"
	.byte	0x9
	.byte	0xff
	.uaword	0x2f1a
	.uleb128 0x10
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x102
	.uaword	0x2ffa
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x104
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x105
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x106
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x107
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x108
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0x9
	.uahalf	0x109
	.uaword	0x56b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0x2f7a
	.uleb128 0x10
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x3088
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x10f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x113
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x3013
	.uleb128 0x10
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x117
	.uaword	0x3122
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x119
	.uaword	0x56b
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x30a2
	.uleb128 0x10
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x122
	.uaword	0x31bd
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x124
	.uaword	0x56b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x125
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x126
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x127
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x128
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0x9
	.uahalf	0x129
	.uaword	0x56b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x9
	.uahalf	0x12a
	.uaword	0x313b
	.uleb128 0x10
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x3317
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x130
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x131
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x132
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x136
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x137
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x139
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x31d6
	.uleb128 0x10
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x143
	.uaword	0x3565
	.uleb128 0x11
	.string	"PS0"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"PS1"
	.byte	0x9
	.uahalf	0x146
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"PS2"
	.byte	0x9
	.uahalf	0x147
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"PS3"
	.byte	0x9
	.uahalf	0x148
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"PS4"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.string	"PS5"
	.byte	0x9
	.uahalf	0x14a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"PS6"
	.byte	0x9
	.uahalf	0x14b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"PS7"
	.byte	0x9
	.uahalf	0x14c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"PS8"
	.byte	0x9
	.uahalf	0x14d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.string	"PS9"
	.byte	0x9
	.uahalf	0x14e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"PS10"
	.byte	0x9
	.uahalf	0x14f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"PS11"
	.byte	0x9
	.uahalf	0x150
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"PS12"
	.byte	0x9
	.uahalf	0x151
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.string	"PS13"
	.byte	0x9
	.uahalf	0x152
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"PS14"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"PS15"
	.byte	0x9
	.uahalf	0x154
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x155
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x156
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x158
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x160
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x161
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x163
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x164
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMR_Bits"
	.byte	0x9
	.uahalf	0x165
	.uaword	0x332f
	.uleb128 0x10
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x168
	.uaword	0x35e8
	.uleb128 0x11
	.string	"PS0"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"PS1"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"PS2"
	.byte	0x9
	.uahalf	0x16c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"PS3"
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x9
	.uahalf	0x16f
	.uaword	0x357c
	.uleb128 0x10
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x172
	.uaword	0x3682
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x174
	.uaword	0x56b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"PS12"
	.byte	0x9
	.uahalf	0x175
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.string	"PS13"
	.byte	0x9
	.uahalf	0x176
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"PS14"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"PS15"
	.byte	0x9
	.uahalf	0x178
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x179
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x9
	.uahalf	0x17a
	.uaword	0x3601
	.uleb128 0x10
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x3718
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x56b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"PS4"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.string	"PS5"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"PS6"
	.byte	0x9
	.uahalf	0x182
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"PS7"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF27
	.byte	0x9
	.uahalf	0x184
	.uaword	0x56b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x369c
	.uleb128 0x10
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x188
	.uaword	0x37af
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x56b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"PS8"
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.string	"PS9"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"PS10"
	.byte	0x9
	.uahalf	0x18d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"PS11"
	.byte	0x9
	.uahalf	0x18e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x56b
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x9
	.uahalf	0x190
	.uaword	0x3731
	.uleb128 0x10
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x193
	.uaword	0x38f9
	.uleb128 0x11
	.string	"PS0"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"PS1"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"PS2"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"PS3"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"PS4"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.string	"PS5"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"PS6"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"PS7"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"PS8"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.string	"PS9"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"PS10"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"PS11"
	.byte	0x9
	.uahalf	0x1a0
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"PS12"
	.byte	0x9
	.uahalf	0x1a1
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.string	"PS13"
	.byte	0x9
	.uahalf	0x1a2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"PS14"
	.byte	0x9
	.uahalf	0x1a3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"PS15"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x1a5
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x9
	.uahalf	0x1a6
	.uaword	0x37c8
	.uleb128 0x10
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x3a31
	.uleb128 0x11
	.string	"P0"
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"P1"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"P2"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"P3"
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"P4"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.string	"P5"
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"P6"
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"P7"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"P8"
	.byte	0x9
	.uahalf	0x1b3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.string	"P9"
	.byte	0x9
	.uahalf	0x1b4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"P10"
	.byte	0x9
	.uahalf	0x1b5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"P11"
	.byte	0x9
	.uahalf	0x1b6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"P12"
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.string	"P13"
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"P14"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"P15"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OUT_Bits"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x3911
	.uleb128 0x10
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x3b2e
	.uleb128 0x11
	.string	"SEL0"
	.byte	0x9
	.uahalf	0x1c1
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"SEL1"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"SEL2"
	.byte	0x9
	.uahalf	0x1c3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"SEL3"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"SEL4"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.string	"SEL5"
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"SEL6"
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"SEL10"
	.byte	0x9
	.uahalf	0x1c9
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"SEL11"
	.byte	0x9
	.uahalf	0x1ca
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x1cb
	.uaword	0x56b
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"LCK"
	.byte	0x9
	.uahalf	0x1cc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x9
	.uahalf	0x1cd
	.uaword	0x3a48
	.uleb128 0x10
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1d0
	.uaword	0x3c98
	.uleb128 0x11
	.string	"PDIS0"
	.byte	0x9
	.uahalf	0x1d2
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"PDIS1"
	.byte	0x9
	.uahalf	0x1d3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"PDIS2"
	.byte	0x9
	.uahalf	0x1d4
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"PDIS3"
	.byte	0x9
	.uahalf	0x1d5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"PDIS4"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.string	"PDIS5"
	.byte	0x9
	.uahalf	0x1d7
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.string	"PDIS6"
	.byte	0x9
	.uahalf	0x1d8
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"PDIS7"
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"PDIS8"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.string	"PDIS9"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"PDIS10"
	.byte	0x9
	.uahalf	0x1dc
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"PDIS11"
	.byte	0x9
	.uahalf	0x1dd
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"PDIS12"
	.byte	0x9
	.uahalf	0x1de
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.string	"PDIS13"
	.byte	0x9
	.uahalf	0x1df
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"PDIS14"
	.byte	0x9
	.uahalf	0x1e0
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"PDIS15"
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x1e2
	.uaword	0x56b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0x3b46
	.uleb128 0x10
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x3dcc
	.uleb128 0x11
	.string	"PD0"
	.byte	0x9
	.uahalf	0x1e8
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"PL0"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"PD1"
	.byte	0x9
	.uahalf	0x1ea
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"PL1"
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"PD2"
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"PL2"
	.byte	0x9
	.uahalf	0x1ed
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"PD3"
	.byte	0x9
	.uahalf	0x1ee
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"PL3"
	.byte	0x9
	.uahalf	0x1ef
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"PD4"
	.byte	0x9
	.uahalf	0x1f0
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.string	"PL4"
	.byte	0x9
	.uahalf	0x1f1
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"PD5"
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.string	"PL5"
	.byte	0x9
	.uahalf	0x1f3
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"PD6"
	.byte	0x9
	.uahalf	0x1f4
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.string	"PL6"
	.byte	0x9
	.uahalf	0x1f5
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"PD7"
	.byte	0x9
	.uahalf	0x1f6
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"PL7"
	.byte	0x9
	.uahalf	0x1f7
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x9
	.uahalf	0x1f8
	.uaword	0x3cb1
	.uleb128 0x10
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0x3f0b
	.uleb128 0x11
	.string	"PD8"
	.byte	0x9
	.uahalf	0x1fd
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"PL8"
	.byte	0x9
	.uahalf	0x1fe
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.string	"PD9"
	.byte	0x9
	.uahalf	0x1ff
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.string	"PL9"
	.byte	0x9
	.uahalf	0x200
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"PD10"
	.byte	0x9
	.uahalf	0x201
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.string	"PL10"
	.byte	0x9
	.uahalf	0x202
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"PD11"
	.byte	0x9
	.uahalf	0x203
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"PL11"
	.byte	0x9
	.uahalf	0x204
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"PD12"
	.byte	0x9
	.uahalf	0x205
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.string	"PL12"
	.byte	0x9
	.uahalf	0x206
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"PD13"
	.byte	0x9
	.uahalf	0x207
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.string	"PL13"
	.byte	0x9
	.uahalf	0x208
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"PD14"
	.byte	0x9
	.uahalf	0x209
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.string	"PL14"
	.byte	0x9
	.uahalf	0x20a
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"PD15"
	.byte	0x9
	.uahalf	0x20b
	.uaword	0x56b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"PL15"
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x56b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x9
	.uahalf	0x20d
	.uaword	0x3de4
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x215
	.uaword	0x3f4b
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x217
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x218
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x219
	.uaword	0x263f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ACCEN0"
	.byte	0x9
	.uahalf	0x21a
	.uaword	0x3f23
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x21d
	.uaword	0x3f88
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x21f
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x220
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x221
	.uaword	0x2683
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ACCEN1"
	.byte	0x9
	.uahalf	0x222
	.uaword	0x3f60
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x225
	.uaword	0x3fc5
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x227
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x228
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x229
	.uaword	0x27ba
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ESR"
	.byte	0x9
	.uahalf	0x22a
	.uaword	0x3f9d
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x22d
	.uaword	0x3fff
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x22f
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x230
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x231
	.uaword	0x281c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ID"
	.byte	0x9
	.uahalf	0x232
	.uaword	0x3fd7
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x235
	.uaword	0x4038
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x238
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x239
	.uaword	0x293e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IN"
	.byte	0x9
	.uahalf	0x23a
	.uaword	0x4010
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x23d
	.uaword	0x4071
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x23f
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x240
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x241
	.uaword	0x29e6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR0"
	.byte	0x9
	.uahalf	0x242
	.uaword	0x4049
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x245
	.uaword	0x40ad
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x247
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x248
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x249
	.uaword	0x2a96
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR12"
	.byte	0x9
	.uahalf	0x24a
	.uaword	0x4085
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x24d
	.uaword	0x40ea
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x24f
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x250
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x251
	.uaword	0x2b42
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR4"
	.byte	0x9
	.uahalf	0x252
	.uaword	0x40c2
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x255
	.uaword	0x4126
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x257
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x258
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x259
	.uaword	0x2bef
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR8"
	.byte	0x9
	.uahalf	0x25a
	.uaword	0x40fe
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x25d
	.uaword	0x4170
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x25f
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x260
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x261
	.uaword	0x2c4f
	.uleb128 0x13
	.string	"B_P21"
	.byte	0x9
	.uahalf	0x262
	.uaword	0x2cd9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR0"
	.byte	0x9
	.uahalf	0x263
	.uaword	0x413a
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x266
	.uaword	0x41ba
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x268
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x269
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x26a
	.uaword	0x2d3d
	.uleb128 0x13
	.string	"B_P21"
	.byte	0x9
	.uahalf	0x26b
	.uaword	0x2dc7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR1"
	.byte	0x9
	.uahalf	0x26c
	.uaword	0x4184
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x26f
	.uaword	0x4204
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x271
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x272
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x273
	.uaword	0x2e2b
	.uleb128 0x13
	.string	"B_P21"
	.byte	0x9
	.uahalf	0x274
	.uaword	0x2efe
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR2"
	.byte	0x9
	.uahalf	0x275
	.uaword	0x41ce
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x278
	.uaword	0x4240
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x27a
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x27b
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x27c
	.uaword	0x2f62
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR3"
	.byte	0x9
	.uahalf	0x27d
	.uaword	0x4218
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x280
	.uaword	0x427c
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x282
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x283
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x284
	.uaword	0x3317
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR"
	.byte	0x9
	.uahalf	0x285
	.uaword	0x4254
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x288
	.uaword	0x42b7
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x28a
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x28b
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x28c
	.uaword	0x2ffa
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR0"
	.byte	0x9
	.uahalf	0x28d
	.uaword	0x428f
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x290
	.uaword	0x42f3
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x292
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x293
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x294
	.uaword	0x3088
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR12"
	.byte	0x9
	.uahalf	0x295
	.uaword	0x42cb
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x298
	.uaword	0x4330
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x29a
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x29b
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x29c
	.uaword	0x3122
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR4"
	.byte	0x9
	.uahalf	0x29d
	.uaword	0x4308
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a0
	.uaword	0x436c
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2a2
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2a4
	.uaword	0x31bd
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR8"
	.byte	0x9
	.uahalf	0x2a5
	.uaword	0x4344
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a8
	.uaword	0x43a8
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2aa
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2ab
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2ac
	.uaword	0x3565
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMR"
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0x4380
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2b0
	.uaword	0x43e2
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2b2
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2b3
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2b4
	.uaword	0x38f9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR"
	.byte	0x9
	.uahalf	0x2b5
	.uaword	0x43ba
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2b8
	.uaword	0x441d
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2ba
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2bc
	.uaword	0x35e8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR0"
	.byte	0x9
	.uahalf	0x2bd
	.uaword	0x43f5
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2c0
	.uaword	0x4459
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2c2
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2c3
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2c4
	.uaword	0x3682
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR12"
	.byte	0x9
	.uahalf	0x2c5
	.uaword	0x4431
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2c8
	.uaword	0x4496
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2ca
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2cb
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2cc
	.uaword	0x3718
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR4"
	.byte	0x9
	.uahalf	0x2cd
	.uaword	0x446e
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2d0
	.uaword	0x44d2
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2d2
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2d3
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0x37af
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR8"
	.byte	0x9
	.uahalf	0x2d5
	.uaword	0x44aa
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2d8
	.uaword	0x450e
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2da
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2db
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0x3a31
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OUT"
	.byte	0x9
	.uahalf	0x2dd
	.uaword	0x44e6
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2e0
	.uaword	0x4548
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2e2
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2e3
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2e4
	.uaword	0x3b2e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PCSR"
	.byte	0x9
	.uahalf	0x2e5
	.uaword	0x4520
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2e8
	.uaword	0x4583
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2ea
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2eb
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x3c98
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDISC"
	.byte	0x9
	.uahalf	0x2ed
	.uaword	0x455b
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x45bf
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2f2
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2f3
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0x3dcc
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR0"
	.byte	0x9
	.uahalf	0x2f5
	.uaword	0x4597
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x2f8
	.uaword	0x45fa
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x2fa
	.uaword	0x56b
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x2fb
	.uaword	0x193
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x2fc
	.uaword	0x3f0b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR1"
	.byte	0x9
	.uahalf	0x2fd
	.uaword	0x45d2
	.uleb128 0x1d
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x9
	.uahalf	0x308
	.uaword	0x4856
	.uleb128 0x15
	.string	"OUT"
	.byte	0x9
	.uahalf	0x30a
	.uaword	0x450e
	.byte	0
	.uleb128 0x15
	.string	"OMR"
	.byte	0x9
	.uahalf	0x30b
	.uaword	0x43a8
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x9
	.uahalf	0x30c
	.uaword	0x3fff
	.byte	0x8
	.uleb128 0x16
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x30d
	.uaword	0x22bb
	.byte	0xc
	.uleb128 0x15
	.string	"IOCR0"
	.byte	0x9
	.uahalf	0x30e
	.uaword	0x4071
	.byte	0x10
	.uleb128 0x15
	.string	"IOCR4"
	.byte	0x9
	.uahalf	0x30f
	.uaword	0x40ea
	.byte	0x14
	.uleb128 0x15
	.string	"IOCR8"
	.byte	0x9
	.uahalf	0x310
	.uaword	0x4126
	.byte	0x18
	.uleb128 0x15
	.string	"IOCR12"
	.byte	0x9
	.uahalf	0x311
	.uaword	0x40ad
	.byte	0x1c
	.uleb128 0x16
	.uaword	.LASF29
	.byte	0x9
	.uahalf	0x312
	.uaword	0x22bb
	.byte	0x20
	.uleb128 0x15
	.string	"IN"
	.byte	0x9
	.uahalf	0x313
	.uaword	0x4038
	.byte	0x24
	.uleb128 0x16
	.uaword	.LASF30
	.byte	0x9
	.uahalf	0x314
	.uaword	0x241d
	.byte	0x28
	.uleb128 0x15
	.string	"PDR0"
	.byte	0x9
	.uahalf	0x315
	.uaword	0x45bf
	.byte	0x40
	.uleb128 0x15
	.string	"PDR1"
	.byte	0x9
	.uahalf	0x316
	.uaword	0x45fa
	.byte	0x44
	.uleb128 0x15
	.string	"reserved_48"
	.byte	0x9
	.uahalf	0x317
	.uaword	0x2333
	.byte	0x48
	.uleb128 0x15
	.string	"ESR"
	.byte	0x9
	.uahalf	0x318
	.uaword	0x3fc5
	.byte	0x50
	.uleb128 0x15
	.string	"reserved_54"
	.byte	0x9
	.uahalf	0x319
	.uaword	0x2343
	.byte	0x54
	.uleb128 0x15
	.string	"PDISC"
	.byte	0x9
	.uahalf	0x31a
	.uaword	0x4583
	.byte	0x60
	.uleb128 0x15
	.string	"PCSR"
	.byte	0x9
	.uahalf	0x31b
	.uaword	0x4548
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_68"
	.byte	0x9
	.uahalf	0x31c
	.uaword	0x2333
	.byte	0x68
	.uleb128 0x15
	.string	"OMSR0"
	.byte	0x9
	.uahalf	0x31d
	.uaword	0x441d
	.byte	0x70
	.uleb128 0x15
	.string	"OMSR4"
	.byte	0x9
	.uahalf	0x31e
	.uaword	0x4496
	.byte	0x74
	.uleb128 0x15
	.string	"OMSR8"
	.byte	0x9
	.uahalf	0x31f
	.uaword	0x44d2
	.byte	0x78
	.uleb128 0x15
	.string	"OMSR12"
	.byte	0x9
	.uahalf	0x320
	.uaword	0x4459
	.byte	0x7c
	.uleb128 0x15
	.string	"OMCR0"
	.byte	0x9
	.uahalf	0x321
	.uaword	0x42b7
	.byte	0x80
	.uleb128 0x15
	.string	"OMCR4"
	.byte	0x9
	.uahalf	0x322
	.uaword	0x4330
	.byte	0x84
	.uleb128 0x15
	.string	"OMCR8"
	.byte	0x9
	.uahalf	0x323
	.uaword	0x436c
	.byte	0x88
	.uleb128 0x15
	.string	"OMCR12"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x42f3
	.byte	0x8c
	.uleb128 0x15
	.string	"OMSR"
	.byte	0x9
	.uahalf	0x325
	.uaword	0x43e2
	.byte	0x90
	.uleb128 0x15
	.string	"OMCR"
	.byte	0x9
	.uahalf	0x326
	.uaword	0x427c
	.byte	0x94
	.uleb128 0x15
	.string	"reserved_98"
	.byte	0x9
	.uahalf	0x327
	.uaword	0x2333
	.byte	0x98
	.uleb128 0x15
	.string	"LPCR0"
	.byte	0x9
	.uahalf	0x328
	.uaword	0x4170
	.byte	0xa0
	.uleb128 0x15
	.string	"LPCR1"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x41ba
	.byte	0xa4
	.uleb128 0x15
	.string	"LPCR2"
	.byte	0x9
	.uahalf	0x32a
	.uaword	0x4204
	.byte	0xa8
	.uleb128 0x15
	.string	"LPCR3"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0x4240
	.byte	0xac
	.uleb128 0x15
	.string	"reserved_A4"
	.byte	0x9
	.uahalf	0x32c
	.uaword	0x4856
	.byte	0xb0
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0x3f88
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x9
	.uahalf	0x32e
	.uaword	0x3f4b
	.byte	0xfc
	.byte	0
	.uleb128 0x19
	.uaword	0x1b6
	.uaword	0x4866
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0x47
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P"
	.byte	0x9
	.uahalf	0x32f
	.uaword	0x4874
	.uleb128 0x1c
	.uaword	0x460d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4866
	.uleb128 0x6
	.byte	0x1
	.byte	0xa
	.byte	0x65
	.uaword	0x495b
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x7
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0xa
	.byte	0x6e
	.uaword	0x487f
	.uleb128 0x6
	.byte	0x1
	.byte	0xa
	.byte	0x7d
	.uaword	0x4b15
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0xa
	.byte	0x8a
	.uaword	0x4974
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0xaa
	.uaword	0x4b55
	.uleb128 0xa
	.string	"port"
	.byte	0xa
	.byte	0xac
	.uaword	0x4879
	.byte	0
	.uleb128 0xa
	.string	"pinIndex"
	.byte	0xa
	.byte	0xad
	.uaword	0x1a9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0xa
	.byte	0xae
	.uaword	0x4b2e
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x27
	.uaword	0x4ba1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0xb
	.byte	0x29
	.uaword	0x4ba1
	.byte	0
	.uleb128 0xa
	.string	"pin"
	.byte	0xb
	.byte	0x2a
	.uaword	0x4b55
	.byte	0x4
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0xb
	.byte	0x2b
	.uaword	0x309
	.byte	0xc
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0xb
	.byte	0x2c
	.uaword	0x495b
	.byte	0xd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2319
	.uleb128 0x3
	.string	"IfxI2c_Scl_InOut"
	.byte	0xb
	.byte	0x2d
	.uaword	0x4bbf
	.uleb128 0x1e
	.uaword	0x4b68
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x30
	.uaword	0x4bfd
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0xb
	.byte	0x32
	.uaword	0x4ba1
	.byte	0
	.uleb128 0xa
	.string	"pin"
	.byte	0xb
	.byte	0x33
	.uaword	0x4b55
	.byte	0x4
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0xb
	.byte	0x34
	.uaword	0x309
	.byte	0xc
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0xb
	.byte	0x35
	.uaword	0x495b
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_Sda_InOut"
	.byte	0xb
	.byte	0x36
	.uaword	0x4c15
	.uleb128 0x1e
	.uaword	0x4bc4
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x35
	.uaword	0x4c93
	.uleb128 0x7
	.string	"IfxI2c_BusStatus_idle"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxI2c_BusStatus_started"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxI2c_BusStatus_busyMaster"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxI2c_BusStatus_remoteSlave"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_BusStatus"
	.byte	0x2
	.byte	0x3a
	.uaword	0x4c1a
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x57
	.uaword	0x4e02
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_addressMatch"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_generalCall"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_masterCode"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_arbitrationLost"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_notAcknowledgeReceived"
	.sleb128 4
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_transmissionEnd"
	.sleb128 5
	.uleb128 0x7
	.string	"IfxI2c_ProtocolInterruptSource_receiveMode"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_ProtocolInterruptSource"
	.byte	0x2
	.byte	0x5f
	.uaword	0x4cab
	.uleb128 0x8
	.byte	0xc
	.byte	0x2
	.byte	0x74
	.uaword	0x4e5b
	.uleb128 0xa
	.string	"scl"
	.byte	0x2
	.byte	0x76
	.uaword	0x4e5b
	.byte	0
	.uleb128 0xa
	.string	"sda"
	.byte	0x2
	.byte	0x77
	.uaword	0x4e61
	.byte	0x4
	.uleb128 0xa
	.string	"padDriver"
	.byte	0x2
	.byte	0x78
	.uaword	0x4b15
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4ba7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4bfd
	.uleb128 0x3
	.string	"IfxI2c_Pins"
	.byte	0x2
	.byte	0x79
	.uaword	0x4e28
	.uleb128 0x1f
	.byte	0x1
	.byte	0xc
	.uahalf	0x12a
	.uaword	0x4f03
	.uleb128 0x7
	.string	"IfxI2c_I2c_Status_ok"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxI2c_I2c_Status_nak"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxI2c_I2c_Status_al"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxI2c_I2c_Status_busNotFree"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxI2c_I2c_Status_error"
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.string	"IfxI2c_I2c_Status"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x4e7a
	.uleb128 0x20
	.byte	0xc
	.byte	0xc
	.uahalf	0x13c
	.uaword	0x4f61
	.uleb128 0x15
	.string	"i2c"
	.byte	0xc
	.uahalf	0x13e
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x15
	.string	"busStatus"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x4c93
	.byte	0x4
	.uleb128 0x16
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x140
	.uaword	0x4f03
	.byte	0x5
	.uleb128 0x16
	.uaword	.LASF34
	.byte	0xc
	.uahalf	0x141
	.uaword	0x214
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"IfxI2c_I2c"
	.byte	0xc
	.uahalf	0x142
	.uaword	0x4f1d
	.uleb128 0x20
	.byte	0xc
	.byte	0xc
	.uahalf	0x146
	.uaword	0x4fa6
	.uleb128 0x15
	.string	"i2c"
	.byte	0xc
	.uahalf	0x148
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x16
	.uaword	.LASF34
	.byte	0xc
	.uahalf	0x149
	.uaword	0x214
	.byte	0x4
	.uleb128 0x15
	.string	"pins"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x4fa6
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4fac
	.uleb128 0x1e
	.uaword	0x4e67
	.uleb128 0xf
	.string	"IfxI2c_I2c_Config"
	.byte	0xc
	.uahalf	0x14b
	.uaword	0x4f74
	.uleb128 0x20
	.byte	0x8
	.byte	0xc
	.uahalf	0x14f
	.uaword	0x4fef
	.uleb128 0x15
	.string	"i2c"
	.byte	0xc
	.uahalf	0x151
	.uaword	0x4fef
	.byte	0
	.uleb128 0x16
	.uaword	.LASF35
	.byte	0xc
	.uahalf	0x152
	.uaword	0x1a9
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4f61
	.uleb128 0xf
	.string	"IfxI2c_I2c_Device"
	.byte	0xc
	.uahalf	0x153
	.uaword	0x4fcb
	.uleb128 0x20
	.byte	0x8
	.byte	0xc
	.uahalf	0x157
	.uaword	0x5033
	.uleb128 0x15
	.string	"i2c"
	.byte	0xc
	.uahalf	0x159
	.uaword	0x4fef
	.byte	0
	.uleb128 0x16
	.uaword	.LASF35
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x1a9
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"IfxI2c_I2c_deviceConfig"
	.byte	0xc
	.uahalf	0x15b
	.uaword	0x500f
	.uleb128 0x21
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x3
	.uahalf	0x275
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uaword	0x509a
	.uleb128 0x22
	.string	"reg"
	.byte	0x3
	.uahalf	0x277
	.uaword	0x2409
	.uleb128 0x23
	.uleb128 0x22
	.string	"__res"
	.byte	0x3
	.uahalf	0x278
	.uaword	0x56b
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"__nop"
	.byte	0x4
	.uahalf	0x57b
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"IfxI2c_stop"
	.byte	0x2
	.uahalf	0x37e
	.byte	0x1
	.byte	0x3
	.uaword	0x50c9
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x37e
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_run"
	.byte	0x2
	.uahalf	0x35a
	.byte	0x1
	.byte	0x3
	.uaword	0x50eb
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x35a
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x21
	.string	"IfxI2c_getBusStatus"
	.byte	0x2
	.uahalf	0x2e3
	.byte	0x1
	.uaword	0x4c93
	.byte	0x3
	.uaword	0x511a
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x2e3
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x21
	.string	"IfxI2c_busIsFree"
	.byte	0x2
	.uahalf	0x233
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uaword	0x5153
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x233
	.uaword	0x4ba1
	.uleb128 0x22
	.string	"free"
	.byte	0x2
	.uahalf	0x235
	.uaword	0x236
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearAllProtocolInterruptSources"
	.byte	0x2
	.uahalf	0x246
	.byte	0x1
	.byte	0x3
	.uaword	0x5192
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x246
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearAllErrorInterruptSources"
	.byte	0x2
	.uahalf	0x240
	.byte	0x1
	.byte	0x3
	.uaword	0x51ce
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x240
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_setTransmitPacketSize"
	.byte	0x2
	.uahalf	0x378
	.byte	0x1
	.byte	0x3
	.uaword	0x520f
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x378
	.uaword	0x4ba1
	.uleb128 0x26
	.string	"size"
	.byte	0x2
	.uahalf	0x378
	.uaword	0x27f
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_setReceivePacketSize"
	.byte	0x2
	.uahalf	0x366
	.byte	0x1
	.byte	0x3
	.uaword	0x524f
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x366
	.uaword	0x4ba1
	.uleb128 0x26
	.string	"size"
	.byte	0x2
	.uahalf	0x366
	.uaword	0x27f
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_writeFifo"
	.byte	0x2
	.uahalf	0x38b
	.byte	0x1
	.byte	0x3
	.uaword	0x5283
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x38b
	.uaword	0x4ba1
	.uleb128 0x27
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x38b
	.uaword	0x206
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearLastSingleRequestInterruptSource"
	.byte	0x2
	.uahalf	0x25e
	.byte	0x1
	.byte	0x3
	.uaword	0x52c7
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x25e
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearSingleRequestInterruptSource"
	.byte	0x2
	.uahalf	0x26a
	.byte	0x1
	.byte	0x3
	.uaword	0x5307
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x26a
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearLastBurstRequestInterruptSource"
	.byte	0x2
	.uahalf	0x258
	.byte	0x1
	.byte	0x3
	.uaword	0x534a
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x258
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearBurstRequestInterruptSource"
	.byte	0x2
	.uahalf	0x24c
	.byte	0x1
	.byte	0x3
	.uaword	0x5389
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x24c
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x21
	.string	"IfxI2c_getProtocolInterruptSourceStatus"
	.byte	0x2
	.uahalf	0x32e
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uaword	0x53db
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x32e
	.uaword	0x4ba1
	.uleb128 0x26
	.string	"source"
	.byte	0x2
	.uahalf	0x32e
	.uaword	0x4e02
	.byte	0
	.uleb128 0x25
	.string	"IfxI2c_clearProtocolInterruptSource"
	.byte	0x2
	.uahalf	0x264
	.byte	0x1
	.byte	0x3
	.uaword	0x5425
	.uleb128 0x26
	.string	"i2c"
	.byte	0x2
	.uahalf	0x264
	.uaword	0x4ba1
	.uleb128 0x26
	.string	"source"
	.byte	0x2
	.uahalf	0x264
	.uaword	0x4e02
	.byte	0
	.uleb128 0x21
	.string	"IfxCpu_disableInterrupts"
	.byte	0x3
	.uahalf	0x27d
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uaword	0x545d
	.uleb128 0x22
	.string	"enabled"
	.byte	0x3
	.uahalf	0x27f
	.uaword	0x236
	.byte	0
	.uleb128 0x25
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x3
	.uahalf	0x392
	.byte	0x1
	.byte	0x3
	.uaword	0x5491
	.uleb128 0x26
	.string	"enabled"
	.byte	0x3
	.uahalf	0x392
	.uaword	0x236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxI2c_I2c_initConfig"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	.LFB273
	.uaword	.LFE273
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x54d9
	.uleb128 0x29
	.string	"config"
	.byte	0x1
	.byte	0x23
	.uaword	0x54d9
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.string	"i2c"
	.byte	0x1
	.byte	0x23
	.uaword	0x4ba1
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4fb1
	.uleb128 0x28
	.byte	0x1
	.string	"IfxI2c_I2c_initDevice"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	.LFB274
	.uaword	.LFE274
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5524
	.uleb128 0x2a
	.uaword	.LASF37
	.byte	0x1
	.byte	0x2b
	.uaword	0x5524
	.byte	0x1
	.byte	0x64
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.byte	0x2b
	.uaword	0x552a
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4ff5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5530
	.uleb128 0x1e
	.uaword	0x5033
	.uleb128 0x28
	.byte	0x1
	.string	"IfxI2c_I2c_initDeviceConfig"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.uaword	.LFB275
	.uaword	.LFE275
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5580
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.byte	0x32
	.uaword	0x5580
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.string	"i2c"
	.byte	0x1
	.byte	0x32
	.uaword	0x4fef
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5033
	.uleb128 0x28
	.byte	0x1
	.string	"IfxI2c_I2c_initModule"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB276
	.uaword	.LFE276
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5688
	.uleb128 0x2b
	.string	"i2c"
	.byte	0x1
	.byte	0x39
	.uaword	0x4fef
	.uaword	.LLST0
	.uleb128 0x2b
	.string	"config"
	.byte	0x1
	.byte	0x39
	.uaword	0x5688
	.uaword	.LLST1
	.uleb128 0x2c
	.string	"i2cSFR"
	.byte	0x1
	.byte	0x3b
	.uaword	0x4ba1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2d
	.uaword	0x50a6
	.uaword	.LBB168
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3f
	.uaword	0x55fc
	.uleb128 0x2e
	.uaword	0x50bc
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2d
	.uaword	0x50c9
	.uaword	.LBB172
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x43
	.uaword	0x5617
	.uleb128 0x2e
	.uaword	0x50de
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2d
	.uaword	0x50eb
	.uaword	.LBB176
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x45
	.uaword	0x5632
	.uleb128 0x2e
	.uaword	0x510d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL6
	.uaword	0x62dd
	.uaword	0x5646
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL7
	.uaword	0x6302
	.uaword	0x565a
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL8
	.uaword	0x632c
	.uaword	0x566e
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL9
	.uaword	0x6355
	.uleb128 0x32
	.uaword	.LVL10
	.uaword	0x6385
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x568e
	.uleb128 0x1e
	.uaword	0x4fb1
	.uleb128 0x33
	.byte	0x1
	.string	"IfxI2c_I2c_read"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	0x4f03
	.uaword	.LFB277
	.uaword	.LFE277
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ceb
	.uleb128 0x34
	.uaword	.LASF37
	.byte	0x1
	.byte	0x4a
	.uaword	0x5524
	.uaword	.LLST2
	.uleb128 0x2b
	.string	"data"
	.byte	0x1
	.byte	0x4a
	.uaword	0x5ceb
	.uaword	.LLST3
	.uleb128 0x2b
	.string	"size"
	.byte	0x1
	.byte	0x4a
	.uaword	0x27f
	.uaword	.LLST4
	.uleb128 0x35
	.uaword	.LASF33
	.byte	0x1
	.byte	0x4c
	.uaword	0x4f03
	.uaword	.LLST5
	.uleb128 0x2c
	.string	"i2c"
	.byte	0x1
	.byte	0x4d
	.uaword	0x4ba1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x35
	.uaword	.LASF36
	.byte	0x1
	.byte	0x4e
	.uaword	0x206
	.uaword	.LLST6
	.uleb128 0x36
	.string	"slAddr"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1a9
	.uaword	.LLST7
	.uleb128 0x2c
	.string	"rxData"
	.byte	0x1
	.byte	0x51
	.uaword	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.string	"bytesToReceive"
	.byte	0x1
	.byte	0x52
	.uaword	0x1f8
	.uaword	.LLST8
	.uleb128 0x36
	.string	"bytePtrRxData"
	.byte	0x1
	.byte	0x53
	.uaword	0x5cf6
	.uaword	.LLST9
	.uleb128 0x36
	.string	"bytes"
	.byte	0x1
	.byte	0x54
	.uaword	0x206
	.uaword	.LLST10
	.uleb128 0x37
	.uaword	0x511a
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0x57
	.uaword	0x57aa
	.uleb128 0x2e
	.uaword	0x5139
	.byte	0x1
	.byte	0x6f
	.uleb128 0x38
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x39
	.uaword	0x5145
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x5153
	.uaword	.LBB182
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x5f
	.uaword	0x57c7
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST12
	.byte	0
	.uleb128 0x2d
	.uaword	0x524f
	.uaword	.LBB185
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x66
	.uaword	0x57ed
	.uleb128 0x3a
	.uaword	0x5276
	.uaword	.LLST13
	.uleb128 0x3a
	.uaword	0x526a
	.uaword	.LLST14
	.byte	0
	.uleb128 0x37
	.uaword	0x5192
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0x60
	.uaword	0x580a
	.uleb128 0x3a
	.uaword	0x51c1
	.uaword	.LLST15
	.byte	0
	.uleb128 0x37
	.uaword	0x51ce
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.byte	0x64
	.uaword	0x5830
	.uleb128 0x3a
	.uaword	0x5201
	.uaword	.LLST16
	.uleb128 0x3a
	.uaword	0x51f5
	.uaword	.LLST17
	.byte	0
	.uleb128 0x37
	.uaword	0x520f
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x65
	.uaword	0x5856
	.uleb128 0x3a
	.uaword	0x5241
	.uaword	.LLST18
	.uleb128 0x3a
	.uaword	0x5235
	.uaword	.LLST19
	.byte	0
	.uleb128 0x37
	.uaword	0x5283
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.byte	0x67
	.uaword	0x5873
	.uleb128 0x3a
	.uaword	0x52ba
	.uaword	.LLST20
	.byte	0
	.uleb128 0x37
	.uaword	0x52c7
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.byte	0x68
	.uaword	0x5890
	.uleb128 0x3a
	.uaword	0x52fa
	.uaword	.LLST21
	.byte	0
	.uleb128 0x37
	.uaword	0x5307
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.byte	0x69
	.uaword	0x58ad
	.uleb128 0x3a
	.uaword	0x533d
	.uaword	.LLST22
	.byte	0
	.uleb128 0x37
	.uaword	0x534a
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x1
	.byte	0x6a
	.uaword	0x58ca
	.uleb128 0x3a
	.uaword	0x537c
	.uaword	.LLST23
	.byte	0
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0x5c11
	.uleb128 0x36
	.string	"ris"
	.byte	0x1
	.byte	0xfe
	.uaword	0x206
	.uaword	.LLST24
	.uleb128 0x3c
	.uaword	0x5192
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.uahalf	0x109
	.uaword	0x5900
	.uleb128 0x3a
	.uaword	0x51c1
	.uaword	.LLST25
	.byte	0
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0xb0
	.uaword	0x5ac1
	.uleb128 0x3d
	.uaword	.LASF39
	.byte	0x1
	.byte	0x85
	.uaword	0x236
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.byte	0x86
	.uaword	0x206
	.uaword	.LLST26
	.uleb128 0x37
	.uaword	0x5425
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.byte	0x85
	.uaword	0x598b
	.uleb128 0x38
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x3e
	.uaword	0x544c
	.uleb128 0x3c
	.uaword	0x5053
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x3
	.uahalf	0x280
	.uaword	0x5979
	.uleb128 0x38
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x3e
	.uaword	0x507d
	.uleb128 0x38
	.uaword	.LBB212
	.uaword	.LBE212
	.uleb128 0x39
	.uaword	0x508a
	.uaword	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0x509a
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x3
	.uahalf	0x282
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0x5a5f
	.uleb128 0x36
	.string	"ris"
	.byte	0x1
	.byte	0x95
	.uaword	0x206
	.uaword	.LLST28
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0x100
	.uaword	0x5a2a
	.uleb128 0x36
	.string	"k"
	.byte	0x1
	.byte	0x9f
	.uaword	0x206
	.uaword	.LLST29
	.uleb128 0x37
	.uaword	0x5283
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x1
	.byte	0xa6
	.uaword	0x59d6
	.uleb128 0x3a
	.uaword	0x52ba
	.uaword	.LLST30
	.byte	0
	.uleb128 0x37
	.uaword	0x52c7
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x1
	.byte	0xa7
	.uaword	0x59f3
	.uleb128 0x3a
	.uaword	0x52fa
	.uaword	.LLST31
	.byte	0
	.uleb128 0x37
	.uaword	0x5307
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x1
	.byte	0xa8
	.uaword	0x5a10
	.uleb128 0x3a
	.uaword	0x533d
	.uaword	.LLST32
	.byte	0
	.uleb128 0x40
	.uaword	0x534a
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x1
	.byte	0xa9
	.uleb128 0x3a
	.uaword	0x537c
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x5153
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.byte	0xaf
	.uaword	0x5a47
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST34
	.byte	0
	.uleb128 0x40
	.uaword	0x5192
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x1
	.byte	0xb6
	.uleb128 0x2e
	.uaword	0x51c1
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x545d
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.byte	0xbc
	.uaword	0x5a78
	.uleb128 0x41
	.uaword	0x5480
	.byte	0
	.uleb128 0x37
	.uaword	0x5389
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.byte	0xbf
	.uaword	0x5a9e
	.uleb128 0x3a
	.uaword	0x53cb
	.uaword	.LLST35
	.uleb128 0x3a
	.uaword	0x53bf
	.uaword	.LLST36
	.byte	0
	.uleb128 0x40
	.uaword	0x53db
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x1
	.byte	0xc2
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST37
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0x120
	.uaword	0x5bf6
	.uleb128 0x36
	.string	"ris"
	.byte	0x1
	.byte	0xcd
	.uaword	0x206
	.uaword	.LLST39
	.uleb128 0x37
	.uaword	0x5389
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x1
	.byte	0xc7
	.uaword	0x5aff
	.uleb128 0x3a
	.uaword	0x53cb
	.uaword	.LLST40
	.uleb128 0x3a
	.uaword	0x53bf
	.uaword	.LLST41
	.byte	0
	.uleb128 0x37
	.uaword	0x53db
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.byte	0xca
	.uaword	0x5b25
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST42
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST43
	.byte	0
	.uleb128 0x37
	.uaword	0x5153
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x1
	.byte	0xd2
	.uaword	0x5b42
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST44
	.byte	0
	.uleb128 0x37
	.uaword	0x5192
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.byte	0xd8
	.uaword	0x5b5f
	.uleb128 0x3a
	.uaword	0x51c1
	.uaword	.LLST45
	.byte	0
	.uleb128 0x42
	.uaword	.Ldebug_ranges0+0x140
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.uaword	0x206
	.uaword	.LLST46
	.uleb128 0x42
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x36
	.string	"k"
	.byte	0x1
	.byte	0xee
	.uaword	0x206
	.uaword	.LLST47
	.uleb128 0x2d
	.uaword	0x5283
	.uaword	.LBB252
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0xf0
	.uaword	0x5ba0
	.uleb128 0x3a
	.uaword	0x52ba
	.uaword	.LLST48
	.byte	0
	.uleb128 0x2d
	.uaword	0x52c7
	.uaword	.LBB258
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.byte	0xf1
	.uaword	0x5bbd
	.uleb128 0x3a
	.uaword	0x52fa
	.uaword	.LLST49
	.byte	0
	.uleb128 0x2d
	.uaword	0x5307
	.uaword	.LBB261
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0xf2
	.uaword	0x5bda
	.uleb128 0x3a
	.uaword	0x533d
	.uaword	.LLST50
	.byte	0
	.uleb128 0x43
	.uaword	0x534a
	.uaword	.LBB264
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.byte	0xf3
	.uleb128 0x3a
	.uaword	0x537c
	.uaword	.LLST51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0x5153
	.uaword	.LBB274
	.uaword	.LBE274
	.byte	0x1
	.uahalf	0x103
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x50eb
	.uaword	.LBB280
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x5c2f
	.uleb128 0x3a
	.uaword	0x510d
	.uaword	.LLST53
	.byte	0
	.uleb128 0x2d
	.uaword	0x50eb
	.uaword	.LBB284
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.byte	0x5a
	.uaword	0x5c4c
	.uleb128 0x3a
	.uaword	0x510d
	.uaword	.LLST54
	.byte	0
	.uleb128 0x37
	.uaword	0x5389
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x1
	.byte	0x76
	.uaword	0x5c6d
	.uleb128 0x46
	.uaword	0x53cb
	.byte	0x3
	.uleb128 0x2e
	.uaword	0x53bf
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x37
	.uaword	0x53db
	.uaword	.LBB290
	.uaword	.LBE290
	.byte	0x1
	.byte	0x78
	.uaword	0x5c93
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST55
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST56
	.byte	0
	.uleb128 0x37
	.uaword	0x5389
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x1
	.byte	0x7b
	.uaword	0x5cb4
	.uleb128 0x46
	.uaword	0x53cb
	.byte	0x4
	.uleb128 0x2e
	.uaword	0x53bf
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x37
	.uaword	0x53db
	.uaword	.LBB297
	.uaword	.LBE297
	.byte	0x1
	.byte	0x7d
	.uaword	0x5cda
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST57
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST58
	.byte	0
	.uleb128 0x32
	.uaword	.LVL31
	.uaword	0x63ad
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5cf1
	.uleb128 0x1c
	.uaword	0x1a9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1a9
	.uleb128 0x47
	.byte	0x1
	.string	"IfxI2c_I2c_write"
	.byte	0x1
	.uahalf	0x115
	.byte	0x1
	.uaword	0x4f03
	.uaword	.LFB278
	.uaword	.LFE278
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x62ab
	.uleb128 0x48
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x115
	.uaword	0x5524
	.uaword	.LLST59
	.uleb128 0x49
	.string	"data"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x5ceb
	.uaword	.LLST60
	.uleb128 0x49
	.string	"size"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x27f
	.uaword	.LLST61
	.uleb128 0x4a
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x117
	.uaword	0x4f03
	.uaword	.LLST62
	.uleb128 0x4b
	.string	"i2c"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x4ba1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4c
	.string	"slAddr"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x1a9
	.uaword	.LLST63
	.uleb128 0x4d
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x4c
	.string	"bytesToSend"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x1f8
	.uaword	.LLST64
	.uleb128 0x4c
	.string	"bytes"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x206
	.uaword	.LLST65
	.uleb128 0x4c
	.string	"bytePtrPacket"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x5cf6
	.uaword	.LLST66
	.uleb128 0x3c
	.uaword	0x511a
	.uaword	.LBB301
	.uaword	.LBE301
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x5e0b
	.uleb128 0x2e
	.uaword	0x5139
	.byte	0x1
	.byte	0x6f
	.uleb128 0x38
	.uaword	.LBB302
	.uaword	.LBE302
	.uleb128 0x39
	.uaword	0x5145
	.uaword	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x5153
	.uaword	.LBB303
	.uaword	.Ldebug_ranges0+0x210
	.byte	0x1
	.uahalf	0x129
	.uaword	0x5e29
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST68
	.byte	0
	.uleb128 0x45
	.uaword	0x524f
	.uaword	.LBB306
	.uaword	.Ldebug_ranges0+0x228
	.byte	0x1
	.uahalf	0x130
	.uaword	0x5e50
	.uleb128 0x3a
	.uaword	0x5276
	.uaword	.LLST69
	.uleb128 0x3a
	.uaword	0x526a
	.uaword	.LLST70
	.byte	0
	.uleb128 0x45
	.uaword	0x5192
	.uaword	.LBB311
	.uaword	.Ldebug_ranges0+0x248
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x5e6e
	.uleb128 0x3a
	.uaword	0x51c1
	.uaword	.LLST71
	.byte	0
	.uleb128 0x3c
	.uaword	0x51ce
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x5e95
	.uleb128 0x3a
	.uaword	0x5201
	.uaword	.LLST72
	.uleb128 0x3a
	.uaword	0x51f5
	.uaword	.LLST71
	.byte	0
	.uleb128 0x3c
	.uaword	0x5283
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x1
	.uahalf	0x131
	.uaword	0x5eb3
	.uleb128 0x3a
	.uaword	0x52ba
	.uaword	.LLST74
	.byte	0
	.uleb128 0x3c
	.uaword	0x52c7
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x1
	.uahalf	0x132
	.uaword	0x5ed1
	.uleb128 0x3a
	.uaword	0x52fa
	.uaword	.LLST75
	.byte	0
	.uleb128 0x3c
	.uaword	0x5307
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x1
	.uahalf	0x133
	.uaword	0x5eef
	.uleb128 0x3a
	.uaword	0x533d
	.uaword	.LLST76
	.byte	0
	.uleb128 0x3c
	.uaword	0x534a
	.uaword	.LBB325
	.uaword	.LBE325
	.byte	0x1
	.uahalf	0x134
	.uaword	0x5f0d
	.uleb128 0x3a
	.uaword	0x537c
	.uaword	.LLST77
	.byte	0
	.uleb128 0x3c
	.uaword	0x5389
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x1
	.uahalf	0x137
	.uaword	0x5f34
	.uleb128 0x3a
	.uaword	0x53cb
	.uaword	.LLST78
	.uleb128 0x3a
	.uaword	0x53bf
	.uaword	.LLST79
	.byte	0
	.uleb128 0x3c
	.uaword	0x53db
	.uaword	.LBB329
	.uaword	.LBE329
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x5f5b
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST80
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST81
	.byte	0
	.uleb128 0x3c
	.uaword	0x5389
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x5f82
	.uleb128 0x3a
	.uaword	0x53cb
	.uaword	.LLST82
	.uleb128 0x3a
	.uaword	0x53bf
	.uaword	.LLST83
	.byte	0
	.uleb128 0x3c
	.uaword	0x5389
	.uaword	.LBB333
	.uaword	.LBE333
	.byte	0x1
	.uahalf	0x142
	.uaword	0x5fa9
	.uleb128 0x3a
	.uaword	0x53cb
	.uaword	.LLST84
	.uleb128 0x3a
	.uaword	0x53bf
	.uaword	.LLST85
	.byte	0
	.uleb128 0x45
	.uaword	0x53db
	.uaword	.LBB335
	.uaword	.Ldebug_ranges0+0x260
	.byte	0x1
	.uahalf	0x144
	.uaword	0x5fd0
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST86
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST87
	.byte	0
	.uleb128 0x45
	.uaword	0x50eb
	.uaword	.LBB339
	.uaword	.Ldebug_ranges0+0x278
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x5fee
	.uleb128 0x3a
	.uaword	0x510d
	.uaword	.LLST88
	.byte	0
	.uleb128 0x45
	.uaword	0x50eb
	.uaword	.LBB343
	.uaword	.Ldebug_ranges0+0x290
	.byte	0x1
	.uahalf	0x122
	.uaword	0x600c
	.uleb128 0x3a
	.uaword	0x510d
	.uaword	.LLST89
	.byte	0
	.uleb128 0x45
	.uaword	0x53db
	.uaword	.LBB347
	.uaword	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x6033
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST90
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST91
	.byte	0
	.uleb128 0x4e
	.uaword	.LBB351
	.uaword	.LBE351
	.uaword	0x629a
	.uleb128 0x4c
	.string	"i"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x206
	.uaword	.LLST92
	.uleb128 0x4c
	.string	"j"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x206
	.uaword	.LLST93
	.uleb128 0x4f
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x236
	.uleb128 0x4c
	.string	"ris"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x206
	.uaword	.LLST94
	.uleb128 0x3c
	.uaword	0x5425
	.uaword	.LBB352
	.uaword	.LBE352
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x60e3
	.uleb128 0x38
	.uaword	.LBB353
	.uaword	.LBE353
	.uleb128 0x3e
	.uaword	0x544c
	.uleb128 0x3c
	.uaword	0x5053
	.uaword	.LBB354
	.uaword	.LBE354
	.byte	0x3
	.uahalf	0x280
	.uaword	0x60d1
	.uleb128 0x38
	.uaword	.LBB355
	.uaword	.LBE355
	.uleb128 0x3e
	.uaword	0x507d
	.uleb128 0x38
	.uaword	.LBB356
	.uaword	.LBE356
	.uleb128 0x39
	.uaword	0x508a
	.uaword	.LLST95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0x509a
	.uaword	.LBB357
	.uaword	.LBE357
	.byte	0x3
	.uahalf	0x282
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x51ce
	.uaword	.LBB359
	.uaword	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x6108
	.uleb128 0x3a
	.uaword	0x5201
	.uaword	.LLST96
	.uleb128 0x2e
	.uaword	0x51f5
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3b
	.uaword	.Ldebug_ranges0+0x2e0
	.uaword	0x615a
	.uleb128 0x4c
	.string	"ris"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x206
	.uaword	.LLST97
	.uleb128 0x45
	.uaword	0x5153
	.uaword	.LBB365
	.uaword	.Ldebug_ranges0+0x2f8
	.byte	0x1
	.uahalf	0x174
	.uaword	0x613f
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST98
	.byte	0
	.uleb128 0x44
	.uaword	0x5192
	.uaword	.LBB369
	.uaword	.LBE369
	.byte	0x1
	.uahalf	0x17a
	.uleb128 0x3a
	.uaword	0x51c1
	.uaword	.LLST99
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x524f
	.uaword	.LBB372
	.uaword	.Ldebug_ranges0+0x310
	.byte	0x1
	.uahalf	0x184
	.uaword	0x6181
	.uleb128 0x3a
	.uaword	0x5276
	.uaword	.LLST100
	.uleb128 0x3a
	.uaword	0x526a
	.uaword	.LLST101
	.byte	0
	.uleb128 0x3c
	.uaword	0x545d
	.uaword	.LBB376
	.uaword	.LBE376
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x619b
	.uleb128 0x41
	.uaword	0x5480
	.byte	0
	.uleb128 0x3c
	.uaword	0x5389
	.uaword	.LBB378
	.uaword	.LBE378
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x61c2
	.uleb128 0x3a
	.uaword	0x53cb
	.uaword	.LLST102
	.uleb128 0x3a
	.uaword	0x53bf
	.uaword	.LLST103
	.byte	0
	.uleb128 0x3c
	.uaword	0x53db
	.uaword	.LBB380
	.uaword	.LBE380
	.byte	0x1
	.uahalf	0x191
	.uaword	0x61e9
	.uleb128 0x3a
	.uaword	0x5415
	.uaword	.LLST104
	.uleb128 0x3a
	.uaword	0x5409
	.uaword	.LLST105
	.byte	0
	.uleb128 0x45
	.uaword	0x5153
	.uaword	.LBB382
	.uaword	.Ldebug_ranges0+0x328
	.byte	0x1
	.uahalf	0x199
	.uaword	0x6207
	.uleb128 0x3a
	.uaword	0x5185
	.uaword	.LLST106
	.byte	0
	.uleb128 0x45
	.uaword	0x5192
	.uaword	.LBB386
	.uaword	.Ldebug_ranges0+0x340
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x6225
	.uleb128 0x3a
	.uaword	0x51c1
	.uaword	.LLST107
	.byte	0
	.uleb128 0x45
	.uaword	0x5283
	.uaword	.LBB391
	.uaword	.Ldebug_ranges0+0x358
	.byte	0x1
	.uahalf	0x185
	.uaword	0x6243
	.uleb128 0x3a
	.uaword	0x52ba
	.uaword	.LLST108
	.byte	0
	.uleb128 0x3c
	.uaword	0x52c7
	.uaword	.LBB395
	.uaword	.LBE395
	.byte	0x1
	.uahalf	0x186
	.uaword	0x6261
	.uleb128 0x3a
	.uaword	0x52fa
	.uaword	.LLST109
	.byte	0
	.uleb128 0x3c
	.uaword	0x5307
	.uaword	.LBB397
	.uaword	.LBE397
	.byte	0x1
	.uahalf	0x187
	.uaword	0x627f
	.uleb128 0x3a
	.uaword	0x533d
	.uaword	.LLST110
	.byte	0
	.uleb128 0x44
	.uaword	0x534a
	.uaword	.LBB399
	.uaword	.LBE399
	.byte	0x1
	.uahalf	0x188
	.uleb128 0x3a
	.uaword	0x537c
	.uaword	.LLST111
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL126
	.uaword	0x63ad
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x33d
	.uaword	0x62bb
	.uleb128 0x1a
	.uaword	0x22cb
	.byte	0x2
	.byte	0
	.uleb128 0x50
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xd
	.byte	0x96
	.uaword	0x62d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x62ab
	.uleb128 0x51
	.byte	0x1
	.string	"IfxI2c_enableModule"
	.byte	0x2
	.uahalf	0x1ee
	.byte	0x1
	.byte	0x1
	.uaword	0x6302
	.uleb128 0x52
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxI2c_configureAsMaster"
	.byte	0x2
	.uahalf	0x1c2
	.byte	0x1
	.byte	0x1
	.uaword	0x632c
	.uleb128 0x52
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxI2c_setBaudrate"
	.byte	0x2
	.uahalf	0x22b
	.byte	0x1
	.byte	0x1
	.uaword	0x6355
	.uleb128 0x52
	.uaword	0x4ba1
	.uleb128 0x52
	.uaword	0x214
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxI2c_initSclSdaPin"
	.byte	0x2
	.uahalf	0x214
	.byte	0x1
	.byte	0x1
	.uaword	0x6385
	.uleb128 0x52
	.uaword	0x4e5b
	.uleb128 0x52
	.uaword	0x4e61
	.uleb128 0x52
	.uaword	0x4b15
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxI2c_getBaudrate"
	.byte	0x2
	.uahalf	0x209
	.byte	0x1
	.uaword	0x214
	.byte	0x1
	.uaword	0x63ad
	.uleb128 0x52
	.uaword	0x4ba1
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"IfxI2c_releaseBus"
	.byte	0x2
	.uahalf	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.uaword	0x4ba1
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LFE276
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1
	.uaword	.LFE276
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL33
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL62
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE277
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL17
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14
	.uaword	.LVL26
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL39
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL43
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL62
	.uaword	.LVL69
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL82
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL96
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL51
	.uaword	.LVL91
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL92
	.uaword	.LFE277
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL83
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL20
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL16
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL17
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL43
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL69
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL82
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL19
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL21
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL23
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL24
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL70
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL103
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL47
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL64
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL62
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL62
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL79
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL79
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL84
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL96
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL85
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL97
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL98
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL99
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL109
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL125
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL128
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL109
	.uaword	.LVL126-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL126-1
	.uaword	.LVL128
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL109
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL123
	.uaword	.LVL128
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133
	.uaword	.LFE278
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL109
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL145
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL160
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL170
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL112
	.uaword	.LVL126-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL129
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL110
	.uaword	.LVL123
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL133
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL138
	.uahalf	0x9
	.byte	0x74
	.sleb128 -1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL176
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL178
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL139
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL178
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL110
	.uaword	.LVL169
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL170
	.uaword	.LFE278
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL111
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL113
	.uaword	.LVL126-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL113
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL112
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL112
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL114
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL115
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL116
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL117
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL118
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL118
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL119
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL119
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL120
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL120
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL132
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL173
	.uaword	.LVL176
	.uahalf	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL133
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL178
	.uaword	.LFE278
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL157
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL136
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LFE278
	.uahalf	0x3
	.byte	0x71
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL146
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL150
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL171
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL171
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL155
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL155
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL156
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL156
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL161
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL172
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL174
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL175
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x6f
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
	.uaword	.LFB273
	.uaword	.LFE273-.LFB273
	.uaword	.LFB274
	.uaword	.LFE274-.LFB274
	.uaword	.LFB275
	.uaword	.LFE275-.LFB275
	.uaword	.LFB276
	.uaword	.LFE276-.LFB276
	.uaword	.LFB277
	.uaword	.LFE277-.LFB277
	.uaword	.LFB278
	.uaword	.LFE278-.LFB278
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	0
	.uaword	0
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	0
	.uaword	0
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0
	.uaword	0
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	0
	.uaword	0
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	0
	.uaword	0
	.uaword	.LBB204
	.uaword	.LBE204
	.uaword	.LBB294
	.uaword	.LBE294
	.uaword	.LBB295
	.uaword	.LBE295
	.uaword	.LBB296
	.uaword	.LBE296
	.uaword	.LBB299
	.uaword	.LBE299
	.uaword	.LBB300
	.uaword	.LBE300
	.uaword	0
	.uaword	0
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	.LBB240
	.uaword	.LBE240
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	.LBB279
	.uaword	.LBE279
	.uaword	0
	.uaword	0
	.uaword	.LBB215
	.uaword	.LBE215
	.uaword	.LBB231
	.uaword	.LBE231
	.uaword	.LBB238
	.uaword	.LBE238
	.uaword	.LBB239
	.uaword	.LBE239
	.uaword	0
	.uaword	0
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	.LBB225
	.uaword	.LBE225
	.uaword	.LBB226
	.uaword	.LBE226
	.uaword	0
	.uaword	0
	.uaword	.LBB241
	.uaword	.LBE241
	.uaword	.LBB277
	.uaword	.LBE277
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	0
	.uaword	0
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	0
	.uaword	0
	.uaword	.LBB251
	.uaword	.LBE251
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	0
	.uaword	0
	.uaword	.LBB252
	.uaword	.LBE252
	.uaword	.LBB257
	.uaword	.LBE257
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	0
	.uaword	0
	.uaword	.LBB258
	.uaword	.LBE258
	.uaword	.LBB269
	.uaword	.LBE269
	.uaword	0
	.uaword	0
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	.LBB270
	.uaword	.LBE270
	.uaword	0
	.uaword	0
	.uaword	.LBB264
	.uaword	.LBE264
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	0
	.uaword	0
	.uaword	.LBB280
	.uaword	.LBE280
	.uaword	.LBB283
	.uaword	.LBE283
	.uaword	0
	.uaword	0
	.uaword	.LBB284
	.uaword	.LBE284
	.uaword	.LBB287
	.uaword	.LBE287
	.uaword	0
	.uaword	0
	.uaword	.LBB303
	.uaword	.LBE303
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	0
	.uaword	0
	.uaword	.LBB306
	.uaword	.LBE306
	.uaword	.LBB314
	.uaword	.LBE314
	.uaword	.LBB318
	.uaword	.LBE318
	.uaword	0
	.uaword	0
	.uaword	.LBB311
	.uaword	.LBE311
	.uaword	.LBB315
	.uaword	.LBE315
	.uaword	0
	.uaword	0
	.uaword	.LBB335
	.uaword	.LBE335
	.uaword	.LBB338
	.uaword	.LBE338
	.uaword	0
	.uaword	0
	.uaword	.LBB339
	.uaword	.LBE339
	.uaword	.LBB342
	.uaword	.LBE342
	.uaword	0
	.uaword	0
	.uaword	.LBB343
	.uaword	.LBE343
	.uaword	.LBB346
	.uaword	.LBE346
	.uaword	0
	.uaword	0
	.uaword	.LBB347
	.uaword	.LBE347
	.uaword	.LBB350
	.uaword	.LBE350
	.uaword	0
	.uaword	0
	.uaword	.LBB359
	.uaword	.LBE359
	.uaword	.LBB363
	.uaword	.LBE363
	.uaword	.LBB371
	.uaword	.LBE371
	.uaword	0
	.uaword	0
	.uaword	.LBB364
	.uaword	.LBE364
	.uaword	.LBB375
	.uaword	.LBE375
	.uaword	0
	.uaword	0
	.uaword	.LBB365
	.uaword	.LBE365
	.uaword	.LBB368
	.uaword	.LBE368
	.uaword	0
	.uaword	0
	.uaword	.LBB372
	.uaword	.LBE372
	.uaword	.LBB390
	.uaword	.LBE390
	.uaword	0
	.uaword	0
	.uaword	.LBB382
	.uaword	.LBE382
	.uaword	.LBB385
	.uaword	.LBE385
	.uaword	0
	.uaword	0
	.uaword	.LBB386
	.uaword	.LBE386
	.uaword	.LBB389
	.uaword	.LBE389
	.uaword	0
	.uaword	0
	.uaword	.LBB391
	.uaword	.LBE391
	.uaword	.LBB394
	.uaword	.LBE394
	.uaword	0
	.uaword	0
	.uaword	.LFB273
	.uaword	.LFE273
	.uaword	.LFB274
	.uaword	.LFE274
	.uaword	.LFB275
	.uaword	.LFE275
	.uaword	.LFB276
	.uaword	.LFE276
	.uaword	.LFB277
	.uaword	.LFE277
	.uaword	.LFB278
	.uaword	.LFE278
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF19:
	.string	"MODNUMBER"
.LASF27:
	.string	"reserved_8"
.LASF0:
	.string	"module"
.LASF28:
	.string	"RDIS_CTRL"
.LASF16:
	.string	"SREQ_INT"
.LASF34:
	.string	"baudrate"
.LASF36:
	.string	"packet"
.LASF31:
	.string	"inSelect"
.LASF38:
	.string	"i2cDeviceConfig"
.LASF7:
	.string	"RXF_UFL"
.LASF9:
	.string	"TXF_UFL"
.LASF35:
	.string	"deviceAddress"
.LASF8:
	.string	"RXF_OFL"
.LASF2:
	.string	"reserved_10"
.LASF12:
	.string	"reserved_11"
.LASF25:
	.string	"reserved_12"
.LASF14:
	.string	"reserved_14"
.LASF5:
	.string	"reserved_16"
.LASF10:
	.string	"TXF_OFL"
.LASF20:
	.string	"I2C_ERR_INT"
.LASF29:
	.string	"reserved_20"
.LASF13:
	.string	"reserved_24"
.LASF30:
	.string	"reserved_28"
.LASF1:
	.string	"reserved_0"
.LASF22:
	.string	"reserved_1"
.LASF6:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_3"
.LASF11:
	.string	"reserved_4"
.LASF4:
	.string	"reserved_6"
.LASF24:
	.string	"reserved_7"
.LASF39:
	.string	"intEnabled"
.LASF26:
	.string	"reserved_C"
.LASF15:
	.string	"LSREQ_INT"
.LASF37:
	.string	"i2cDevice"
.LASF17:
	.string	"LBREQ_INT"
.LASF18:
	.string	"BREQ_INT"
.LASF21:
	.string	"I2C_P_INT"
.LASF33:
	.string	"status"
.LASF23:
	.string	"TX_END"
.LASF32:
	.string	"outSelect"
	.extern	IfxI2c_releaseBus,STT_FUNC,0
	.extern	IfxI2c_getBaudrate,STT_FUNC,0
	.extern	IfxI2c_initSclSdaPin,STT_FUNC,0
	.extern	IfxI2c_setBaudrate,STT_FUNC,0
	.extern	IfxI2c_configureAsMaster,STT_FUNC,0
	.extern	IfxI2c_enableModule,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
