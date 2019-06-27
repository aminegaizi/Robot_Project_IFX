	.file	"Madgwick.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Madgwick_init,"ax",@progbits
	.align 1
	.global	Madgwick_init
	.type	Madgwick_init, @function
Madgwick_init:
.LFB292:
	.file 1 "0_Src/AppSw/Tricore/Gyroscope/Madgwick.c"
	.loc 1 66 0
	.loc 1 67 0
	movh	%d15, 16544
	movh.a	%a15, hi:beta
	.loc 1 86 0
	movh.a	%a2, hi:anglesComputed
	.loc 1 67 0
	st.w	[%a15] lo:beta, %d15
	.loc 1 68 0
	movh	%d15, 15821
	addi	%d15, %d15, -13107
	movh.a	%a15, hi:khi
	st.w	[%a15] lo:khi, %d15
	.loc 1 69 0
	movh	%d15, 16256
	movh.a	%a15, hi:q0
	st.w	[%a15] lo:q0, %d15
	.loc 1 70 0
	mov	%d15, 0
	movh.a	%a15, hi:q1
	st.w	[%a15] lo:q1, %d15
	.loc 1 71 0
	movh.a	%a15, hi:q2
	st.w	[%a15] lo:q2, %d15
	.loc 1 72 0
	movh.a	%a15, hi:q3
	st.w	[%a15] lo:q3, %d15
	.loc 1 73 0
	movh.a	%a15, hi:gxc
	st.w	[%a15] lo:gxc, %d15
	.loc 1 74 0
	movh.a	%a15, hi:gyc
	st.w	[%a15] lo:gyc, %d15
	.loc 1 75 0
	movh.a	%a15, hi:gzc
	st.w	[%a15] lo:gzc, %d15
	.loc 1 85 0
	movh	%d15, 15104
	movh.a	%a15, hi:invSampleFreq
	st.w	[%a15] lo:invSampleFreq, %d15
	.loc 1 86 0
	mov	%d15, 0
	st.b	[%a2] lo:anglesComputed, %d15
.LVL0:
.LBB26:
.LBB27:
	.loc 1 91 0
	movh	%d15, 15396
	addi	%d15, %d15, -10486
	st.w	[%a15] lo:invSampleFreq, %d15
	ret
.LBE27:
.LBE26:
.LFE292:
	.size	Madgwick_init, .-Madgwick_init
.section .text.Madgwick_begin,"ax",@progbits
	.align 1
	.global	Madgwick_begin
	.type	Madgwick_begin, @function
Madgwick_begin:
.LFB293:
	.loc 1 90 0
.LVL1:
	.loc 1 91 0
	movh	%d15, 16256
	div.f	%d4, %d15, %d4
.LVL2:
	movh.a	%a15, hi:invSampleFreq
	st.w	[%a15] lo:invSampleFreq, %d4
	ret
.LFE293:
	.size	Madgwick_begin, .-Madgwick_begin
.section .text.Madgwick_updateIMU,"ax",@progbits
	.align 1
	.global	Madgwick_updateIMU
	.type	Madgwick_updateIMU, @function
Madgwick_updateIMU:
.LFB302:
	.loc 1 350 0
.LVL3:
	.loc 1 362 0
	movh.a	%a3, hi:q1
	.loc 1 357 0
	movh	%d2, 15503
	.loc 1 362 0
	ld.w	%d3, [%a3] lo:q1
	.loc 1 357 0
	addi	%d2, %d2, -1479
	.loc 1 362 0
	movh.a	%a2, hi:q2
	.loc 1 357 0
	mul.f	%d4, %d4, %d2
.LVL4:
	.loc 1 358 0
	mul.f	%d5, %d5, %d2
.LVL5:
	.loc 1 359 0
	mul.f	%d6, %d6, %d2
.LVL6:
	.loc 1 362 0
	ld.w	%d2, [%a2] lo:q2
	movh.a	%a4, hi:q3
	addih	%d3, %d3, 0x8000
	ld.w	%d15, [%a4] lo:q3
	mul.f	%d2, %d2, %d5
	mul.f	%d3, %d3, %d4
	mul.f	%d15, %d15, %d6
	sub.f	%d3, %d3, %d2
	movh.a	%a15, 16128
	sub.f	%d3, %d3, %d15
	mov.d	%d2, %a15
	mul.f	%d2, %d3, %d2
	.loc 1 350 0
	sub.a	%SP, 32
.LCFI0:
	.loc 1 363 0
	movh.a	%a5, hi:q0
	ld.w	%d10, [%a5] lo:q0
	.loc 1 362 0
	st.w	[%SP] 4, %d2
.LVL7:
	.loc 1 363 0
	ld.w	%d2, [%a2] lo:q2
.LVL8:
	mul.f	%d10, %d10, %d4
	ld.w	%d0, [%a4] lo:q3
	mul.f	%d2, %d2, %d6
	.loc 1 364 0
	ld.w	%d15, [%a5] lo:q0
	.loc 1 363 0
	mul.f	%d0, %d0, %d5
	add.f	%d2, %d10, %d2
	.loc 1 364 0
	ld.w	%d10, [%a3] lo:q1
	.loc 1 363 0
	sub.f	%d2, %d2, %d0
	.loc 1 364 0
	mul.f	%d10, %d10, %d6
	ld.w	%d0, [%a4] lo:q3
	mul.f	%d15, %d15, %d5
	mul.f	%d0, %d0, %d4
	.loc 1 365 0
	ld.w	%d11, [%a5] lo:q0
	.loc 1 364 0
	sub.f	%d15, %d15, %d10
	.loc 1 365 0
	ld.w	%d10, [%a3] lo:q1
	.loc 1 364 0
	add.f	%d15, %d15, %d0
	.loc 1 365 0
	mul.f	%d5, %d10, %d5
.LVL9:
	ld.w	%d0, [%a2] lo:q2
	.loc 1 350 0
	ld.w	%d9, [%SP] 32
	.loc 1 363 0
	mov.d	%d3, %a15
	.loc 1 365 0
	mul.f	%d6, %d11, %d6
.LVL10:
	.loc 1 363 0
	mul.f	%d3, %d2, %d3
	.loc 1 350 0
	ld.w	%d8, [%SP] 36
	.loc 1 368 0
	mov	%d2, 0
	.loc 1 365 0
	mul.f	%d4, %d0, %d4
.LVL11:
	add.f	%d5, %d6, %d5
	.loc 1 368 0
	cmp.f	%d0, %d9, %d2
	and	%d0, %d0, 13
	.loc 1 363 0
	mov.a	%a6, %d3
.LVL12:
	.loc 1 368 0
	cmp.f	%d3, %d8, %d2
.LVL13:
	ne	%d10, %d0, 0
	.loc 1 364 0
	mov.d	%d14, %a15
	.loc 1 365 0
	sub.f	%d4, %d5, %d4
	.loc 1 368 0
	and	%d3, %d3, 13
	.loc 1 364 0
	mul.f	%d14, %d15, %d14
	or.ne	%d10, %d3, 0
	.loc 1 365 0
	mov.d	%d15, %a15
	.loc 1 368 0
	cmp.f	%d2, %d7, %d2
	.loc 1 365 0
	mul.f	%d15, %d4, %d15
	.loc 1 368 0
	and	%d2, %d2, 13
	mov	%d0, %d10
	or.ne	%d0, %d2, 0
	.loc 1 364 0
	mov.a	%a14, %d14
.LVL14:
	.loc 1 365 0
	mov.a	%a13, %d15
.LVL15:
	.loc 1 368 0
	jz	%d0, .L4
	.loc 1 371 0
	mul.f	%d10, %d7, %d7
	mul.f	%d0, %d9, %d9
.LBB28:
.LBB29:
	.loc 1 429 0
	mov.d	%d2, %a15
.LBE29:
.LBE28:
	.loc 1 371 0
	add.f	%d0, %d10, %d0
	mul.f	%d10, %d8, %d8
.LBB38:
.LBB30:
	.loc 1 432 0
	movh	%d1, 24375
.LBE30:
.LBE38:
	.loc 1 371 0
	add.f	%d0, %d0, %d10
.LVL16:
.LBB39:
.LBB31:
	.loc 1 432 0
	addi	%d1, %d1, 23007
	.loc 1 429 0
	mul.f	%d10, %d0, %d2
.LVL17:
	.loc 1 432 0
	sha	%d0, -1
.LVL18:
	sub	%d1, %d0
.LVL19:
	.loc 1 434 0
	mul.f	%d0, %d10, %d1
	movh	%d15, 16320
.LVL20:
	mul.f	%d0, %d0, %d1
.LBE31:
.LBE39:
	.loc 1 377 0
	ld.w	%d12, [%a5] lo:q0
.LBB40:
.LBB32:
	.loc 1 434 0
	sub.f	%d0, %d15, %d0
.LBE32:
.LBE40:
	.loc 1 378 0
	ld.w	%d11, [%a3] lo:q1
.LBB41:
.LBB33:
	.loc 1 434 0
	mul.f	%d0, %d0, %d1
.LVL21:
.LBE33:
.LBE41:
	.loc 1 378 0
	add.f	%d11, %d11, %d11
.LBB42:
.LBB34:
	.loc 1 435 0
	mul.f	%d10, %d10, %d0
.LVL22:
.LBE34:
.LBE42:
	.loc 1 377 0
	add.f	%d12, %d12, %d12
.LBB43:
.LBB35:
	.loc 1 435 0
	mul.f	%d10, %d0, %d10
.LBE35:
.LBE43:
	.loc 1 378 0
	st.w	[%SP] 20, %d11
.LBB44:
.LBB36:
	.loc 1 435 0
	sub.f	%d10, %d15, %d10
.LBE36:
.LBE44:
	.loc 1 381 0
	movh	%d11, 16512
.LBB45:
.LBB37:
	.loc 1 435 0
	mul.f	%d2, %d0, %d10
.LVL23:
.LBE37:
.LBE45:
	.loc 1 379 0
	ld.w	%d10, [%a2] lo:q2
	.loc 1 372 0
	mul.f	%d7, %d7, %d2
.LVL24:
	.loc 1 379 0
	add.f	%d10, %d10, %d10
	.loc 1 372 0
	mov.a	%a12, %d7
.LVL25:
	.loc 1 374 0
	mul.f	%d8, %d8, %d2
	.loc 1 377 0
	st.w	[%SP] 16, %d12
	.loc 1 379 0
	st.w	[%SP] 24, %d10
	.loc 1 380 0
	ld.w	%d10, [%a4] lo:q3
	.loc 1 381 0
	ld.w	%d5, [%a5] lo:q0
	.loc 1 380 0
	add.f	%d10, %d10, %d10
	.loc 1 381 0
	mul.f	%d7, %d5, %d11
.LVL26:
	.loc 1 382 0
	ld.w	%d5, [%a3] lo:q1
	.loc 1 373 0
	mul.f	%d9, %d9, %d2
	.loc 1 382 0
	mul.f	%d12, %d5, %d11
	.loc 1 383 0
	ld.w	%d5, [%a2] lo:q2
	.loc 1 380 0
	st.w	[%SP] 28, %d10
	.loc 1 383 0
	mul.f	%d2, %d5, %d11
.LVL27:
	.loc 1 384 0
	ld.w	%d5, [%a3] lo:q1
	movh	%d10, 16640
	.loc 1 373 0
	mov.a	%a7, %d9
.LVL28:
	.loc 1 374 0
	st.w	[%SP] 12, %d8
.LVL29:
	.loc 1 384 0
	mul.f	%d9, %d5, %d10
.LVL30:
	.loc 1 385 0
	ld.w	%d5, [%a2] lo:q2
	.loc 1 386 0
	ld.w	%d8, [%a5] lo:q0
.LVL31:
	ld.w	%d4, [%a5] lo:q0
	.loc 1 387 0
	ld.w	%d1, [%a3] lo:q1
	ld.w	%d14, [%a3] lo:q1
.LVL32:
	.loc 1 385 0
	mul.f	%d10, %d5, %d10
.LVL33:
	.loc 1 387 0
	mul.f	%d13, %d1, %d14
.LVL34:
	.loc 1 388 0
	ld.w	%d1, [%a2] lo:q2
	ld.w	%d14, [%a2] lo:q2
	.loc 1 392 0
	ld.w	%d5, [%SP] 24
	.loc 1 388 0
	mul.f	%d3, %d1, %d14
.LVL35:
	.loc 1 389 0
	ld.w	%d1, [%a4] lo:q3
	ld.w	%d14, [%a4] lo:q3
	.loc 1 392 0
	mul.f	%d0, %d7, %d3
.LVL36:
	.loc 1 389 0
	mul.f	%d6, %d1, %d14
.LVL37:
	.loc 1 392 0
	mov.d	%d14, %a12
	mul.f	%d1, %d5, %d14
	ld.w	%d5, [%SP] 20
	add.f	%d0, %d0, %d1
	mul.f	%d1, %d7, %d13
	mov.d	%d7, %a7
.LVL38:
	add.f	%d0, %d0, %d1
	mul.f	%d1, %d5, %d7
	.loc 1 386 0
	mul.f	%d8, %d8, %d4
.LVL39:
	.loc 1 392 0
	sub.f	%d1, %d0, %d1
	.loc 1 393 0
	ld.w	%d4, [%SP] 28
	mul.f	%d7, %d12, %d6
	mul.f	%d14, %d4, %d14
	.loc 1 392 0
	st.w	[%SP] 8, %d1
.LVL40:
	.loc 1 393 0
	mul.f	%d1, %d8, %d11
.LVL41:
	ld.w	%d8, [%a3] lo:q1
.LVL42:
	sub.f	%d7, %d7, %d14
	mul.f	%d8, %d1, %d8
	ld.w	%d5, [%SP] 16
	mov.d	%d14, %a7
	add.f	%d7, %d7, %d8
	mul.f	%d8, %d5, %d14
	mul.f	%d0, %d9, %d3
	sub.f	%d8, %d7, %d8
	ld.w	%d5, [%SP] 12
	sub.f	%d4, %d8, %d12
	mul.f	%d8, %d9, %d13
	.loc 1 394 0
	ld.w	%d7, [%SP] 16
	.loc 1 393 0
	add.f	%d4, %d4, %d8
	.loc 1 394 0
	ld.w	%d8, [%a2] lo:q2
	.loc 1 393 0
	add.f	%d4, %d4, %d0
	mul.f	%d0, %d12, %d5
	.loc 1 394 0
	mov.d	%d14, %a12
	.loc 1 393 0
	add.f	%d4, %d4, %d0
.LVL43:
	.loc 1 394 0
	mul.f	%d12, %d7, %d14
.LVL44:
	mul.f	%d0, %d1, %d8
	mul.f	%d14, %d2, %d6
	add.f	%d5, %d0, %d12
	mov.d	%d7, %a7
	add.f	%d6, %d5, %d14
.LVL45:
	ld.w	%d5, [%SP] 28
.LBB46:
.LBB47:
	.loc 1 432 0
	movh	%d0, 24375
.LBE47:
.LBE46:
	.loc 1 394 0
	mul.f	%d9, %d5, %d7
.LVL46:
	ld.w	%d5, [%SP] 12
	sub.f	%d9, %d6, %d9
	mul.f	%d14, %d2, %d5
	sub.f	%d6, %d9, %d2
	mul.f	%d9, %d10, %d13
	.loc 1 395 0
	mov.d	%d7, %a12
	.loc 1 394 0
	add.f	%d9, %d6, %d9
	mul.f	%d6, %d10, %d3
.LBB51:
.LBB48:
	.loc 1 432 0
	addi	%d0, %d0, 23007
.LBE48:
.LBE51:
	.loc 1 394 0
	add.f	%d6, %d9, %d6
	add.f	%d2, %d6, %d14
.LVL47:
	.loc 1 395 0
	mul.f	%d5, %d13, %d11
	ld.w	%d6, [%a4] lo:q3
	mul.f	%d11, %d3, %d11
	mul.f	%d5, %d5, %d6
	ld.w	%d6, [%SP] 20
	ld.w	%d14, [%a4] lo:q3
	mul.f	%d13, %d6, %d7
.LVL48:
	mul.f	%d12, %d11, %d14
	sub.f	%d13, %d5, %d13
	ld.w	%d14, [%SP] 24
	.loc 1 396 0
	ld.w	%d5, [%SP] 8
	.loc 1 395 0
	mov.d	%d3, %a7
.LVL49:
	mul.f	%d10, %d14, %d3
.LVL50:
	.loc 1 396 0
	mul.f	%d9, %d4, %d4
	mul.f	%d8, %d5, %d5
	.loc 1 395 0
	add.f	%d11, %d13, %d12
	.loc 1 396 0
	add.f	%d8, %d8, %d9
	.loc 1 395 0
	sub.f	%d7, %d11, %d10
.LVL51:
	.loc 1 396 0
	mul.f	%d9, %d2, %d2
.LBB52:
.LBB49:
	.loc 1 429 0
	mov.d	%d6, %a15
.LBE49:
.LBE52:
	.loc 1 396 0
	add.f	%d8, %d8, %d9
	mul.f	%d9, %d7, %d7
	.loc 1 403 0
	movh.a	%a15, hi:beta
.LVL52:
	.loc 1 396 0
	add.f	%d8, %d8, %d9
.LVL53:
	.loc 1 403 0
	ld.w	%d14, [%SP] 4
.LBB53:
.LBB50:
	.loc 1 429 0
	mul.f	%d1, %d8, %d6
.LVL54:
	.loc 1 432 0
	sha	%d8, -1
.LVL55:
	sub	%d0, %d8
.LVL56:
	.loc 1 434 0
	mul.f	%d9, %d1, %d0
.LVL57:
	mul.f	%d9, %d9, %d0
	sub.f	%d9, %d15, %d9
	mul.f	%d3, %d9, %d0
.LVL58:
	.loc 1 435 0
	mul.f	%d8, %d1, %d3
	mul.f	%d8, %d3, %d8
	sub.f	%d8, %d15, %d8
	mul.f	%d15, %d3, %d8
.LVL59:
.LBE50:
.LBE53:
	.loc 1 403 0
	ld.w	%d8, [%a15] lo:beta
	.loc 1 397 0
	mul.f	%d1, %d5, %d15
.LVL60:
	.loc 1 398 0
	mul.f	%d0, %d4, %d15
.LVL61:
	.loc 1 403 0
	mul.f	%d1, %d8, %d1
.LVL62:
	.loc 1 404 0
	mov.d	%d3, %a6
	.loc 1 403 0
	sub.f	%d14, %d14, %d1
	.loc 1 404 0
	ld.w	%d1, [%a15] lo:beta
	.loc 1 405 0
	mov.d	%d4, %a14
.LVL63:
	.loc 1 404 0
	mul.f	%d0, %d1, %d0
.LVL64:
	.loc 1 405 0
	ld.w	%d1, [%a15] lo:beta
	.loc 1 404 0
	sub.f	%d3, %d3, %d0
	.loc 1 399 0
	mul.f	%d0, %d2, %d15
.LVL65:
	.loc 1 400 0
	mul.f	%d7, %d7, %d15
.LVL66:
	.loc 1 405 0
	mul.f	%d0, %d1, %d0
.LVL67:
	.loc 1 406 0
	mov.d	%d5, %a13
	.loc 1 405 0
	sub.f	%d4, %d4, %d0
	.loc 1 406 0
	ld.w	%d0, [%a15] lo:beta
	.loc 1 404 0
	mov.a	%a6, %d3
.LVL68:
	.loc 1 406 0
	mul.f	%d7, %d0, %d7
.LVL69:
	.loc 1 405 0
	mov.a	%a14, %d4
.LVL70:
	.loc 1 406 0
	sub.f	%d5, %d5, %d7
	.loc 1 403 0
	st.w	[%SP] 4, %d14
.LVL71:
	.loc 1 406 0
	mov.a	%a13, %d5
.LVL72:
.L4:
	.loc 1 410 0
	movh.a	%a15, hi:invSampleFreq
	ld.w	%d0, [%a15] lo:invSampleFreq
	ld.w	%d6, [%SP] 4
	ld.w	%d7, [%a5] lo:q0
	mul.f	%d3, %d6, %d0
	.loc 1 411 0
	mov.d	%d14, %a6
	.loc 1 410 0
	add.f	%d3, %d3, %d7
	.loc 1 412 0
	mov.d	%d4, %a14
	.loc 1 413 0
	mov.d	%d5, %a13
	.loc 1 410 0
	st.w	[%a5] lo:q0, %d3
	.loc 1 411 0
	ld.w	%d7, [%a15] lo:invSampleFreq
	ld.w	%d3, [%a3] lo:q1
	mul.f	%d2, %d14, %d7
	add.f	%d2, %d2, %d3
	st.w	[%a3] lo:q1, %d2
	.loc 1 412 0
	ld.w	%d3, [%a15] lo:invSampleFreq
	ld.w	%d2, [%a2] lo:q2
	mul.f	%d15, %d4, %d3
	add.f	%d15, %d15, %d2
	st.w	[%a2] lo:q2, %d15
	.loc 1 413 0
	ld.w	%d2, [%a15] lo:invSampleFreq
	ld.w	%d15, [%a4] lo:q3
	mul.f	%d4, %d5, %d2
	.loc 1 421 0
	movh.a	%a15, hi:anglesComputed
	.loc 1 413 0
	add.f	%d4, %d4, %d15
	st.w	[%a4] lo:q3, %d4
	.loc 1 416 0
	ld.w	%d7, [%a5] lo:q0
	ld.w	%d5, [%a5] lo:q0
	ld.w	%d3, [%a3] lo:q1
	ld.w	%d0, [%a3] lo:q1
	mul.f	%d7, %d7, %d5
	ld.w	%d2, [%a2] lo:q2
	mul.f	%d3, %d3, %d0
	ld.w	%d6, [%a2] lo:q2
	add.f	%d5, %d7, %d3
	ld.w	%d15, [%a4] lo:q3
	mul.f	%d2, %d2, %d6
	ld.w	%d4, [%a4] lo:q3
	add.f	%d3, %d5, %d2
	mul.f	%d15, %d15, %d4
.LBB54:
.LBB55:
	.loc 1 429 0
	movh	%d5, 16128
.LBE55:
.LBE54:
	.loc 1 416 0
	add.f	%d2, %d3, %d15
.LVL73:
.LBB57:
.LBB56:
	.loc 1 432 0
	movh	%d3, 24375
	.loc 1 429 0
	mul.f	%d5, %d2, %d5
.LVL74:
	.loc 1 432 0
	addi	%d3, %d3, 23007
	sha	%d2, -1
.LVL75:
	sub	%d3, %d2
.LVL76:
	.loc 1 434 0
	mul.f	%d15, %d5, %d3
	movh	%d4, 16320
	mul.f	%d15, %d15, %d3
	sub.f	%d15, %d4, %d15
	mul.f	%d2, %d15, %d3
.LVL77:
	.loc 1 435 0
	mul.f	%d15, %d5, %d2
	mul.f	%d15, %d2, %d15
	sub.f	%d15, %d4, %d15
	mul.f	%d15, %d2, %d15
.LVL78:
.LBE56:
.LBE57:
	.loc 1 417 0
	ld.w	%d2, [%a5] lo:q0
	mul.f	%d2, %d2, %d15
	st.w	[%a5] lo:q0, %d2
	.loc 1 418 0
	ld.w	%d2, [%a3] lo:q1
	mul.f	%d2, %d2, %d15
	st.w	[%a3] lo:q1, %d2
	.loc 1 419 0
	ld.w	%d2, [%a2] lo:q2
	mul.f	%d2, %d2, %d15
	st.w	[%a2] lo:q2, %d2
	.loc 1 420 0
	ld.w	%d2, [%a4] lo:q3
	mul.f	%d15, %d2, %d15
.LVL79:
	st.w	[%a4] lo:q3, %d15
	.loc 1 421 0
	mov	%d15, 0
	st.b	[%a15] lo:anglesComputed, %d15
	ret
.LFE302:
	.size	Madgwick_updateIMU, .-Madgwick_updateIMU
.section .text.Madgwick_update,"ax",@progbits
	.align 1
	.global	Madgwick_update
	.type	Madgwick_update, @function
Madgwick_update:
.LFB300:
	.loc 1 120 0
.LVL80:
	sub.a	%SP, 128
.LCFI1:
	.loc 1 120 0
	ld.w	%d3, [%SP] 140
	ld.w	%d2, [%SP] 144
	.loc 1 128 0
	mov	%d15, 0
	.loc 1 120 0
	ld.w	%d0, [%SP] 136
	.loc 1 128 0
	cmp.f	%d12, %d3, %d15
	cmp.f	%d14, %d2, %d15
	and.t	%d14, %d14,1, %d12,1
	cmp.f	%d12, %d0, %d15
	extr.u	%d13, %d12, 1, 1
	.loc 1 120 0
	ld.w	%d1, [%SP] 132
	st.w	[%SP] 32, %d1
	.loc 1 128 0
	and	%d12, %d14, %d13
	.loc 1 120 0
	mov	%e10, %d4, %d5
	mov	%e8, %d7, %d6
	ld.a	%a5, [%SP] 128
	.loc 1 128 0
	jnz	%d12, .L24
	.loc 1 134 0
	movh	%d1, 15503
	addi	%d1, %d1, -1479
	.loc 1 139 0
	movh.a	%a14, hi:q1
	.loc 1 135 0
	mul.f	%d5, %d10, %d1
.LVL81:
	.loc 1 139 0
	movh.a	%a12, hi:q2
	ld.w	%d10, [%a14] lo:q1
.LVL82:
	.loc 1 134 0
	mul.f	%d4, %d11, %d1
.LVL83:
	.loc 1 139 0
	ld.w	%d7, [%a12] lo:q2
.LVL84:
	movh.a	%a13, hi:q3
	addih	%d10, %d10, 0x8000
	.loc 1 136 0
	mul.f	%d6, %d8, %d1
.LVL85:
	.loc 1 139 0
	mul.f	%d11, %d10, %d4
	ld.w	%d8, [%a13] lo:q3
	mul.f	%d7, %d7, %d5
	mul.f	%d8, %d8, %d6
	sub.f	%d10, %d11, %d7
	movh.a	%a4, 16128
	sub.f	%d7, %d10, %d8
	mov.d	%d8, %a4
	mul.f	%d8, %d7, %d8
	.loc 1 140 0
	movh.a	%a2, hi:q0
	ld.w	%d10, [%a2] lo:q0
	ld.w	%d7, [%a12] lo:q2
	mul.f	%d11, %d10, %d4
	mul.f	%d7, %d7, %d6
	.loc 1 139 0
	st.w	[%SP] 44, %d8
.LVL86:
	.loc 1 140 0
	ld.w	%d8, [%a13] lo:q3
.LVL87:
	add.f	%d10, %d11, %d7
	mul.f	%d8, %d8, %d5
	mov.d	%d11, %a4
	sub.f	%d7, %d10, %d8
	.loc 1 141 0
	ld.w	%d10, [%a2] lo:q0
	.loc 1 140 0
	mul.f	%d11, %d7, %d11
	.loc 1 141 0
	ld.w	%d7, [%a14] lo:q1
	ld.w	%d8, [%a13] lo:q3
	mul.f	%d7, %d7, %d6
	.loc 1 140 0
	st.w	[%SP] 48, %d11
.LVL88:
	.loc 1 141 0
	mul.f	%d11, %d10, %d5
.LVL89:
	mul.f	%d8, %d8, %d4
	sub.f	%d10, %d11, %d7
	mov.d	%d12, %a4
	add.f	%d7, %d10, %d8
	.loc 1 142 0
	ld.w	%d10, [%a2] lo:q0
	ld.w	%d8, [%a14] lo:q1
	.loc 1 141 0
	mul.f	%d12, %d7, %d12
	.loc 1 142 0
	mul.f	%d5, %d8, %d5
.LVL90:
	ld.w	%d7, [%a12] lo:q2
	mul.f	%d6, %d10, %d6
.LVL91:
	mul.f	%d4, %d7, %d4
.LVL92:
	add.f	%d5, %d6, %d5
	mov.d	%d1, %a4
.LVL93:
	sub.f	%d4, %d5, %d4
	.loc 1 145 0
	ld.w	%d11, [%SP] 32
	.loc 1 142 0
	mul.f	%d1, %d4, %d1
	.loc 1 145 0
	mov.d	%d4, %a5
	cmp.f	%d8, %d4, %d15
	and	%d8, %d8, 13
	.loc 1 142 0
	st.w	[%SP] 56, %d1
	.loc 1 145 0
	cmp.f	%d1, %d11, %d15
	and	%d1, %d1, 13
	ne	%d7, %d8, 0
	cmp.f	%d15, %d9, %d15
	or.ne	%d7, %d1, 0
	and	%d15, %d15, 13
	.loc 1 141 0
	st.w	[%SP] 52, %d12
.LVL94:
	.loc 1 145 0
	or.ne	%d7, %d15, 0
	jz	%d7, .L17
	.loc 1 148 0
	mul.f	%d8, %d4, %d4
	mul.f	%d1, %d9, %d9
.LBB58:
.LBB59:
	.loc 1 429 0
	mov.d	%d15, %a4
.LBE59:
.LBE58:
	.loc 1 148 0
	add.f	%d1, %d1, %d8
	mul.f	%d8, %d11, %d11
.LBB69:
.LBB60:
	.loc 1 434 0
	movh	%d4, 16320
.LBE60:
.LBE69:
	.loc 1 148 0
	add.f	%d1, %d1, %d8
.LVL95:
.LBB70:
.LBB61:
	.loc 1 432 0
	movh	%d8, 24375
	.loc 1 429 0
	mul.f	%d12, %d1, %d15
.LVL96:
	.loc 1 432 0
	addi	%d8, %d8, 23007
	sha	%d1, -1
.LVL97:
	sub	%d8, %d1
.LVL98:
	.loc 1 434 0
	mul.f	%d1, %d12, %d8
.LBE61:
.LBE70:
	.loc 1 154 0
	mul.f	%d13, %d0, %d0
.LBB71:
.LBB62:
	.loc 1 434 0
	mul.f	%d1, %d1, %d8
	mov.a	%a7, %d9
	sub.f	%d1, %d4, %d1
.LBE62:
.LBE71:
.LBB72:
.LBB73:
	.loc 1 432 0
	movh	%d9, 24375
.LVL99:
.LBE73:
.LBE72:
.LBB76:
.LBB63:
	.loc 1 434 0
	mul.f	%d1, %d1, %d8
.LVL100:
.LBE63:
.LBE76:
	.loc 1 154 0
	mul.f	%d8, %d3, %d3
.LBB77:
.LBB64:
	.loc 1 435 0
	mul.f	%d12, %d12, %d1
.LVL101:
.LBE64:
.LBE77:
	.loc 1 154 0
	add.f	%d8, %d13, %d8
.LBB78:
.LBB65:
	.loc 1 435 0
	mul.f	%d12, %d1, %d12
.LBE65:
.LBE78:
	.loc 1 154 0
	mul.f	%d13, %d2, %d2
.LBB79:
.LBB66:
	.loc 1 435 0
	sub.f	%d12, %d4, %d12
.LBE66:
.LBE79:
	.loc 1 154 0
	add.f	%d8, %d8, %d13
.LBB80:
.LBB67:
	.loc 1 435 0
	mul.f	%d12, %d1, %d12
.LBE67:
.LBE80:
.LBB81:
.LBB74:
	.loc 1 432 0
	addi	%d9, %d9, 23007
.LBE74:
.LBE81:
.LBB82:
.LBB68:
	.loc 1 435 0
	st.w	[%SP] 72, %d12
.LVL102:
.LBE68:
.LBE82:
.LBB83:
.LBB75:
	.loc 1 429 0
	mul.f	%d12, %d8, %d15
.LVL103:
	.loc 1 432 0
	sha	%d8, -1
.LVL104:
	sub	%d9, %d8
.LVL105:
	.loc 1 434 0
	mul.f	%d8, %d12, %d9
	mul.f	%d8, %d8, %d9
	sub.f	%d8, %d4, %d8
	mul.f	%d8, %d8, %d9
.LVL106:
	.loc 1 435 0
	mul.f	%d12, %d12, %d8
.LVL107:
	mul.f	%d12, %d8, %d12
	sub.f	%d12, %d4, %d12
	mul.f	%d1, %d8, %d12
.LVL108:
.LBE75:
.LBE83:
	.loc 1 160 0
	ld.w	%d8, [%a2] lo:q0
	.loc 1 155 0
	mul.f	%d0, %d0, %d1
	.loc 1 156 0
	mul.f	%d3, %d3, %d1
	.loc 1 157 0
	mul.f	%d1, %d2, %d1
.LVL109:
	.loc 1 160 0
	add.f	%d8, %d8, %d8
	.loc 1 156 0
	mov.a	%a15, %d3
	.loc 1 160 0
	mul.f	%d14, %d8, %d0
	.loc 1 161 0
	ld.w	%d8, [%a2] lo:q0
	.loc 1 155 0
	mov.a	%a3, %d0
.LVL110:
	.loc 1 161 0
	add.f	%d8, %d8, %d8
	mul.f	%d3, %d8, %d3
.LVL111:
	.loc 1 162 0
	ld.w	%d8, [%a2] lo:q0
	add.f	%d8, %d8, %d8
	.loc 1 161 0
	st.w	[%SP] 36, %d3
.LVL112:
	.loc 1 162 0
	mul.f	%d6, %d8, %d1
.LVL113:
	.loc 1 163 0
	ld.w	%d8, [%a14] lo:q1
	add.f	%d8, %d8, %d8
	mul.f	%d5, %d8, %d0
	.loc 1 164 0
	ld.w	%d8, [%a2] lo:q0
	.loc 1 165 0
	ld.w	%d11, [%a14] lo:q1
	.loc 1 164 0
	add.f	%d8, %d8, %d8
	.loc 1 166 0
	ld.w	%d10, [%a12] lo:q2
	.loc 1 165 0
	add.f	%d11, %d11, %d11
	.loc 1 166 0
	add.f	%d10, %d10, %d10
	.loc 1 164 0
	st.w	[%SP] 76, %d8
	.loc 1 167 0
	ld.w	%d8, [%a13] lo:q3
	.loc 1 165 0
	st.w	[%SP] 60, %d11
	.loc 1 167 0
	add.f	%d8, %d8, %d8
	.loc 1 168 0
	ld.w	%d7, [%a2] lo:q0
	.loc 1 163 0
	st.w	[%SP] 40, %d5
.LVL114:
	.loc 1 166 0
	st.w	[%SP] 64, %d10
.LVL115:
	.loc 1 167 0
	st.w	[%SP] 80, %d8
.LVL116:
	.loc 1 168 0
	ld.w	%d8, [%a12] lo:q2
.LVL117:
	.loc 1 169 0
	ld.w	%d11, [%a12] lo:q2
.LVL118:
	ld.w	%d12, [%a13] lo:q3
.LVL119:
	st.w	[%SP] 100, %d12
	.loc 1 170 0
	ld.w	%d12, [%a2] lo:q0
	ld.w	%d13, [%a2] lo:q0
.LVL120:
	.loc 1 171 0
	ld.w	%d0, [%a2] lo:q0
.LVL121:
	.loc 1 170 0
	mul.f	%d9, %d12, %d13
	.loc 1 171 0
	ld.w	%d13, [%a14] lo:q1
	.loc 1 169 0
	st.w	[%SP] 88, %d11
	.loc 1 171 0
	mul.f	%d13, %d0, %d13
	.loc 1 172 0
	ld.w	%d11, [%a2] lo:q0
	ld.w	%d0, [%a12] lo:q2
	.loc 1 173 0
	ld.w	%d15, [%a2] lo:q0
.LVL122:
	.loc 1 172 0
	mul.f	%d0, %d11, %d0
	.loc 1 168 0
	st.w	[%SP] 84, %d7
	st.w	[%SP] 96, %d8
.LVL123:
	.loc 1 171 0
	st.w	[%SP] 68, %d13
.LVL124:
	.loc 1 172 0
	st.w	[%SP] 92, %d0
.LVL125:
	.loc 1 173 0
	st.w	[%SP] 104, %d15
	ld.w	%d3, [%a13] lo:q3
.LVL126:
	.loc 1 174 0
	ld.w	%d5, [%a14] lo:q1
.LVL127:
	ld.w	%d11, [%a14] lo:q1
	.loc 1 173 0
	st.w	[%SP] 108, %d3
.LVL128:
	.loc 1 174 0
	mul.f	%d0, %d5, %d11
.LVL129:
	.loc 1 175 0
	ld.w	%d5, [%a14] lo:q1
	ld.w	%d7, [%a12] lo:q2
.LVL130:
	.loc 1 176 0
	ld.w	%d10, [%a14] lo:q1
.LVL131:
	ld.w	%d11, [%a13] lo:q3
	.loc 1 175 0
	st.w	[%SP] 112, %d5
	.loc 1 176 0
	mul.f	%d11, %d10, %d11
	.loc 1 177 0
	ld.w	%d10, [%a12] lo:q2
	ld.w	%d5, [%a12] lo:q2
	.loc 1 176 0
	mov.a	%a6, %d11
	.loc 1 177 0
	mul.f	%d8, %d10, %d5
.LVL132:
	.loc 1 178 0
	ld.w	%d11, [%a12] lo:q2
	ld.w	%d12, [%a13] lo:q3
	.loc 1 179 0
	ld.w	%d10, [%a13] lo:q3
	ld.w	%d5, [%a13] lo:q3
	.loc 1 175 0
	st.w	[%SP] 116, %d7
.LVL133:
	.loc 1 178 0
	st.w	[%SP] 120, %d11
	.loc 1 182 0
	ld.w	%d7, [%a13] lo:q3
.LVL134:
	ld.w	%d11, [%SP] 36
	.loc 1 179 0
	mul.f	%d13, %d10, %d5
.LVL135:
	.loc 1 182 0
	mov.d	%d5, %a3
	ld.w	%d15, [%a12] lo:q2
.LVL136:
	mul.f	%d2, %d5, %d9
	mul.f	%d10, %d11, %d7
	mul.f	%d5, %d6, %d15
	sub.f	%d10, %d2, %d10
	.loc 1 178 0
	st.w	[%SP] 124, %d12
.LVL137:
	.loc 1 182 0
	mov.d	%d12, %a3
.LVL138:
	add.f	%d10, %d10, %d5
	mul.f	%d5, %d12, %d0
	ld.w	%d15, [%SP] 60
	add.f	%d2, %d10, %d5
	mov.d	%d5, %a15
	ld.w	%d4, [%a12] lo:q2
	mul.f	%d11, %d15, %d5
	ld.w	%d3, [%a13] lo:q3
.LVL139:
	mul.f	%d11, %d11, %d4
	mov.d	%d7, %a3
	add.f	%d2, %d2, %d11
	mul.f	%d11, %d15, %d1
	.loc 1 184 0
	st.w	[%SP] 20, %d0
	.loc 1 182 0
	mul.f	%d12, %d11, %d3
	.loc 1 184 0
	st.w	[%SP] 24, %d1
	.loc 1 182 0
	add.f	%d10, %d2, %d12
	mul.f	%d12, %d7, %d8
	.loc 1 183 0
	ld.w	%d2, [%a13] lo:q3
	.loc 1 182 0
	sub.f	%d10, %d10, %d12
	mul.f	%d12, %d7, %d13
	.loc 1 183 0
	mul.f	%d5, %d5, %d9
	.loc 1 182 0
	sub.f	%d3, %d10, %d12
.LVL140:
	.loc 1 183 0
	ld.w	%d7, [%a14] lo:q1
	mul.f	%d10, %d14, %d2
	ld.w	%d15, [%a12] lo:q2
	add.f	%d2, %d10, %d5
	ld.w	%d12, [%SP] 40
	mul.f	%d10, %d6, %d7
	mul.f	%d11, %d12, %d15
	sub.f	%d10, %d2, %d10
	mov.d	%d15, %a15
	add.f	%d10, %d10, %d11
	mul.f	%d11, %d15, %d0
	ld.w	%d5, [%SP] 64
	sub.f	%d10, %d10, %d11
	mul.f	%d11, %d15, %d8
	ld.w	%d4, [%a13] lo:q3
	add.f	%d10, %d10, %d11
	mul.f	%d11, %d5, %d1
	.loc 1 184 0
	st.a	[%SP] 4, %a2
	.loc 1 183 0
	mul.f	%d12, %d11, %d4
	.loc 1 184 0
	st.a	[%SP] 28, %a3
	.loc 1 183 0
	add.f	%d10, %d10, %d12
	mul.f	%d12, %d15, %d13
	.loc 1 184 0
	st.a	[%SP] 8, %a4
	.loc 1 183 0
	sub.f	%d10, %d10, %d12
.LVL141:
	.loc 1 184 0
	mul.f	%d12, %d3, %d3
	mul.f	%d4, %d10, %d10
	st.a	[%SP] 12, %a5
	add.f	%d4, %d12, %d4
	st.a	[%SP] 16, %a6
	st.a	[%SP]0, %a7
	call	sqrtf
.LVL142:
	.loc 1 185 0
	ld.w	%d3, [%a12] lo:q2
	ld.w	%d11, [%SP] 36
	ld.w	%d7, [%a14] lo:q1
	ld.w	%d1, [%SP] 24
	mul.f	%d6, %d11, %d7
	mul.f	%d14, %d14, %d3
.LVL143:
	mul.f	%d12, %d1, %d9
	sub.f	%d14, %d6, %d14
	ld.w	%d15, [%a13] lo:q3
	add.f	%d14, %d14, %d12
	ld.w	%d12, [%SP] 40
	ld.w	%d0, [%SP] 20
	mul.f	%d10, %d12, %d15
.LVL144:
	ld.w	%d15, [%SP] 64
	add.f	%d14, %d14, %d10
	mul.f	%d10, %d1, %d0
	mov.d	%d3, %a15
	ld.w	%d4, [%a13] lo:q3
	sub.f	%d14, %d14, %d10
	mul.f	%d10, %d15, %d3
	.loc 1 190 0
	ld.a	%a6, [%SP] 16
	.loc 1 185 0
	mul.f	%d10, %d10, %d4
	.loc 1 168 0
	ld.w	%d7, [%SP] 84
	.loc 1 185 0
	add.f	%d14, %d14, %d10
	mul.f	%d10, %d1, %d8
	.loc 1 168 0
	ld.w	%d11, [%SP] 96
	.loc 1 185 0
	sub.f	%d14, %d14, %d10
	mul.f	%d10, %d1, %d13
	.loc 1 190 0
	mov.d	%d5, %a6
	.loc 1 185 0
	add.f	%d10, %d14, %d10
.LVL145:
	.loc 1 168 0
	add.f	%d14, %d7, %d7
	.loc 1 149 0
	ld.a	%a7, [%SP]0
	.loc 1 190 0
	add.f	%d6, %d5, %d5
	.loc 1 168 0
	mul.f	%d5, %d14, %d11
	.loc 1 149 0
	ld.w	%d15, [%SP] 72
	.loc 1 150 0
	ld.a	%a5, [%SP] 12
	.loc 1 190 0
	sub.f	%d14, %d6, %d5
	ld.a	%a4, [%SP] 8
	.loc 1 149 0
	mov.d	%d12, %a7
	.loc 1 169 0
	ld.w	%d5, [%SP] 88
	.loc 1 149 0
	mul.f	%d6, %d12, %d15
	.loc 1 190 0
	ld.w	%d3, [%SP] 68
	.loc 1 169 0
	add.f	%d9, %d5, %d5
.LVL146:
	ld.w	%d11, [%SP] 100
	.loc 1 150 0
	mov.d	%d12, %a5
	.loc 1 190 0
	sub.f	%d6, %d14, %d6
	.loc 1 150 0
	mul.f	%d14, %d12, %d15
	.loc 1 190 0
	mov.d	%d15, %a4
	add.f	%d7, %d3, %d3
	sub.f	%d5, %d15, %d8
	.loc 1 169 0
	mul.f	%d9, %d9, %d11
	.loc 1 190 0
	sub.f	%d5, %d5, %d13
	add.f	%d9, %d7, %d9
	ld.w	%d7, [%SP] 92
	mov.d	%d3, %a6
	mov.a	%a7, %d6
	sub.f	%d6, %d9, %d14
	mul.f	%d14, %d5, %d2
	sub.f	%d5, %d3, %d7
	ld.a	%a3, [%SP] 28
	mul.f	%d5, %d5, %d10
	addih	%d12, %d2, 0x8000
	add.f	%d14, %d14, %d5
	mov.d	%d11, %a3
	sub.f	%d15, %d14, %d11
	.loc 1 187 0
	add.f	%d4, %d10, %d10
	.loc 1 175 0
	ld.w	%d7, [%SP] 112
	ld.w	%d11, [%SP] 116
	.loc 1 190 0
	st.w	[%SP] 40, %d12
.LVL147:
	.loc 1 175 0
	mul.f	%d12, %d7, %d11
	.loc 1 173 0
	ld.w	%d7, [%SP] 104
	ld.w	%d11, [%SP] 108
	.loc 1 187 0
	st.w	[%SP] 36, %d4
.LVL148:
	.loc 1 173 0
	mul.f	%d4, %d7, %d11
.LVL149:
	.loc 1 178 0
	ld.w	%d7, [%SP] 120
	ld.w	%d11, [%SP] 124
	.loc 1 190 0
	sub.f	%d4, %d12, %d4
	.loc 1 178 0
	mul.f	%d13, %d7, %d11
.LVL150:
	.loc 1 190 0
	ld.w	%d7, [%SP] 68
	mul.f	%d12, %d4, %d2
	add.f	%d13, %d7, %d13
	mov.d	%d11, %a15
	mul.f	%d13, %d13, %d10
	ld.w	%d9, [%a12] lo:q2
	add.f	%d13, %d12, %d13
	ld.w	%d5, [%a13] lo:q3
	sub.f	%d11, %d13, %d11
	ld.w	%d3, [%a14] lo:q1
	ld.w	%d13, [%a12] lo:q2
	ld.w	%d12, [%SP] 92
	mov.d	%d4, %a6
	mov.a	%a15, %d11
.LVL151:
	add.f	%d11, %d12, %d4
	mov.d	%d7, %a4
	mul.f	%d12, %d11, %d2
	sub.f	%d11, %d7, %d0
	ld.w	%d7, [%SP] 60
	sub.f	%d11, %d11, %d8
	mul.f	%d9, %d10, %d9
	mul.f	%d11, %d11, %d10
	mul.f	%d9, %d9, %d15
	add.f	%d12, %d12, %d11
	ld.w	%d11, [%SP] 64
	sub.f	%d12, %d12, %d1
	mov.d	%d1, %a7
	mov.a	%a5, %d12
	mul.f	%d12, %d11, %d1
	mul.f	%d11, %d6, %d7
	mov.d	%d1, %a15
	sub.f	%d12, %d11, %d12
	ld.w	%d11, [%SP] 40
	sub.f	%d12, %d12, %d9
	mul.f	%d9, %d11, %d5
	mul.f	%d5, %d10, %d3
	mul.f	%d13, %d2, %d13
	add.f	%d5, %d9, %d5
	mov.d	%d3, %a5
	mul.f	%d5, %d5, %d1
	mul.f	%d13, %d13, %d3
	add.f	%d12, %d12, %d5
	.loc 1 191 0
	add.f	%d0, %d0, %d0
	movh	%d5, 16256
	.loc 1 190 0
	add.f	%d13, %d12, %d13
	.loc 1 191 0
	sub.f	%d5, %d5, %d0
	.loc 1 151 0
	ld.w	%d11, [%SP] 72
	.loc 1 191 0
	add.f	%d0, %d8, %d8
	.loc 1 151 0
	ld.w	%d8, [%SP] 32
.LVL152:
	.loc 1 191 0
	sub.f	%d0, %d5, %d0
	.loc 1 151 0
	mul.f	%d1, %d8, %d11
	.loc 1 190 0
	mov.a	%a6, %d13
.LVL153:
	.loc 1 191 0
	ld.w	%d12, [%SP] 80
	ld.w	%d13, [%a14] lo:q1
.LVL154:
	ld.w	%d8, [%SP] 76
	movh	%d4, 16512
	mov.d	%d3, %a7
	sub.f	%d14, %d0, %d1
	ld.a	%a2, [%SP] 4
	mul.f	%d9, %d12, %d3
	mul.f	%d13, %d13, %d4
	mul.f	%d12, %d8, %d6
	mul.f	%d13, %d13, %d14
	add.f	%d12, %d9, %d12
	ld.w	%d5, [%a13] lo:q3
	ld.w	%d11, [%a12] lo:q2
	ld.w	%d1, [%a2] lo:q0
	sub.f	%d12, %d12, %d13
	mul.f	%d9, %d2, %d11
	mul.f	%d5, %d10, %d5
	mul.f	%d1, %d10, %d1
	mul.f	%d5, %d15, %d5
	add.f	%d1, %d9, %d1
	mov.d	%d11, %a15
	add.f	%d12, %d12, %d5
	mul.f	%d1, %d11, %d1
	ld.w	%d7, [%a13] lo:q3
	add.f	%d1, %d12, %d1
	ld.w	%d0, [%a14] lo:q1
	ld.w	%d12, [%SP] 36
	mul.f	%d5, %d2, %d7
	mul.f	%d0, %d12, %d0
	mov.d	%d3, %a5
	sub.f	%d0, %d5, %d0
	.loc 1 192 0
	ld.w	%d5, [%a12] lo:q2
	.loc 1 191 0
	mul.f	%d0, %d3, %d0
	.loc 1 192 0
	ld.w	%d13, [%a12] lo:q2
	.loc 1 191 0
	add.f	%d0, %d1, %d0
	.loc 1 192 0
	ld.w	%d12, [%a2] lo:q0
	.loc 1 191 0
	mov.a	%a3, %d0
.LVL155:
	.loc 1 186 0
	add.f	%d0, %d2, %d2
.LVL156:
	.loc 1 192 0
	ld.w	%d7, [%a14] lo:q1
	addih	%d3, %d0, 0x8000
	ld.w	%d1, [%SP] 76
	ld.w	%d0, [%a13] lo:q3
.LVL157:
	ld.w	%d8, [%a2] lo:q0
	st.w	[%SP] 32, %d8
	mov.d	%d8, %a7
	mul.f	%d11, %d1, %d8
	ld.w	%d8, [%SP] 80
	mul.f	%d12, %d10, %d12
	mul.f	%d1, %d8, %d6
	mul.f	%d8, %d5, %d4
	mul.f	%d5, %d3, %d13
	mul.f	%d8, %d14, %d8
	sub.f	%d13, %d5, %d12
	sub.f	%d11, %d1, %d11
	mul.f	%d12, %d2, %d7
	mul.f	%d0, %d10, %d0
	sub.f	%d11, %d11, %d8
	mul.f	%d13, %d15, %d13
	add.f	%d0, %d12, %d0
	ld.w	%d9, [%a12] lo:q2
	add.f	%d13, %d11, %d13
	ld.w	%d12, [%SP] 32
	mov.d	%d11, %a15
	ld.w	%d4, [%SP] 36
	mul.f	%d0, %d11, %d0
	mul.f	%d1, %d2, %d12
	mul.f	%d5, %d4, %d9
	add.f	%d0, %d13, %d0
	sub.f	%d9, %d1, %d5
	mov.d	%d5, %a5
	mul.f	%d9, %d5, %d9
	.loc 1 193 0
	ld.w	%d11, [%a13] lo:q3
	.loc 1 192 0
	add.f	%d4, %d0, %d9
.LVL158:
	.loc 1 193 0
	ld.w	%d9, [%a14] lo:q1
	ld.w	%d0, [%a2] lo:q0
	ld.w	%d5, [%a12] lo:q2
	ld.w	%d1, [%a14] lo:q1
	ld.w	%d7, [%SP] 60
	mov.d	%d12, %a7
	mul.f	%d8, %d7, %d12
	mul.f	%d11, %d3, %d11
	mul.f	%d9, %d10, %d9
	ld.w	%d7, [%SP] 64
	add.f	%d14, %d11, %d9
	mul.f	%d6, %d7, %d6
	mul.f	%d14, %d15, %d14
	add.f	%d6, %d8, %d6
	ld.w	%d8, [%SP] 40
	add.f	%d14, %d6, %d14
	mul.f	%d5, %d10, %d5
	mul.f	%d6, %d8, %d0
	mov.d	%d11, %a15
	add.f	%d10, %d6, %d5
.LVL159:
	mov.d	%d15, %a5
	mul.f	%d13, %d11, %d10
	mul.f	%d11, %d2, %d1
	add.f	%d10, %d14, %d13
	mul.f	%d12, %d15, %d11
	.loc 1 194 0
	mov.d	%d1, %a6
	mov.d	%d3, %a3
	.loc 1 193 0
	add.f	%d2, %d10, %d12
.LVL160:
	.loc 1 194 0
	mul.f	%d11, %d1, %d1
	mul.f	%d10, %d3, %d3
.LBB84:
.LBB85:
	.loc 1 429 0
	mov.d	%d5, %a4
.LBE85:
.LBE84:
	.loc 1 194 0
	add.f	%d11, %d11, %d10
	mul.f	%d10, %d4, %d4
.LBB94:
.LBB86:
	.loc 1 432 0
	movh	%d7, 24375
.LBE86:
.LBE94:
	.loc 1 194 0
	add.f	%d11, %d11, %d10
	mul.f	%d10, %d2, %d2
.LBB95:
.LBB87:
	.loc 1 432 0
	addi	%d7, %d7, 23007
.LBE87:
.LBE95:
	.loc 1 194 0
	add.f	%d1, %d11, %d10
.LVL161:
.LBB96:
.LBB88:
	.loc 1 434 0
	movh	%d8, 16320
	.loc 1 429 0
	mul.f	%d0, %d1, %d5
.LVL162:
	.loc 1 432 0
	sha	%d10, %d1, -1
	sub	%d7, %d10
.LVL163:
	.loc 1 434 0
	mul.f	%d10, %d0, %d7
.LBE88:
.LBE96:
	.loc 1 201 0
	movh.a	%a15, hi:beta
.LBB97:
.LBB89:
	.loc 1 434 0
	mul.f	%d10, %d10, %d7
.LBE89:
.LBE97:
	.loc 1 195 0
	mov.d	%d11, %a6
.LBB98:
.LBB90:
	.loc 1 434 0
	sub.f	%d10, %d8, %d10
.LBE90:
.LBE98:
	.loc 1 201 0
	ld.w	%d12, [%SP] 44
.LBB99:
.LBB91:
	.loc 1 434 0
	mul.f	%d3, %d10, %d7
.LVL164:
.LBE91:
.LBE99:
	.loc 1 202 0
	ld.w	%d5, [%SP] 48
.LBB100:
.LBB92:
	.loc 1 435 0
	mul.f	%d9, %d0, %d3
.LBE92:
.LBE100:
	.loc 1 203 0
	ld.w	%d7, [%SP] 52
.LBB101:
.LBB93:
	.loc 1 435 0
	mul.f	%d9, %d3, %d9
	sub.f	%d9, %d8, %d9
	mul.f	%d15, %d3, %d9
.LVL165:
.LBE93:
.LBE101:
	.loc 1 201 0
	ld.w	%d9, [%a15] lo:beta
	.loc 1 195 0
	mul.f	%d8, %d11, %d15
.LVL166:
	.loc 1 196 0
	mov.d	%d3, %a3
	.loc 1 201 0
	mul.f	%d8, %d9, %d8
.LVL167:
	.loc 1 196 0
	mul.f	%d1, %d3, %d15
.LVL168:
	.loc 1 201 0
	sub.f	%d12, %d12, %d8
	.loc 1 202 0
	ld.w	%d8, [%a15] lo:beta
	.loc 1 197 0
	mul.f	%d0, %d4, %d15
.LVL169:
	.loc 1 202 0
	mul.f	%d1, %d8, %d1
.LVL170:
	.loc 1 204 0
	ld.w	%d8, [%SP] 56
	.loc 1 202 0
	sub.f	%d5, %d5, %d1
	.loc 1 203 0
	ld.w	%d1, [%a15] lo:beta
	.loc 1 201 0
	st.w	[%SP] 44, %d12
.LVL171:
	.loc 1 203 0
	mul.f	%d0, %d1, %d0
.LVL172:
	.loc 1 204 0
	ld.w	%d1, [%a15] lo:beta
	.loc 1 203 0
	sub.f	%d7, %d7, %d0
	.loc 1 198 0
	mul.f	%d0, %d2, %d15
.LVL173:
	.loc 1 202 0
	st.w	[%SP] 48, %d5
.LVL174:
	.loc 1 204 0
	mul.f	%d0, %d1, %d0
.LVL175:
	.loc 1 203 0
	st.w	[%SP] 52, %d7
.LVL176:
	.loc 1 204 0
	sub.f	%d8, %d8, %d0
	st.w	[%SP] 56, %d8
.LVL177:
.L17:
	.loc 1 208 0
	movh.a	%a15, hi:invSampleFreq
	ld.w	%d0, [%a15] lo:invSampleFreq
	ld.w	%d11, [%SP] 44
	ld.w	%d7, [%a2] lo:q0
	mul.f	%d3, %d11, %d0
	.loc 1 209 0
	ld.w	%d12, [%SP] 48
	.loc 1 208 0
	add.f	%d3, %d3, %d7
	.loc 1 210 0
	ld.w	%d1, [%SP] 52
	.loc 1 208 0
	st.w	[%a2] lo:q0, %d3
	.loc 1 209 0
	ld.w	%d7, [%a15] lo:invSampleFreq
	ld.w	%d3, [%a14] lo:q1
	mul.f	%d2, %d12, %d7
	add.f	%d2, %d2, %d3
	st.w	[%a14] lo:q1, %d2
	.loc 1 210 0
	ld.w	%d3, [%a15] lo:invSampleFreq
	ld.w	%d2, [%a12] lo:q2
	mul.f	%d15, %d1, %d3
	.loc 1 211 0
	ld.w	%d3, [%SP] 56
	.loc 1 210 0
	add.f	%d15, %d15, %d2
	st.w	[%a12] lo:q2, %d15
	.loc 1 211 0
	ld.w	%d2, [%a15] lo:invSampleFreq
	ld.w	%d15, [%a13] lo:q3
	mul.f	%d4, %d3, %d2
	.loc 1 219 0
	movh.a	%a15, hi:anglesComputed
	.loc 1 211 0
	add.f	%d4, %d4, %d15
	st.w	[%a13] lo:q3, %d4
	.loc 1 214 0
	ld.w	%d7, [%a2] lo:q0
	ld.w	%d5, [%a2] lo:q0
	ld.w	%d3, [%a14] lo:q1
	ld.w	%d0, [%a14] lo:q1
	mul.f	%d7, %d7, %d5
	ld.w	%d2, [%a12] lo:q2
	mul.f	%d3, %d3, %d0
	ld.w	%d6, [%a12] lo:q2
	add.f	%d5, %d7, %d3
	ld.w	%d15, [%a13] lo:q3
	mul.f	%d2, %d2, %d6
	ld.w	%d4, [%a13] lo:q3
	add.f	%d3, %d5, %d2
	mul.f	%d15, %d15, %d4
.LBB102:
.LBB103:
	.loc 1 429 0
	movh	%d5, 16128
.LBE103:
.LBE102:
	.loc 1 214 0
	add.f	%d2, %d3, %d15
.LVL178:
.LBB105:
.LBB104:
	.loc 1 432 0
	movh	%d3, 24375
	.loc 1 429 0
	mul.f	%d5, %d2, %d5
.LVL179:
	.loc 1 432 0
	addi	%d3, %d3, 23007
	sha	%d2, -1
.LVL180:
	sub	%d3, %d2
.LVL181:
	.loc 1 434 0
	mul.f	%d15, %d5, %d3
	movh	%d4, 16320
	mul.f	%d15, %d15, %d3
	sub.f	%d15, %d4, %d15
	mul.f	%d2, %d15, %d3
.LVL182:
	.loc 1 435 0
	mul.f	%d15, %d5, %d2
	mul.f	%d15, %d2, %d15
	sub.f	%d15, %d4, %d15
	mul.f	%d15, %d2, %d15
.LVL183:
.LBE104:
.LBE105:
	.loc 1 215 0
	ld.w	%d2, [%a2] lo:q0
	mul.f	%d2, %d2, %d15
	st.w	[%a2] lo:q0, %d2
	.loc 1 216 0
	ld.w	%d2, [%a14] lo:q1
	mul.f	%d2, %d2, %d15
	st.w	[%a14] lo:q1, %d2
	.loc 1 217 0
	ld.w	%d2, [%a12] lo:q2
	mul.f	%d2, %d2, %d15
	st.w	[%a12] lo:q2, %d2
	.loc 1 218 0
	ld.w	%d2, [%a13] lo:q3
	mul.f	%d15, %d2, %d15
.LVL184:
	st.w	[%a13] lo:q3, %d15
	.loc 1 219 0
	mov	%d15, 0
	st.b	[%a15] lo:anglesComputed, %d15
	ret
.LVL185:
.L24:
	.loc 1 220 0
	lea	%SP, [%SP] 128
	.loc 1 129 0
	j	Madgwick_updateIMU
.LVL186:
.LFE300:
	.size	Madgwick_update, .-Madgwick_update
.section .text.Madgwick_update2,"ax",@progbits
	.align 1
	.global	Madgwick_update2
	.type	Madgwick_update2, @function
Madgwick_update2:
.LFB301:
	.loc 1 223 0
.LVL187:
	sub.a	%SP, 168
.LCFI2:
	.loc 1 223 0
	ld.w	%d12, [%SP] 180
	ld.w	%d11, [%SP] 184
	.loc 1 242 0
	mov	%d15, 0
	.loc 1 223 0
	ld.w	%d13, [%SP] 176
	.loc 1 242 0
	cmp.f	%d2, %d12, %d15
	cmp.f	%d8, %d11, %d15
	and.t	%d8, %d8,1, %d2,1
	cmp.f	%d2, %d13, %d15
	extr.u	%d1, %d2, 1, 1
	.loc 1 223 0
	st.w	[%SP] 96, %d4
	st.w	[%SP] 100, %d5
	st.w	[%SP] 104, %d6
	.loc 1 242 0
	and	%d2, %d8, %d1
	.loc 1 223 0
	mov	%d9, %d7
	.loc 1 243 0
	ld.w	%d0, [%SP] 168
	.loc 1 242 0
	jnz	%d2, .L38
.LVL188:
	.loc 1 254 0
	ld.w	%d1, [%SP] 172
	cmp.f	%d3, %d0, %d15
	cmp.f	%d2, %d1, %d15
	and	%d3, %d3, 13
	and	%d2, %d2, 13
	ne	%d1, %d3, 0
	cmp.f	%d15, %d7, %d15
	or.ne	%d1, %d2, 0
	and	%d15, %d15, 13
	or.ne	%d1, %d15, 0
	movh.a	%a5, hi:q0
	movh.a	%a14, hi:q1
	movh.a	%a12, hi:q2
	movh.a	%a13, hi:q3
	movh.a	%a7, hi:invSampleFreq
	jz	%d1, .L31
	.loc 1 257 0
	mul.f	%d15, %d0, %d0
	mul.f	%d3, %d7, %d7
	ld.w	%d0, [%SP] 172
	add.f	%d3, %d3, %d15
	mul.f	%d15, %d0, %d0
.LBB106:
.LBB107:
	.loc 1 429 0
	movh.a	%a6, 16128
.LBE107:
.LBE106:
	.loc 1 257 0
	add.f	%d3, %d3, %d15
.LVL189:
.LBB116:
.LBB108:
	.loc 1 429 0
	mov.d	%d1, %a6
	.loc 1 432 0
	movh	%d10, 24375
	.loc 1 429 0
	mul.f	%d2, %d3, %d1
.LVL190:
	.loc 1 432 0
	addi	%d10, %d10, 23007
	sha	%d3, -1
.LVL191:
	sub	%d10, %d3
.LVL192:
	.loc 1 434 0
	mul.f	%d3, %d2, %d10
	movh	%d4, 16320
.LVL193:
	mul.f	%d3, %d3, %d10
.LBE108:
.LBE116:
	.loc 1 263 0
	mul.f	%d1, %d12, %d12
.LBB117:
.LBB109:
	.loc 1 434 0
	sub.f	%d3, %d4, %d3
.LBE109:
.LBE117:
.LBB118:
.LBB119:
	.loc 1 429 0
	mov.d	%d5, %a6
.LVL194:
.LBE119:
.LBE118:
.LBB123:
.LBB110:
	.loc 1 434 0
	mul.f	%d3, %d3, %d10
.LVL195:
.LBE110:
.LBE123:
	.loc 1 263 0
	mul.f	%d10, %d13, %d13
.LBB124:
.LBB111:
	.loc 1 435 0
	mul.f	%d2, %d2, %d3
.LVL196:
.LBE111:
.LBE124:
	.loc 1 263 0
	add.f	%d10, %d10, %d1
.LBB125:
.LBB112:
	.loc 1 435 0
	mul.f	%d2, %d3, %d2
.LBE112:
.LBE125:
	.loc 1 263 0
	mul.f	%d1, %d11, %d11
.LBB126:
.LBB113:
	.loc 1 435 0
	sub.f	%d2, %d4, %d2
.LBE113:
.LBE126:
	.loc 1 263 0
	add.f	%d10, %d10, %d1
.LBB127:
.LBB114:
	.loc 1 435 0
	mul.f	%d2, %d3, %d2
.LBE114:
.LBE127:
.LBB128:
.LBB120:
	.loc 1 432 0
	movh	%d15, 24375
.LVL197:
	.loc 1 429 0
	mul.f	%d1, %d10, %d5
	.loc 1 432 0
	addi	%d15, %d15, 23007
	sha	%d10, -1
	sub	%d10, %d15, %d10
.LBE120:
.LBE128:
.LBB129:
.LBB115:
	.loc 1 435 0
	st.w	[%SP] 72, %d2
.LVL198:
.LBE115:
.LBE129:
.LBB130:
.LBB121:
	.loc 1 434 0
	mul.f	%d2, %d1, %d10
.LVL199:
.LBE121:
.LBE130:
	.loc 1 269 0
	ld.w	%d14, [%a5] lo:q0
.LBB131:
.LBB122:
	.loc 1 434 0
	mul.f	%d2, %d2, %d10
	sub.f	%d2, %d4, %d2
	mul.f	%d3, %d2, %d10
.LVL200:
	.loc 1 435 0
	mul.f	%d2, %d1, %d3
	mul.f	%d2, %d3, %d2
	sub.f	%d2, %d4, %d2
	mul.f	%d2, %d3, %d2
.LVL201:
.LBE122:
.LBE131:
	.loc 1 264 0
	mul.f	%d5, %d13, %d2
.LVL202:
	.loc 1 265 0
	mul.f	%d12, %d12, %d2
	.loc 1 266 0
	mul.f	%d11, %d11, %d2
	.loc 1 269 0
	add.f	%d14, %d14, %d14
	.loc 1 265 0
	mov.a	%a15, %d12
.LVL203:
	.loc 1 269 0
	mul.f	%d6, %d14, %d5
.LVL204:
	.loc 1 270 0
	ld.w	%d14, [%a5] lo:q0
	.loc 1 266 0
	mov.a	%a2, %d11
.LVL205:
	.loc 1 270 0
	add.f	%d14, %d14, %d14
	mul.f	%d0, %d14, %d12
	.loc 1 271 0
	ld.w	%d14, [%a5] lo:q0
	add.f	%d14, %d14, %d14
	.loc 1 270 0
	st.w	[%SP] 52, %d0
.LVL206:
	.loc 1 271 0
	mul.f	%d7, %d14, %d11
.LVL207:
	.loc 1 272 0
	ld.w	%d14, [%a14] lo:q1
	add.f	%d14, %d14, %d14
	mul.f	%d14, %d14, %d5
	st.w	[%SP] 56, %d14
.LVL208:
	.loc 1 273 0
	ld.w	%d14, [%a5] lo:q0
.LVL209:
	add.f	%d14, %d14, %d14
	st.w	[%SP] 76, %d14
.LVL210:
	.loc 1 274 0
	ld.w	%d14, [%a14] lo:q1
.LVL211:
	add.f	%d14, %d14, %d14
	st.w	[%SP] 60, %d14
.LVL212:
	.loc 1 275 0
	ld.w	%d14, [%a12] lo:q2
.LVL213:
	add.f	%d14, %d14, %d14
	st.w	[%SP] 64, %d14
.LVL214:
	.loc 1 276 0
	ld.w	%d14, [%a13] lo:q3
.LVL215:
	.loc 1 277 0
	ld.w	%d1, [%a5] lo:q0
.LVL216:
	ld.w	%d3, [%a12] lo:q2
	.loc 1 278 0
	ld.w	%d13, [%a12] lo:q2
	.loc 1 277 0
	st.w	[%SP] 84, %d1
	.loc 1 278 0
	ld.w	%d15, [%a13] lo:q3
	st.w	[%SP] 88, %d13
	.loc 1 279 0
	ld.w	%d1, [%a5] lo:q0
	ld.w	%d13, [%a5] lo:q0
	.loc 1 280 0
	ld.w	%d2, [%a5] lo:q0
.LVL217:
	.loc 1 279 0
	mul.f	%d8, %d1, %d13
	.loc 1 280 0
	ld.w	%d1, [%a14] lo:q1
	.loc 1 278 0
	st.w	[%SP] 112, %d15
	.loc 1 280 0
	mul.f	%d1, %d2, %d1
	.loc 1 281 0
	ld.w	%d15, [%a5] lo:q0
	.loc 1 276 0
	add.f	%d14, %d14, %d14
	.loc 1 277 0
	st.w	[%SP] 108, %d3
	.loc 1 280 0
	st.w	[%SP] 68, %d1
	.loc 1 281 0
	ld.w	%d1, [%a12] lo:q2
	.loc 1 276 0
	st.w	[%SP] 80, %d14
.LVL218:
	.loc 1 281 0
	mul.f	%d1, %d15, %d1
	.loc 1 282 0
	ld.w	%d0, [%a5] lo:q0
.LVL219:
	.loc 1 281 0
	st.w	[%SP] 92, %d1
.LVL220:
	.loc 1 282 0
	st.w	[%SP] 116, %d0
	ld.w	%d1, [%a13] lo:q3
.LVL221:
	.loc 1 283 0
	ld.w	%d2, [%a14] lo:q1
	ld.w	%d13, [%a14] lo:q1
	.loc 1 284 0
	ld.w	%d3, [%a14] lo:q1
.LVL222:
	.loc 1 283 0
	mul.f	%d13, %d2, %d13
	.loc 1 284 0
	st.w	[%SP] 120, %d3
	.loc 1 283 0
	mov.a	%a3, %d13
.LVL223:
	.loc 1 284 0
	ld.w	%d13, [%a12] lo:q2
.LVL224:
	st.w	[%SP] 124, %d13
.LVL225:
	.loc 1 285 0
	ld.w	%d2, [%a14] lo:q1
	ld.w	%d13, [%a13] lo:q3
.LVL226:
	.loc 1 291 0
	ld.w	%d3, [%SP] 52
.LVL227:
	.loc 1 285 0
	mul.f	%d13, %d2, %d13
	.loc 1 286 0
	ld.w	%d2, [%a12] lo:q2
	.loc 1 285 0
	mov.a	%a4, %d13
.LVL228:
	.loc 1 286 0
	ld.w	%d13, [%a12] lo:q2
.LVL229:
	.loc 1 287 0
	ld.w	%d15, [%a12] lo:q2
	.loc 1 286 0
	mul.f	%d14, %d2, %d13
.LVL230:
	.loc 1 287 0
	ld.w	%d0, [%a13] lo:q3
.LVL231:
	.loc 1 288 0
	ld.w	%d2, [%a13] lo:q3
	ld.w	%d13, [%a13] lo:q3
	.loc 1 291 0
	ld.w	%d10, [%a13] lo:q3
	.loc 1 287 0
	st.w	[%SP] 128, %d15
	.loc 1 291 0
	ld.w	%d12, [%a12] lo:q2
.LVL232:
	.loc 1 288 0
	mul.f	%d15, %d2, %d13
	.loc 1 291 0
	mul.f	%d10, %d3, %d10
	mul.f	%d2, %d5, %d8
	mul.f	%d13, %d7, %d12
	sub.f	%d10, %d2, %d10
	mov.d	%d4, %a3
	add.f	%d2, %d10, %d13
	mul.f	%d13, %d5, %d4
	mov.d	%d3, %a15
	add.f	%d10, %d2, %d13
	ld.w	%d13, [%SP] 60
	ld.w	%d11, [%a12] lo:q2
.LVL233:
	mul.f	%d2, %d13, %d3
	mov.d	%d4, %a2
	mul.f	%d2, %d2, %d11
	mul.f	%d13, %d13, %d4
	.loc 1 287 0
	st.w	[%SP] 132, %d0
.LVL234:
	.loc 1 291 0
	ld.w	%d0, [%a13] lo:q3
.LVL235:
	add.f	%d10, %d10, %d2
	mul.f	%d13, %d13, %d0
	.loc 1 292 0
	mov.d	%d4, %a3
	.loc 1 291 0
	add.f	%d2, %d10, %d13
	mul.f	%d13, %d5, %d14
	.loc 1 292 0
	ld.w	%d10, [%a13] lo:q3
	.loc 1 291 0
	sub.f	%d2, %d2, %d13
	mul.f	%d13, %d5, %d15
	.loc 1 292 0
	ld.w	%d11, [%a14] lo:q1
	.loc 1 291 0
	sub.f	%d3, %d2, %d13
.LVL236:
	.loc 1 292 0
	mov.d	%d2, %a15
	mul.f	%d13, %d2, %d8
	mul.f	%d10, %d6, %d10
	mul.f	%d11, %d7, %d11
	ld.w	%d12, [%a12] lo:q2
	add.f	%d10, %d10, %d13
	ld.w	%d7, [%SP] 56
.LVL237:
	sub.f	%d10, %d10, %d11
	mul.f	%d2, %d7, %d12
	mov.d	%d13, %a15
	add.f	%d10, %d10, %d2
	mul.f	%d2, %d13, %d4
	ld.w	%d7, [%SP] 64
	sub.f	%d10, %d10, %d2
	mul.f	%d2, %d13, %d14
	ld.w	%d0, [%a13] lo:q3
	add.f	%d10, %d10, %d2
	mov.d	%d2, %a2
	mul.f	%d13, %d7, %d2
	mov.d	%d4, %a15
	mul.f	%d13, %d13, %d0
	.loc 1 293 0
	mul.f	%d2, %d3, %d3
	.loc 1 292 0
	add.f	%d10, %d10, %d13
	mul.f	%d13, %d4, %d15
	.loc 1 293 0
	st.w	[%SP] 32, %d1
	.loc 1 292 0
	sub.f	%d10, %d10, %d13
.LVL238:
	.loc 1 293 0
	st.w	[%SP] 44, %d5
	mul.f	%d4, %d10, %d10
	st.w	[%SP] 36, %d6
	add.f	%d4, %d2, %d4
	st.a	[%SP] 40, %a2
	st.a	[%SP] 28, %a3
	st.a	[%SP] 24, %a4
	st.a	[%SP] 16, %a5
	st.a	[%SP] 20, %a6
	st.a	[%SP] 12, %a7
	call	sqrtf
.LVL239:
	.loc 1 294 0
	ld.w	%d6, [%SP] 36
	ld.w	%d11, [%a12] lo:q2
	ld.a	%a2, [%SP] 40
	ld.w	%d10, [%a14] lo:q1
.LVL240:
	mul.f	%d11, %d6, %d11
	ld.w	%d6, [%SP] 52
	mov.d	%d7, %a2
	mul.f	%d3, %d6, %d10
	mul.f	%d13, %d7, %d8
	sub.f	%d3, %d3, %d11
	ld.w	%d12, [%a13] lo:q3
	ld.a	%a3, [%SP] 28
	add.f	%d3, %d3, %d13
	ld.w	%d13, [%SP] 56
	mov.d	%d4, %a3
	mul.f	%d10, %d13, %d12
	ld.w	%d6, [%SP] 64
	add.f	%d3, %d3, %d10
	mul.f	%d10, %d7, %d4
	mov.d	%d7, %a15
	ld.w	%d0, [%a13] lo:q3
	mul.f	%d13, %d6, %d7
	sub.f	%d10, %d3, %d10
	mul.f	%d13, %d13, %d0
	mov.d	%d0, %a2
	add.f	%d10, %d10, %d13
	mul.f	%d13, %d0, %d14
	.loc 1 277 0
	ld.w	%d7, [%SP] 84
	.loc 1 294 0
	sub.f	%d10, %d10, %d13
	mul.f	%d13, %d0, %d15
	.loc 1 299 0
	ld.a	%a4, [%SP] 24
	.loc 1 294 0
	add.f	%d6, %d10, %d13
.LVL241:
	.loc 1 277 0
	add.f	%d12, %d7, %d7
	.loc 1 296 0
	add.f	%d3, %d6, %d6
	.loc 1 277 0
	ld.w	%d13, [%SP] 108
	.loc 1 258 0
	ld.w	%d0, [%SP] 72
	.loc 1 277 0
	mul.f	%d8, %d12, %d13
.LVL242:
	.loc 1 278 0
	ld.w	%d13, [%SP] 88
	.loc 1 299 0
	mov.d	%d4, %a4
	.loc 1 258 0
	mul.f	%d10, %d9, %d0
	.loc 1 299 0
	ld.w	%d7, [%SP] 68
	.loc 1 278 0
	add.f	%d9, %d13, %d13
.LVL243:
	ld.w	%d0, [%SP] 112
	.loc 1 296 0
	st.w	[%SP] 52, %d3
.LVL244:
	.loc 1 299 0
	add.f	%d3, %d4, %d4
.LVL245:
	.loc 1 278 0
	mul.f	%d9, %d9, %d0
	.loc 1 299 0
	sub.f	%d8, %d3, %d8
	.loc 1 259 0
	ld.w	%d13, [%SP] 168
	.loc 1 299 0
	add.f	%d3, %d7, %d7
	.loc 1 259 0
	ld.w	%d0, [%SP] 72
	.loc 1 299 0
	ld.a	%a6, [%SP] 20
	.loc 1 259 0
	mul.f	%d12, %d13, %d0
	.loc 1 299 0
	add.f	%d3, %d3, %d9
	sub.f	%d10, %d8, %d10
	sub.f	%d8, %d3, %d12
	mov.d	%d3, %a6
	sub.f	%d12, %d3, %d14
	ld.w	%d7, [%SP] 92
	sub.f	%d11, %d12, %d15
	sub.f	%d12, %d4, %d7
	mul.f	%d11, %d11, %d2
	mul.f	%d12, %d12, %d6
	ld.w	%d5, [%SP] 44
	add.f	%d11, %d11, %d12
	.loc 1 284 0
	ld.w	%d15, [%SP] 120
.LVL246:
	.loc 1 299 0
	sub.f	%d4, %d11, %d5
	.loc 1 284 0
	ld.w	%d3, [%SP] 124
	.loc 1 282 0
	ld.w	%d5, [%SP] 116
	ld.w	%d1, [%SP] 32
	.loc 1 299 0
	addih	%d13, %d2, 0x8000
	.loc 1 284 0
	mul.f	%d0, %d15, %d3
	.loc 1 282 0
	mul.f	%d1, %d5, %d1
	.loc 1 287 0
	ld.w	%d15, [%SP] 132
	.loc 1 299 0
	sub.f	%d1, %d0, %d1
	st.w	[%SP] 56, %d13
.LVL247:
	.loc 1 287 0
	ld.w	%d13, [%SP] 128
	.loc 1 299 0
	mul.f	%d0, %d1, %d2
	ld.w	%d9, [%a12] lo:q2
	.loc 1 287 0
	mul.f	%d7, %d13, %d15
	.loc 1 299 0
	ld.w	%d11, [%a13] lo:q3
	ld.w	%d12, [%a14] lo:q1
	ld.w	%d1, [%SP] 68
	mov.d	%d3, %a15
	add.f	%d7, %d1, %d7
	ld.w	%d5, [%SP] 92
	mul.f	%d7, %d7, %d6
	mov.d	%d13, %a4
	add.f	%d7, %d0, %d7
	mov.d	%d1, %a6
	sub.f	%d3, %d7, %d3
	add.f	%d15, %d5, %d13
	mov.a	%a15, %d3
.LVL248:
	mov.d	%d3, %a3
	mul.f	%d0, %d15, %d2
	sub.f	%d15, %d1, %d3
	ld.w	%d13, [%SP] 64
	sub.f	%d15, %d15, %d14
	ld.w	%d1, [%SP] 60
	mul.f	%d15, %d15, %d6
	mov.d	%d5, %a2
	add.f	%d15, %d0, %d15
	ld.w	%d3, [%SP] 56
	sub.f	%d5, %d15, %d5
	mul.f	%d0, %d13, %d10
	mul.f	%d15, %d8, %d1
	mul.f	%d9, %d6, %d9
	sub.f	%d0, %d15, %d0
	mul.f	%d11, %d3, %d11
	mul.f	%d15, %d6, %d12
	ld.w	%d7, [%a12] lo:q2
	mul.f	%d9, %d9, %d4
	add.f	%d11, %d11, %d15
	mov.a	%a2, %d5
	mov.d	%d5, %a15
	sub.f	%d0, %d0, %d9
	mul.f	%d11, %d11, %d5
	mul.f	%d7, %d2, %d7
	mov.d	%d13, %a2
	.loc 1 300 0
	mov.d	%d15, %a3
	.loc 1 299 0
	add.f	%d11, %d0, %d11
	mul.f	%d7, %d7, %d13
	.loc 1 300 0
	add.f	%d9, %d15, %d15
	movh	%d15, 16256
	.loc 1 299 0
	add.f	%d7, %d11, %d7
	.loc 1 300 0
	sub.f	%d9, %d15, %d9
	.loc 1 260 0
	ld.w	%d0, [%SP] 172
	ld.w	%d1, [%SP] 72
	.loc 1 300 0
	ld.w	%d15, [%SP] 80
	.loc 1 260 0
	mul.f	%d3, %d0, %d1
	.loc 1 299 0
	mov.a	%a4, %d7
.LVL249:
	.loc 1 300 0
	mul.f	%d0, %d15, %d10
	add.f	%d7, %d14, %d14
.LVL250:
	ld.w	%d15, [%SP] 76
	sub.f	%d7, %d9, %d7
	mul.f	%d9, %d15, %d8
	ld.w	%d11, [%a14] lo:q1
	add.f	%d0, %d0, %d9
	movh	%d9, 16512
	sub.f	%d5, %d7, %d3
	mul.f	%d11, %d11, %d9
	ld.w	%d13, [%a13] lo:q3
	mul.f	%d11, %d11, %d5
	ld.a	%a5, [%SP] 16
	sub.f	%d11, %d0, %d11
	mul.f	%d15, %d6, %d13
	ld.w	%d7, [%a12] lo:q2
	mul.f	%d15, %d4, %d15
	ld.w	%d12, [%a5] lo:q0
	add.f	%d15, %d11, %d15
	mul.f	%d11, %d2, %d7
	mul.f	%d7, %d6, %d12
	ld.w	%d1, [%a13] lo:q3
	add.f	%d7, %d11, %d7
	mov.d	%d0, %a15
	ld.w	%d3, [%a14] lo:q1
	mul.f	%d7, %d0, %d7
	mul.f	%d0, %d2, %d1
	ld.w	%d1, [%SP] 52
	add.f	%d11, %d15, %d7
	mul.f	%d3, %d1, %d3
	mov.d	%d7, %a2
	sub.f	%d3, %d0, %d3
	.loc 1 301 0
	ld.w	%d12, [%a12] lo:q2
	.loc 1 300 0
	mul.f	%d3, %d7, %d3
	.loc 1 301 0
	ld.w	%d0, [%SP] 76
	.loc 1 300 0
	add.f	%d3, %d11, %d3
	.loc 1 301 0
	ld.w	%d11, [%a12] lo:q2
	ld.w	%d15, [%a5] lo:q0
	ld.w	%d1, [%a14] lo:q1
	.loc 1 300 0
	st.w	[%SP] 48, %d3
.LVL251:
	.loc 1 295 0
	add.f	%d3, %d2, %d2
.LVL252:
	.loc 1 301 0
	mul.f	%d7, %d0, %d10
	addih	%d3, %d3, 0x8000
.LVL253:
	mov.a	%a3, %d3
	ld.w	%d3, [%a13] lo:q3
	ld.w	%d14, [%a5] lo:q0
.LVL254:
	ld.w	%d13, [%a12] lo:q2
	st.w	[%SP] 68, %d13
.LVL255:
	ld.w	%d13, [%SP] 80
	mul.f	%d15, %d6, %d15
	mul.f	%d0, %d13, %d8
	sub.f	%d0, %d0, %d7
	mul.f	%d7, %d12, %d9
	mul.f	%d9, %d5, %d7
	mov.d	%d5, %a3
	mul.f	%d11, %d5, %d11
	sub.f	%d0, %d0, %d9
	sub.f	%d11, %d11, %d15
	mul.f	%d7, %d6, %d3
	mul.f	%d11, %d4, %d11
	ld.w	%d15, [%SP] 52
	add.f	%d11, %d0, %d11
	mul.f	%d0, %d2, %d1
	mul.f	%d9, %d2, %d14
	add.f	%d3, %d0, %d7
	mov.d	%d7, %a15
	ld.w	%d0, [%SP] 68
	mul.f	%d3, %d7, %d3
	mul.f	%d13, %d15, %d0
	add.f	%d11, %d11, %d3
	sub.f	%d13, %d9, %d13
	mov.d	%d1, %a2
	mul.f	%d13, %d1, %d13
	.loc 1 302 0
	ld.w	%d9, [%a13] lo:q3
	ld.w	%d7, [%a14] lo:q1
	ld.w	%d3, [%a5] lo:q0
	ld.w	%d1, [%SP] 60
	mul.f	%d7, %d6, %d7
	mul.f	%d15, %d1, %d10
	ld.w	%d1, [%SP] 64
	ld.w	%d0, [%a12] lo:q2
	mul.f	%d8, %d1, %d8
	mul.f	%d10, %d6, %d0
	add.f	%d1, %d15, %d8
	mov.d	%d15, %a3
	mul.f	%d9, %d15, %d9
	.loc 1 301 0
	add.f	%d5, %d11, %d13
.LVL256:
	.loc 1 302 0
	add.f	%d7, %d9, %d7
	ld.w	%d13, [%a14] lo:q1
	mul.f	%d14, %d4, %d7
	mul.f	%d13, %d2, %d13
	add.f	%d14, %d1, %d14
	ld.w	%d1, [%SP] 56
	mov.d	%d4, %a2
	mul.f	%d3, %d1, %d3
	mul.f	%d11, %d4, %d13
	add.f	%d10, %d3, %d10
	mov.d	%d3, %a15
	mul.f	%d12, %d3, %d10
	.loc 1 303 0
	ld.w	%d7, [%SP] 48
	.loc 1 302 0
	add.f	%d12, %d14, %d12
	.loc 1 303 0
	mov.d	%d6, %a4
.LVL257:
	.loc 1 302 0
	add.f	%d1, %d12, %d11
.LVL258:
	.loc 1 303 0
	mul.f	%d12, %d6, %d6
	mul.f	%d11, %d7, %d7
.LBB132:
.LBB133:
	.loc 1 429 0
	mov.d	%d13, %a6
.LBE133:
.LBE132:
	.loc 1 303 0
	add.f	%d11, %d12, %d11
	mul.f	%d12, %d5, %d5
.LBB144:
.LBB134:
	.loc 1 432 0
	movh	%d9, 24375
.LBE134:
.LBE144:
	.loc 1 303 0
	add.f	%d11, %d11, %d12
	mul.f	%d12, %d1, %d1
.LBB145:
.LBB135:
	.loc 1 432 0
	addi	%d9, %d9, 23007
.LBE135:
.LBE145:
	.loc 1 303 0
	add.f	%d11, %d11, %d12
.LVL259:
.LBB146:
.LBB136:
	.loc 1 434 0
	movh	%d15, 16320
	.loc 1 429 0
	mul.f	%d10, %d11, %d13
.LVL260:
	.loc 1 432 0
	sha	%d11, -1
.LVL261:
	sub	%d9, %d11
.LVL262:
	.loc 1 434 0
	mul.f	%d8, %d10, %d9
.LBE136:
.LBE146:
	.loc 1 305 0
	ld.w	%d2, [%SP] 48
.LVL263:
.LBB147:
.LBB137:
	.loc 1 434 0
	mul.f	%d8, %d8, %d9
.LBE137:
.LBE147:
	.loc 1 310 0
	ld.w	%d11, [%a5] lo:q0
.LBB148:
.LBB138:
	.loc 1 434 0
	sub.f	%d8, %d15, %d8
.LBE138:
.LBE148:
	.loc 1 314 0
	ld.a	%a7, [%SP] 12
.LBB149:
.LBB139:
	.loc 1 434 0
	mul.f	%d8, %d8, %d9
.LVL264:
.LBE139:
.LBE149:
	.loc 1 314 0
	movh.a	%a4, hi:gxc
.LVL265:
.LBB150:
.LBB140:
	.loc 1 435 0
	mul.f	%d10, %d10, %d8
.LVL266:
.LBE140:
.LBE150:
	.loc 1 315 0
	movh.a	%a3, hi:gyc
.LBB151:
.LBB141:
	.loc 1 435 0
	mul.f	%d10, %d8, %d10
.LBE141:
.LBE151:
	.loc 1 316 0
	movh.a	%a15, hi:gzc
.LBB152:
.LBB142:
	.loc 1 435 0
	sub.f	%d15, %d15, %d10
.LBE142:
.LBE152:
	.loc 1 318 0
	movh.a	%a2, hi:khi
.LBB153:
.LBB143:
	.loc 1 435 0
	mul.f	%d0, %d8, %d15
.LVL267:
.LBE143:
.LBE153:
	.loc 1 304 0
	mul.f	%d7, %d6, %d0
.LVL268:
	.loc 1 305 0
	mul.f	%d3, %d2, %d0
.LVL269:
	.loc 1 307 0
	mul.f	%d15, %d1, %d0
	.loc 1 310 0
	ld.w	%d1, [%a14] lo:q1
.LVL270:
	mul.f	%d11, %d11, %d3
	ld.w	%d12, [%a12] lo:q2
.LVL271:
	mul.f	%d1, %d1, %d7
	ld.w	%d10, [%a13] lo:q3
	.loc 1 306 0
	mul.f	%d2, %d5, %d0
.LVL272:
	.loc 1 310 0
	mul.f	%d12, %d12, %d15
	sub.f	%d1, %d11, %d1
	mul.f	%d10, %d10, %d2
	sub.f	%d11, %d1, %d12
	.loc 1 248 0
	movh	%d0, 15503
.LVL273:
	.loc 1 310 0
	add.f	%d1, %d11, %d10
	.loc 1 248 0
	addi	%d0, %d0, -1479
	.loc 1 310 0
	add.f	%d1, %d1, %d1
	st.w	[%SP] 140, %d1
	.loc 1 311 0
	ld.w	%d11, [%a5] lo:q0
	ld.w	%d1, [%a14] lo:q1
	mul.f	%d11, %d11, %d2
	ld.w	%d12, [%a12] lo:q2
	mul.f	%d1, %d1, %d15
	ld.w	%d10, [%a13] lo:q3
	mul.f	%d12, %d12, %d7
	add.f	%d1, %d11, %d1
	mul.f	%d10, %d10, %d3
	sub.f	%d11, %d1, %d12
	sub.f	%d1, %d11, %d10
	add.f	%d1, %d1, %d1
	st.w	[%SP] 144, %d1
	.loc 1 312 0
	ld.w	%d11, [%a5] lo:q0
	ld.w	%d1, [%a14] lo:q1
	mul.f	%d11, %d11, %d15
	ld.w	%d12, [%a12] lo:q2
	mul.f	%d1, %d1, %d2
	ld.w	%d10, [%a13] lo:q3
	sub.f	%d1, %d11, %d1
	mul.f	%d12, %d12, %d3
	mul.f	%d10, %d10, %d7
	add.f	%d11, %d1, %d12
	sub.f	%d1, %d11, %d10
	add.f	%d1, %d1, %d1
	st.w	[%SP] 148, %d1
	.loc 1 314 0
	ld.w	%d11, [%SP] 140
	ld.w	%d1, [%a7] lo:invSampleFreq
	ld.w	%d10, [%a4] lo:gxc
	mul.f	%d1, %d11, %d1
	add.f	%d1, %d1, %d10
	st.w	[%a4] lo:gxc, %d1
	.loc 1 315 0
	ld.w	%d11, [%SP] 144
	ld.w	%d1, [%a7] lo:invSampleFreq
	ld.w	%d10, [%a3] lo:gyc
	mul.f	%d1, %d11, %d1
	add.f	%d1, %d1, %d10
	st.w	[%a3] lo:gyc, %d1
	.loc 1 316 0
	ld.w	%d11, [%SP] 148
	ld.w	%d1, [%a7] lo:invSampleFreq
	ld.w	%d10, [%a15] lo:gzc
	mul.f	%d1, %d11, %d1
	.loc 1 248 0
	ld.w	%d13, [%SP] 96
	.loc 1 316 0
	add.f	%d1, %d1, %d10
	.loc 1 248 0
	mul.f	%d9, %d13, %d0
	.loc 1 249 0
	ld.w	%d13, [%SP] 100
	.loc 1 316 0
	st.w	[%a15] lo:gzc, %d1
	.loc 1 318 0
	ld.w	%d10, [%a2] lo:khi
	ld.w	%d1, [%a4] lo:gxc
	.loc 1 249 0
	mul.f	%d8, %d13, %d0
	.loc 1 318 0
	mul.f	%d1, %d10, %d1
	.loc 1 250 0
	ld.w	%d13, [%SP] 104
	.loc 1 318 0
	sub.f	%d4, %d9, %d1
.LVL274:
	.loc 1 319 0
	ld.w	%d9, [%a2] lo:khi
	ld.w	%d1, [%a3] lo:gyc
	.loc 1 250 0
	mul.f	%d0, %d13, %d0
	.loc 1 319 0
	mul.f	%d1, %d9, %d1
	.loc 1 324 0
	mov.d	%d13, %a6
	.loc 1 319 0
	sub.f	%d5, %d8, %d1
.LVL275:
	.loc 1 320 0
	ld.w	%d8, [%a2] lo:khi
	ld.w	%d1, [%a15] lo:gzc
	.loc 1 329 0
	movh.a	%a15, hi:beta
	.loc 1 320 0
	mul.f	%d1, %d8, %d1
	.loc 1 323 0
	ld.w	%d8, [%a14] lo:q1
	.loc 1 320 0
	sub.f	%d6, %d0, %d1
.LVL276:
	.loc 1 323 0
	ld.w	%d0, [%a12] lo:q2
	addih	%d8, %d8, 0x8000
	ld.w	%d1, [%a13] lo:q3
	mul.f	%d8, %d8, %d4
	mul.f	%d0, %d0, %d5
	mul.f	%d1, %d1, %d6
	sub.f	%d0, %d8, %d0
	sub.f	%d0, %d0, %d1
	mov.d	%d1, %a6
	mul.f	%d0, %d0, %d1
	st.w	[%SP] 152, %d0
	.loc 1 324 0
	ld.w	%d8, [%a5] lo:q0
	ld.w	%d0, [%a12] lo:q2
	mul.f	%d8, %d8, %d4
	ld.w	%d1, [%a13] lo:q3
	mul.f	%d0, %d0, %d6
	mul.f	%d1, %d1, %d5
	add.f	%d0, %d8, %d0
	sub.f	%d0, %d0, %d1
	mul.f	%d0, %d0, %d13
	st.w	[%SP] 156, %d0
	.loc 1 325 0
	ld.w	%d8, [%a5] lo:q0
	ld.w	%d0, [%a14] lo:q1
	mul.f	%d8, %d8, %d5
	ld.w	%d1, [%a13] lo:q3
	mul.f	%d0, %d0, %d6
	mul.f	%d1, %d1, %d4
	sub.f	%d0, %d8, %d0
	add.f	%d0, %d0, %d1
	mul.f	%d0, %d0, %d13
	st.w	[%SP] 160, %d0
	.loc 1 326 0
	ld.w	%d8, [%a5] lo:q0
	ld.w	%d1, [%a14] lo:q1
	mul.f	%d6, %d8, %d6
.LVL277:
	mul.f	%d5, %d1, %d5
.LVL278:
	ld.w	%d0, [%a12] lo:q2
	add.f	%d5, %d6, %d5
	mul.f	%d0, %d0, %d4
	sub.f	%d4, %d5, %d0
.LVL279:
	mul.f	%d4, %d4, %d13
	st.w	[%SP] 164, %d4
	.loc 1 329 0
	ld.w	%d5, [%a15] lo:beta
	ld.w	%d4, [%SP] 152
	mul.f	%d7, %d5, %d7
.LVL280:
	sub.f	%d7, %d4, %d7
	st.w	[%SP] 152, %d7
	.loc 1 330 0
	ld.w	%d5, [%a15] lo:beta
	ld.w	%d4, [%SP] 156
	mul.f	%d3, %d5, %d3
.LVL281:
	sub.f	%d3, %d4, %d3
	st.w	[%SP] 156, %d3
	.loc 1 331 0
	ld.w	%d4, [%a15] lo:beta
	ld.w	%d3, [%SP] 160
	mul.f	%d2, %d4, %d2
.LVL282:
	sub.f	%d2, %d3, %d2
	st.w	[%SP] 160, %d2
	.loc 1 332 0
	ld.w	%d3, [%a15] lo:beta
	ld.w	%d2, [%SP] 164
	mul.f	%d15, %d3, %d15
.LVL283:
	sub.f	%d15, %d2, %d15
	st.w	[%SP] 164, %d15
.LVL284:
.L31:
	.loc 1 336 0
	ld.w	%d3, [%SP] 152
	ld.w	%d15, [%a7] lo:invSampleFreq
	ld.w	%d2, [%a5] lo:q0
	mul.f	%d15, %d3, %d15
	.loc 1 347 0
	movh.a	%a15, hi:anglesComputed
	.loc 1 336 0
	add.f	%d15, %d15, %d2
	st.w	[%a5] lo:q0, %d15
	.loc 1 337 0
	ld.w	%d3, [%SP] 156
	ld.w	%d15, [%a7] lo:invSampleFreq
	ld.w	%d2, [%a14] lo:q1
	mul.f	%d15, %d3, %d15
	add.f	%d15, %d15, %d2
	st.w	[%a14] lo:q1, %d15
	.loc 1 338 0
	ld.w	%d3, [%SP] 160
	ld.w	%d15, [%a7] lo:invSampleFreq
	ld.w	%d2, [%a12] lo:q2
	mul.f	%d15, %d3, %d15
	add.f	%d15, %d15, %d2
	st.w	[%a12] lo:q2, %d15
	.loc 1 339 0
	ld.w	%d3, [%SP] 164
	ld.w	%d15, [%a7] lo:invSampleFreq
	ld.w	%d2, [%a13] lo:q3
	mul.f	%d15, %d3, %d15
	add.f	%d15, %d15, %d2
	st.w	[%a13] lo:q3, %d15
	.loc 1 342 0
	ld.w	%d7, [%a5] lo:q0
	ld.w	%d5, [%a5] lo:q0
	ld.w	%d3, [%a14] lo:q1
	ld.w	%d0, [%a14] lo:q1
	mul.f	%d7, %d7, %d5
	ld.w	%d2, [%a12] lo:q2
	mul.f	%d3, %d3, %d0
	ld.w	%d6, [%a12] lo:q2
	add.f	%d5, %d7, %d3
	ld.w	%d15, [%a13] lo:q3
	mul.f	%d2, %d2, %d6
	ld.w	%d4, [%a13] lo:q3
	add.f	%d3, %d5, %d2
	mul.f	%d15, %d15, %d4
.LBB154:
.LBB155:
	.loc 1 429 0
	movh	%d5, 16128
.LBE155:
.LBE154:
	.loc 1 342 0
	add.f	%d2, %d3, %d15
.LVL285:
.LBB157:
.LBB156:
	.loc 1 432 0
	movh	%d3, 24375
	.loc 1 429 0
	mul.f	%d5, %d2, %d5
.LVL286:
	.loc 1 432 0
	addi	%d3, %d3, 23007
	sha	%d2, -1
.LVL287:
	sub	%d3, %d2
.LVL288:
	.loc 1 434 0
	mul.f	%d15, %d5, %d3
	movh	%d4, 16320
	mul.f	%d15, %d15, %d3
	sub.f	%d15, %d4, %d15
	mul.f	%d2, %d15, %d3
.LVL289:
	.loc 1 435 0
	mul.f	%d15, %d5, %d2
	mul.f	%d15, %d2, %d15
	sub.f	%d15, %d4, %d15
	mul.f	%d15, %d2, %d15
.LVL290:
.LBE156:
.LBE157:
	.loc 1 343 0
	ld.w	%d2, [%a5] lo:q0
	mul.f	%d2, %d2, %d15
	st.w	[%a5] lo:q0, %d2
	.loc 1 344 0
	ld.w	%d2, [%a14] lo:q1
	mul.f	%d2, %d2, %d15
	st.w	[%a14] lo:q1, %d2
	.loc 1 345 0
	ld.w	%d2, [%a12] lo:q2
	mul.f	%d2, %d2, %d15
	st.w	[%a12] lo:q2, %d2
	.loc 1 346 0
	ld.w	%d2, [%a13] lo:q3
	mul.f	%d15, %d2, %d15
.LVL291:
	st.w	[%a13] lo:q3, %d15
	.loc 1 347 0
	mov	%d15, 0
	st.b	[%a15] lo:anglesComputed, %d15
	ret
.LVL292:
.L38:
	.loc 1 243 0
	ld.w	%d1, [%SP] 172
	st.w	[%SP]0, %d0
	st.w	[%SP] 4, %d1
	.loc 1 244 0
	j	Madgwick_updateIMU
.LVL293:
.LFE301:
	.size	Madgwick_update2, .-Madgwick_update2
.section .text.Madgwick_invSqrt,"ax",@progbits
	.align 1
	.global	Madgwick_invSqrt
	.type	Madgwick_invSqrt, @function
Madgwick_invSqrt:
.LFB303:
	.loc 1 428 0
.LVL294:
	.loc 1 429 0
	movh	%d3, 16128
	.loc 1 432 0
	movh	%d15, 24375
	.loc 1 429 0
	mul.f	%d3, %d4, %d3
.LVL295:
	.loc 1 432 0
	addi	%d15, %d15, 23007
	sha	%d4, -1
.LVL296:
	sub	%d15, %d4
.LVL297:
	.loc 1 434 0
	mul.f	%d4, %d3, %d15
	movh	%d2, 16320
	mul.f	%d4, %d4, %d15
	sub.f	%d4, %d2, %d4
	mul.f	%d4, %d4, %d15
.LVL298:
	.loc 1 435 0
	mul.f	%d3, %d3, %d4
.LVL299:
	mul.f	%d3, %d4, %d3
	sub.f	%d2, %d2, %d3
	.loc 1 437 0
	mul.f	%d2, %d4, %d2
.LVL300:
	ret
.LFE303:
	.size	Madgwick_invSqrt, .-Madgwick_invSqrt
.section .text.computeAngles,"ax",@progbits
	.align 1
	.global	computeAngles
	.type	computeAngles, @function
computeAngles:
.LFB304:
	.loc 1 441 0
	.loc 1 442 0
	movh.a	%a15, hi:q2
	movh.a	%a14, hi:q0
	movh.a	%a13, hi:q1
	movh.a	%a12, hi:q3
	ld.w	%d0, [%a14] lo:q0
	ld.w	%d4, [%a13] lo:q1
	ld.w	%d7, [%a15] lo:q2
	ld.w	%d3, [%a12] lo:q3
	ld.w	%d5, [%a13] lo:q1
	ld.w	%d15, [%a13] lo:q1
	ld.w	%d6, [%a15] lo:q2
	mul.f	%d5, %d5, %d15
	ld.w	%d2, [%a15] lo:q2
	movh	%d15, 16128
	mul.f	%d3, %d7, %d3
	mul.f	%d4, %d0, %d4
	sub.f	%d5, %d15, %d5
	mul.f	%d2, %d6, %d2
	add.f	%d4, %d4, %d3
	sub.f	%d5, %d5, %d2
	call	atan2f
.LVL301:
	movh.a	%a2, hi:roll
	st.w	[%a2] lo:roll, %d2
	.loc 1 443 0
	ld.w	%d4, [%a13] lo:q1
	ld.w	%d3, [%a12] lo:q3
	ld.w	%d5, [%a14] lo:q0
	ld.w	%d2, [%a15] lo:q2
	mul.f	%d3, %d4, %d3
	mul.f	%d2, %d5, %d2
	sub.f	%d4, %d3, %d2
	movh	%d2, 49152
	mul.f	%d4, %d4, %d2
	call	asinf
.LVL302:
	movh.a	%a2, hi:pitch
	st.w	[%a2] lo:pitch, %d2
	.loc 1 444 0
	ld.w	%d1, [%a13] lo:q1
	ld.w	%d4, [%a15] lo:q2
	ld.w	%d0, [%a14] lo:q0
	ld.w	%d3, [%a12] lo:q3
	ld.w	%d7, [%a15] lo:q2
	ld.w	%d6, [%a15] lo:q2
	ld.w	%d5, [%a12] lo:q3
	mul.f	%d6, %d7, %d6
	ld.w	%d2, [%a12] lo:q3
	sub.f	%d15, %d15, %d6
	mul.f	%d4, %d1, %d4
	mul.f	%d3, %d0, %d3
	mul.f	%d5, %d5, %d2
	add.f	%d4, %d4, %d3
	sub.f	%d5, %d15, %d5
	.loc 1 445 0
	mov	%d15, 1
	.loc 1 444 0
	call	atan2f
.LVL303:
	movh.a	%a15, hi:yaw
	st.w	[%a15] lo:yaw, %d2
	.loc 1 445 0
	movh.a	%a15, hi:anglesComputed
	st.b	[%a15] lo:anglesComputed, %d15
	ret
.LFE304:
	.size	computeAngles, .-computeAngles
.section .text.Madgwick_getRoll,"ax",@progbits
	.align 1
	.global	Madgwick_getRoll
	.type	Madgwick_getRoll, @function
Madgwick_getRoll:
.LFB294:
	.loc 1 95 0
	.loc 1 96 0
	movh.a	%a15, hi:anglesComputed
	ld.b	%d15, [%a15] lo:anglesComputed
	jnz	%d15, .L42
	.loc 1 96 0 is_stmt 0 discriminator 1
	call	computeAngles
.LVL304:
.L42:
	.loc 1 97 0 is_stmt 1
	movh.a	%a15, hi:roll
	ld.w	%d2, [%a15] lo:roll
	.loc 1 98 0
	movh	%d15, 16997
	addi	%d15, %d15, 12001
	mul.f	%d2, %d2, %d15
	ret
.LFE294:
	.size	Madgwick_getRoll, .-Madgwick_getRoll
.section .text.Madgwick_getPitch,"ax",@progbits
	.align 1
	.global	Madgwick_getPitch
	.type	Madgwick_getPitch, @function
Madgwick_getPitch:
.LFB295:
	.loc 1 99 0
	.loc 1 100 0
	movh.a	%a15, hi:anglesComputed
	ld.b	%d15, [%a15] lo:anglesComputed
	jnz	%d15, .L44
	.loc 1 100 0 is_stmt 0 discriminator 1
	call	computeAngles
.LVL305:
.L44:
	.loc 1 101 0 is_stmt 1
	movh.a	%a15, hi:pitch
	ld.w	%d2, [%a15] lo:pitch
	movh	%d15, 16997
	addi	%d15, %d15, 12001
	mul.f	%d2, %d2, %d15
	ret
.LFE295:
	.size	Madgwick_getPitch, .-Madgwick_getPitch
.section .text.Madgwick_getYaw,"ax",@progbits
	.align 1
	.global	Madgwick_getYaw
	.type	Madgwick_getYaw, @function
Madgwick_getYaw:
.LFB296:
	.loc 1 103 0
	.loc 1 104 0
	movh.a	%a15, hi:anglesComputed
	ld.b	%d15, [%a15] lo:anglesComputed
	jnz	%d15, .L46
	.loc 1 104 0 is_stmt 0 discriminator 1
	call	computeAngles
.LVL306:
.L46:
	.loc 1 105 0 is_stmt 1
	movh.a	%a15, hi:yaw
	ld.w	%d2, [%a15] lo:yaw
	movh	%d15, 16997
	addi	%d15, %d15, 12001
	mul.f	%d2, %d2, %d15
	.loc 1 106 0
	movh	%d15, 17204
	add.f	%d2, %d2, %d15
	ret
.LFE296:
	.size	Madgwick_getYaw, .-Madgwick_getYaw
.section .text.Madgwick_getRollRadians,"ax",@progbits
	.align 1
	.global	Madgwick_getRollRadians
	.type	Madgwick_getRollRadians, @function
Madgwick_getRollRadians:
.LFB297:
	.loc 1 107 0
	.loc 1 108 0
	movh.a	%a15, hi:anglesComputed
	ld.b	%d15, [%a15] lo:anglesComputed
	jnz	%d15, .L48
	.loc 1 108 0 is_stmt 0 discriminator 1
	call	computeAngles
.LVL307:
.L48:
	.loc 1 109 0 is_stmt 1
	movh.a	%a15, hi:roll
	ld.w	%d2, [%a15] lo:roll
	.loc 1 110 0
	ret
.LFE297:
	.size	Madgwick_getRollRadians, .-Madgwick_getRollRadians
.section .text.Madgwick_getPitchRadians,"ax",@progbits
	.align 1
	.global	Madgwick_getPitchRadians
	.type	Madgwick_getPitchRadians, @function
Madgwick_getPitchRadians:
.LFB298:
	.loc 1 111 0
	.loc 1 112 0
	movh.a	%a15, hi:anglesComputed
	ld.b	%d15, [%a15] lo:anglesComputed
	jnz	%d15, .L50
	.loc 1 112 0 is_stmt 0 discriminator 1
	call	computeAngles
.LVL308:
.L50:
	.loc 1 113 0 is_stmt 1
	movh.a	%a15, hi:pitch
	ld.w	%d2, [%a15] lo:pitch
	.loc 1 114 0
	ret
.LFE298:
	.size	Madgwick_getPitchRadians, .-Madgwick_getPitchRadians
.section .text.Madgwick_getYawRadians,"ax",@progbits
	.align 1
	.global	Madgwick_getYawRadians
	.type	Madgwick_getYawRadians, @function
Madgwick_getYawRadians:
.LFB299:
	.loc 1 115 0
	.loc 1 116 0
	movh.a	%a15, hi:anglesComputed
	ld.b	%d15, [%a15] lo:anglesComputed
	jnz	%d15, .L52
	.loc 1 116 0 is_stmt 0 discriminator 1
	call	computeAngles
.LVL309:
.L52:
	.loc 1 117 0 is_stmt 1
	movh.a	%a15, hi:yaw
	ld.w	%d2, [%a15] lo:yaw
	.loc 1 118 0
	ret
.LFE299:
	.size	Madgwick_getYawRadians, .-Madgwick_getYawRadians
	.global	anglesComputed
.section .bss.anglesComputed,"aw",@nobits
	.type	anglesComputed, @object
	.size	anglesComputed, 1
anglesComputed:
	.zero	1
	.global	invSampleFreq
.section .bss.invSampleFreq,"aw",@nobits
	.align 2
	.type	invSampleFreq, @object
	.size	invSampleFreq, 4
invSampleFreq:
	.zero	4
	.global	gzc
.section .bss.gzc,"aw",@nobits
	.align 2
	.type	gzc, @object
	.size	gzc, 4
gzc:
	.zero	4
	.global	gyc
.section .bss.gyc,"aw",@nobits
	.align 2
	.type	gyc, @object
	.size	gyc, 4
gyc:
	.zero	4
	.global	gxc
.section .bss.gxc,"aw",@nobits
	.align 2
	.type	gxc, @object
	.size	gxc, 4
gxc:
	.zero	4
	.global	yaw
.section .bss.yaw,"aw",@nobits
	.align 2
	.type	yaw, @object
	.size	yaw, 4
yaw:
	.zero	4
	.global	pitch
.section .bss.pitch,"aw",@nobits
	.align 2
	.type	pitch, @object
	.size	pitch, 4
pitch:
	.zero	4
	.global	roll
.section .bss.roll,"aw",@nobits
	.align 2
	.type	roll, @object
	.size	roll, 4
roll:
	.zero	4
	.global	q3
.section .bss.q3,"aw",@nobits
	.align 2
	.type	q3, @object
	.size	q3, 4
q3:
	.zero	4
	.global	q2
.section .bss.q2,"aw",@nobits
	.align 2
	.type	q2, @object
	.size	q2, 4
q2:
	.zero	4
	.global	q1
.section .bss.q1,"aw",@nobits
	.align 2
	.type	q1, @object
	.size	q1, 4
q1:
	.zero	4
	.global	q0
.section .bss.q0,"aw",@nobits
	.align 2
	.type	q0, @object
	.size	q0, 4
q0:
	.zero	4
	.global	khi
.section .bss.khi,"aw",@nobits
	.align 2
	.type	khi, @object
	.size	khi, 4
khi:
	.zero	4
	.global	beta
.section .bss.beta,"aw",@nobits
	.align 2
	.type	beta, @object
	.size	beta, 4
beta:
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
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.byte	0x4
	.uaword	.LCFI0-.LFB302
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.byte	0x4
	.uaword	.LCFI1-.LFB300
	.byte	0xe
	.uleb128 0x80
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.byte	0x4
	.uaword	.LCFI2-.LFB301
	.byte	0xe
	.uleb128 0xa8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\math.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x11d4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/Gyroscope/Madgwick.c"
	.string	"C:\\\\Robot_Project_Handover\\\\Robot_Project_Mode3"
	.uaword	.Ldebug_ranges0+0x260
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1fc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25e
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0x7d
	.uaword	0x285
	.uleb128 0x7
	.string	"module"
	.byte	0x2
	.byte	0x7f
	.uaword	0x258
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x2
	.byte	0x80
	.uaword	0x24a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x2
	.byte	0x81
	.uaword	0x25f
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x76
	.uaword	0x2ef
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
	.uleb128 0xa
	.uaword	0x16e
	.uleb128 0xb
	.byte	0x1
	.string	"Madgwick_begin"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.uaword	0x325
	.uleb128 0xc
	.string	"sampleFrequency"
	.byte	0x1
	.byte	0x5a
	.uaword	0x16e
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Madgwick_invSqrt"
	.byte	0x1
	.uahalf	0x1ac
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uaword	0x372
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x16e
	.uleb128 0xf
	.string	"halfx"
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x16e
	.uleb128 0xf
	.string	"y"
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x16e
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x1fc
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"Madgwick_init"
	.byte	0x1
	.byte	0x42
	.uaword	.LFB292
	.uaword	.LFE292
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3ae
	.uleb128 0x11
	.uaword	0x2f4
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.uaword	0x30d
	.byte	0x4
	.uaword	0x42c80000
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x2f4
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3cc
	.uleb128 0x14
	.uaword	0x30d
	.uaword	.LLST0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Madgwick_updateIMU"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	.LFB302
	.uaword	.LFE302
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x673
	.uleb128 0x16
	.string	"gx"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x16e
	.uaword	.LLST1
	.uleb128 0x16
	.string	"gy"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x16e
	.uaword	.LLST2
	.uleb128 0x16
	.string	"gz"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x16e
	.uaword	.LLST3
	.uleb128 0x16
	.string	"ax"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x16e
	.uaword	.LLST4
	.uleb128 0x16
	.string	"ay"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x16e
	.uaword	.LLST5
	.uleb128 0x16
	.string	"az"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x16e
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x16e
	.uleb128 0x18
	.string	"s0"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x16e
	.uaword	.LLST7
	.uleb128 0x18
	.string	"s1"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x16e
	.uaword	.LLST8
	.uleb128 0x18
	.string	"s2"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x16e
	.uaword	.LLST9
	.uleb128 0x18
	.string	"s3"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x16e
	.uaword	.LLST10
	.uleb128 0x18
	.string	"qDot1"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x16e
	.uaword	.LLST11
	.uleb128 0x18
	.string	"qDot2"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x16e
	.uaword	.LLST12
	.uleb128 0x18
	.string	"qDot3"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x16e
	.uaword	.LLST13
	.uleb128 0x18
	.string	"qDot4"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x16e
	.uaword	.LLST14
	.uleb128 0x18
	.string	"_2q0"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST15
	.uleb128 0x18
	.string	"_2q1"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST16
	.uleb128 0x18
	.string	"_2q2"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST17
	.uleb128 0x18
	.string	"_2q3"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST18
	.uleb128 0x18
	.string	"_4q0"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST19
	.uleb128 0x18
	.string	"_4q1"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST20
	.uleb128 0x18
	.string	"_4q2"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST21
	.uleb128 0x18
	.string	"_8q1"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST22
	.uleb128 0x18
	.string	"_8q2"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST23
	.uleb128 0x18
	.string	"q0q0"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST24
	.uleb128 0x18
	.string	"q1q1"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST25
	.uleb128 0x18
	.string	"q2q2"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST26
	.uleb128 0x18
	.string	"q3q3"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x16e
	.uaword	.LLST27
	.uleb128 0x19
	.uaword	0x325
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x173
	.uaword	0x5fa
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST28
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST29
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST30
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x325
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x639
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST32
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST33
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST34
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x325
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x1a0
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x1d
	.uaword	0x34f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST37
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Madgwick_update"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB300
	.uaword	.LFE300
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa67
	.uleb128 0x1f
	.string	"gx"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST39
	.uleb128 0x1f
	.string	"gy"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST40
	.uleb128 0x1f
	.string	"gz"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST41
	.uleb128 0x1f
	.string	"ax"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST42
	.uleb128 0x1f
	.string	"ay"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST43
	.uleb128 0x1f
	.string	"az"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST44
	.uleb128 0x1f
	.string	"mx"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST45
	.uleb128 0x1f
	.string	"my"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST46
	.uleb128 0x1f
	.string	"mz"
	.byte	0x1
	.byte	0x78
	.uaword	0x16e
	.uaword	.LLST47
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.byte	0x79
	.uaword	0x16e
	.uleb128 0x21
	.string	"s0"
	.byte	0x1
	.byte	0x7a
	.uaword	0x16e
	.uaword	.LLST48
	.uleb128 0x21
	.string	"s1"
	.byte	0x1
	.byte	0x7a
	.uaword	0x16e
	.uaword	.LLST49
	.uleb128 0x21
	.string	"s2"
	.byte	0x1
	.byte	0x7a
	.uaword	0x16e
	.uaword	.LLST50
	.uleb128 0x21
	.string	"s3"
	.byte	0x1
	.byte	0x7a
	.uaword	0x16e
	.uaword	.LLST51
	.uleb128 0x21
	.string	"qDot1"
	.byte	0x1
	.byte	0x7b
	.uaword	0x16e
	.uaword	.LLST52
	.uleb128 0x21
	.string	"qDot2"
	.byte	0x1
	.byte	0x7b
	.uaword	0x16e
	.uaword	.LLST53
	.uleb128 0x21
	.string	"qDot3"
	.byte	0x1
	.byte	0x7b
	.uaword	0x16e
	.uaword	.LLST54
	.uleb128 0x21
	.string	"qDot4"
	.byte	0x1
	.byte	0x7b
	.uaword	0x16e
	.uaword	.LLST55
	.uleb128 0x21
	.string	"hx"
	.byte	0x1
	.byte	0x7c
	.uaword	0x16e
	.uaword	.LLST56
	.uleb128 0x21
	.string	"hy"
	.byte	0x1
	.byte	0x7c
	.uaword	0x16e
	.uaword	.LLST57
	.uleb128 0x21
	.string	"_2q0mx"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST58
	.uleb128 0x21
	.string	"_2q0my"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST59
	.uleb128 0x21
	.string	"_2q0mz"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST60
	.uleb128 0x21
	.string	"_2q1mx"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST61
	.uleb128 0x21
	.string	"_2bx"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST62
	.uleb128 0x21
	.string	"_2bz"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST63
	.uleb128 0x21
	.string	"_4bx"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST64
	.uleb128 0x21
	.string	"_4bz"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST65
	.uleb128 0x21
	.string	"_2q0"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST66
	.uleb128 0x21
	.string	"_2q1"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST67
	.uleb128 0x21
	.string	"_2q2"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST68
	.uleb128 0x21
	.string	"_2q3"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST69
	.uleb128 0x21
	.string	"_2q0q2"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST70
	.uleb128 0x21
	.string	"_2q2q3"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST71
	.uleb128 0x21
	.string	"q0q0"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST72
	.uleb128 0x21
	.string	"q0q1"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST73
	.uleb128 0x21
	.string	"q0q2"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST74
	.uleb128 0x21
	.string	"q0q3"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST75
	.uleb128 0x21
	.string	"q1q1"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST76
	.uleb128 0x21
	.string	"q1q2"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST77
	.uleb128 0x21
	.string	"q1q3"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST78
	.uleb128 0x21
	.string	"q2q2"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST79
	.uleb128 0x21
	.string	"q2q3"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST80
	.uleb128 0x21
	.string	"q3q3"
	.byte	0x1
	.byte	0x7d
	.uaword	0x16e
	.uaword	.LLST81
	.uleb128 0x22
	.uaword	0x325
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x94
	.uaword	0x982
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST82
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST83
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST84
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x325
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0x9a
	.uaword	0x9c0
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST86
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST87
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST88
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST89
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x325
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0xc2
	.uaword	0x9fe
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST90
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST91
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST92
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x325
	.uaword	.LBB102
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x1
	.byte	0xd6
	.uaword	0xa3c
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST94
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST95
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST96
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST97
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL142
	.uaword	0x1184
	.uaword	0xa5c
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0xe
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0
	.uleb128 0x25
	.uaword	.LVL186
	.byte	0x1
	.uaword	0x3cc
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Madgwick_update2"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	.LFB301
	.uaword	.LFE301
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe84
	.uleb128 0x1f
	.string	"gx"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST98
	.uleb128 0x1f
	.string	"gy"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST99
	.uleb128 0x1f
	.string	"gz"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST100
	.uleb128 0x1f
	.string	"ax"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST101
	.uleb128 0x1f
	.string	"ay"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST102
	.uleb128 0x1f
	.string	"az"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST103
	.uleb128 0x1f
	.string	"mx"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST104
	.uleb128 0x1f
	.string	"my"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST105
	.uleb128 0x1f
	.string	"mz"
	.byte	0x1
	.byte	0xdf
	.uaword	0x16e
	.uaword	.LLST106
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe0
	.uaword	0x16e
	.uleb128 0x21
	.string	"s0"
	.byte	0x1
	.byte	0xe1
	.uaword	0x16e
	.uaword	.LLST107
	.uleb128 0x21
	.string	"s1"
	.byte	0x1
	.byte	0xe1
	.uaword	0x16e
	.uaword	.LLST108
	.uleb128 0x21
	.string	"s2"
	.byte	0x1
	.byte	0xe1
	.uaword	0x16e
	.uaword	.LLST109
	.uleb128 0x21
	.string	"s3"
	.byte	0x1
	.byte	0xe1
	.uaword	0x16e
	.uaword	.LLST110
	.uleb128 0x21
	.string	"hx"
	.byte	0x1
	.byte	0xe2
	.uaword	0x16e
	.uaword	.LLST111
	.uleb128 0x21
	.string	"hy"
	.byte	0x1
	.byte	0xe2
	.uaword	0x16e
	.uaword	.LLST112
	.uleb128 0x21
	.string	"_2q0mx"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST113
	.uleb128 0x21
	.string	"_2q0my"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST114
	.uleb128 0x21
	.string	"_2q0mz"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST115
	.uleb128 0x21
	.string	"_2q1mx"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST116
	.uleb128 0x21
	.string	"_2bx"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST117
	.uleb128 0x21
	.string	"_2bz"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST118
	.uleb128 0x21
	.string	"_4bx"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST119
	.uleb128 0x21
	.string	"_4bz"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST120
	.uleb128 0x21
	.string	"_2q0"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST121
	.uleb128 0x21
	.string	"_2q1"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST122
	.uleb128 0x21
	.string	"_2q2"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST123
	.uleb128 0x21
	.string	"_2q3"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST124
	.uleb128 0x21
	.string	"_2q0q2"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST125
	.uleb128 0x21
	.string	"_2q2q3"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST126
	.uleb128 0x21
	.string	"q0q0"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST127
	.uleb128 0x21
	.string	"q0q1"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST128
	.uleb128 0x21
	.string	"q0q2"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST129
	.uleb128 0x21
	.string	"q0q3"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST130
	.uleb128 0x21
	.string	"q1q1"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST131
	.uleb128 0x21
	.string	"q1q2"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST132
	.uleb128 0x21
	.string	"q1q3"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST133
	.uleb128 0x21
	.string	"q2q2"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST134
	.uleb128 0x21
	.string	"q2q3"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST135
	.uleb128 0x21
	.string	"q3q3"
	.byte	0x1
	.byte	0xe3
	.uaword	0x16e
	.uaword	.LLST136
	.uleb128 0x26
	.string	"gDotx"
	.byte	0x1
	.byte	0xe4
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"gDoty"
	.byte	0x1
	.byte	0xe4
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"gDotz"
	.byte	0x1
	.byte	0xe4
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"qDot1"
	.byte	0x1
	.byte	0xe5
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.string	"qDot2"
	.byte	0x1
	.byte	0xe5
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.string	"qDot3"
	.byte	0x1
	.byte	0xe5
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x26
	.string	"qDot4"
	.byte	0x1
	.byte	0xe5
	.uaword	0x2ef
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x19
	.uaword	0x325
	.uaword	.LBB106
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x101
	.uaword	0xda4
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST137
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x170
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST138
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST139
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST140
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x325
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.uahalf	0x107
	.uaword	0xddb
	.uleb128 0x27
	.uaword	0x345
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x1c0
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST141
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST142
	.uleb128 0x28
	.uaword	0x367
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x325
	.uaword	.LBB132
	.uaword	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.uahalf	0x12f
	.uaword	0xe1a
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST143
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x1e8
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST144
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST145
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST146
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x325
	.uaword	.LBB154
	.uaword	.Ldebug_ranges0+0x248
	.byte	0x1
	.uahalf	0x156
	.uaword	0xe59
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST147
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x248
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST148
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST149
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST150
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL239
	.uaword	0x1184
	.uleb128 0x2a
	.uaword	.LVL293
	.byte	0x1
	.uaword	0x3cc
	.uleb128 0x24
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x6
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.uleb128 0x24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x325
	.uaword	.LFB303
	.uaword	.LFE303
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xebd
	.uleb128 0x14
	.uaword	0x345
	.uaword	.LLST151
	.uleb128 0x1b
	.uaword	0x34f
	.uaword	.LLST152
	.uleb128 0x1b
	.uaword	0x35d
	.uaword	.LLST153
	.uleb128 0x1b
	.uaword	0x367
	.uaword	.LLST154
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"computeAngles"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	.LFB304
	.uaword	.LFE304
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xefb
	.uleb128 0x29
	.uaword	.LVL301
	.uaword	0x119f
	.uleb128 0x29
	.uaword	.LVL302
	.uaword	0x11c0
	.uleb128 0x29
	.uaword	.LVL303
	.uaword	0x119f
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Madgwick_getRoll"
	.byte	0x1
	.byte	0x5f
	.uaword	0x16e
	.uaword	.LFB294
	.uaword	.LFE294
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf2d
	.uleb128 0x29
	.uaword	.LVL304
	.uaword	0xebd
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Madgwick_getPitch"
	.byte	0x1
	.byte	0x63
	.uaword	0x16e
	.uaword	.LFB295
	.uaword	.LFE295
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf60
	.uleb128 0x29
	.uaword	.LVL305
	.uaword	0xebd
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Madgwick_getYaw"
	.byte	0x1
	.byte	0x67
	.uaword	0x16e
	.uaword	.LFB296
	.uaword	.LFE296
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf91
	.uleb128 0x29
	.uaword	.LVL306
	.uaword	0xebd
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Madgwick_getRollRadians"
	.byte	0x1
	.byte	0x6b
	.uaword	0x16e
	.uaword	.LFB297
	.uaword	.LFE297
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfca
	.uleb128 0x29
	.uaword	.LVL307
	.uaword	0xebd
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Madgwick_getPitchRadians"
	.byte	0x1
	.byte	0x6f
	.uaword	0x16e
	.uaword	.LFB298
	.uaword	.LFE298
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1004
	.uleb128 0x29
	.uaword	.LVL308
	.uaword	0xebd
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Madgwick_getYawRadians"
	.byte	0x1
	.byte	0x73
	.uaword	0x16e
	.uaword	.LFB299
	.uaword	.LFE299
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x103c
	.uleb128 0x29
	.uaword	.LVL309
	.uaword	0xebd
	.byte	0
	.uleb128 0x2d
	.uaword	0x285
	.uaword	0x104c
	.uleb128 0x2e
	.uaword	0x208
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x4
	.byte	0x96
	.uaword	0x1069
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x103c
	.uleb128 0x31
	.string	"beta"
	.byte	0x1
	.byte	0x33
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	beta
	.uleb128 0x31
	.string	"khi"
	.byte	0x1
	.byte	0x34
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	khi
	.uleb128 0x31
	.string	"q0"
	.byte	0x1
	.byte	0x35
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	q0
	.uleb128 0x31
	.string	"q1"
	.byte	0x1
	.byte	0x36
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	q1
	.uleb128 0x31
	.string	"q2"
	.byte	0x1
	.byte	0x37
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	q2
	.uleb128 0x31
	.string	"q3"
	.byte	0x1
	.byte	0x38
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	q3
	.uleb128 0x31
	.string	"roll"
	.byte	0x1
	.byte	0x39
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	roll
	.uleb128 0x31
	.string	"pitch"
	.byte	0x1
	.byte	0x3a
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	pitch
	.uleb128 0x31
	.string	"yaw"
	.byte	0x1
	.byte	0x3b
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	yaw
	.uleb128 0x31
	.string	"gxc"
	.byte	0x1
	.byte	0x3c
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	gxc
	.uleb128 0x31
	.string	"gyc"
	.byte	0x1
	.byte	0x3c
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	gyc
	.uleb128 0x31
	.string	"gzc"
	.byte	0x1
	.byte	0x3c
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	gzc
	.uleb128 0x31
	.string	"invSampleFreq"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	invSampleFreq
	.uleb128 0x31
	.string	"anglesComputed"
	.byte	0x1
	.byte	0x3f
	.uaword	0x117f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	anglesComputed
	.uleb128 0xa
	.uaword	0x229
	.uleb128 0x32
	.byte	0x1
	.string	"sqrtf"
	.byte	0x5
	.uahalf	0x136
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uaword	0x119f
	.uleb128 0x33
	.uaword	0x16e
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"atan2f"
	.byte	0x5
	.uahalf	0x12e
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uaword	0x11c0
	.uleb128 0x33
	.uaword	0x16e
	.uleb128 0x33
	.uaword	0x16e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"asinf"
	.byte	0x5
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uleb128 0x33
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x5
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
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE293
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL26
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL30
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL31
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL41
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0xc
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL62
	.uaword	.LVL72
	.uahalf	0xc
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL43
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL47
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL67
	.uaword	.LVL72
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL51
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL59
	.uaword	.LVL66
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0xf
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x16e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL72
	.uaword	.LFE302
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL72
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL32
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL29
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL29
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL29
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL30
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL33
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL33
	.uaword	.LVL39
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL34
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL35
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL37
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL72
	.uahalf	0x2a
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL17
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL52
	.uahalf	0x2f
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL72
	.uahalf	0x2f
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL36
	.uahalf	0x43
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x31
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL72
	.uahalf	0x35
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x27
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL63
	.uahalf	0x2c
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL54
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x31
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x27
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x32
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL63
	.uahalf	0x37
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LFE302
	.uahalf	0x55
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL80
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL90
	.uaword	.LVL93
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL80
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL85
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL84
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL99
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL142-1
	.uahalf	0xc
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL142-1
	.uaword	.LVL177
	.uahalf	0xe
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL80
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0xc
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL177
	.uahalf	0xe
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0xc
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL177
	.uahalf	0xe
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x2
	.byte	0x8a
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL80
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL110
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL121
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL80
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x91
	.sleb128 12
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL111
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x2
	.byte	0x8a
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL80
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x91
	.sleb128 16
	.uaword	.LVL110
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL186-1
	.uaword	.LFE300
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL154
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL167
	.uaword	.LVL177
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL156
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL170
	.uaword	.LVL177
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL158
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL165
	.uaword	.LVL169
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL172
	.uaword	.LVL177
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL160
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL165
	.uaword	.LVL173
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL175
	.uaword	.LVL177
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL87
	.uaword	.LVL171
	.uahalf	0x3
	.byte	0x91
	.sleb128 -84
	.uaword	.LVL171
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL177
	.uaword	.LVL185
	.uahalf	0x3
	.byte	0x91
	.sleb128 -84
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL89
	.uaword	.LVL174
	.uahalf	0x3
	.byte	0x91
	.sleb128 -80
	.uaword	.LVL174
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL177
	.uaword	.LVL185
	.uahalf	0x3
	.byte	0x91
	.sleb128 -80
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL96
	.uaword	.LVL176
	.uahalf	0x3
	.byte	0x91
	.sleb128 -76
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL177
	.uaword	.LVL185
	.uahalf	0x3
	.byte	0x91
	.sleb128 -76
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL94
	.uaword	.LVL185
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL140
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL141
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL110
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL112
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL126
	.uaword	.LVL148
	.uahalf	0x3
	.byte	0x91
	.sleb128 -92
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL113
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL114
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL127
	.uaword	.LVL147
	.uahalf	0x3
	.byte	0x91
	.sleb128 -88
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL142
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL145
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL145
	.uaword	.LVL156
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL157
	.uaword	.LVL160
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL149
	.uaword	.LVL177
	.uahalf	0x3
	.byte	0x91
	.sleb128 -92
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL114
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL114
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL118
	.uaword	.LVL177
	.uahalf	0x3
	.byte	0x91
	.sleb128 -68
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL115
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL131
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL117
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL123
	.uaword	.LVL130
	.uahalf	0xf
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x13
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL177
	.uahalf	0x15
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x22
	.byte	0x91
	.sleb128 -32
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL123
	.uaword	.LVL177
	.uahalf	0x15
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x22
	.byte	0x91
	.sleb128 -28
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL123
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL124
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL135
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x91
	.sleb128 -60
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL125
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL129
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x91
	.sleb128 -36
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL128
	.uaword	.LVL136
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL139
	.uahalf	0xc
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL177
	.uahalf	0xe
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL129
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0xc
	.byte	0x91
	.sleb128 -16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL177
	.uahalf	0xe
	.byte	0x91
	.sleb128 -16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL133
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL133
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0xc
	.byte	0x91
	.sleb128 -8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL177
	.uahalf	0xe
	.byte	0x91
	.sleb128 -8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL137
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL142-1
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL142-1
	.uaword	.LVL177
	.uahalf	0x2a
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL96
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL101
	.uaword	.LVL122
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL142-1
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL142-1
	.uaword	.LVL177
	.uahalf	0x33
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL103
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x31
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL142-1
	.uahalf	0x31
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL142-1
	.uaword	.LVL177
	.uahalf	0x35
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL104
	.uaword	.LVL120
	.uahalf	0x21
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL177
	.uahalf	0x2a
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL103
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL107
	.uaword	.LVL120
	.uahalf	0x26
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0x2f
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL142-1
	.uahalf	0x2f
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL142-1
	.uaword	.LVL177
	.uahalf	0x33
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x21
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL109
	.uaword	.LVL119
	.uahalf	0x3f
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL120
	.uahalf	0x2c
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL177
	.uahalf	0x35
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL161
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL168
	.uaword	.LVL177
	.uahalf	0x28
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL162
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL169
	.uaword	.LVL177
	.uahalf	0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL162
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL165
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL162
	.uaword	.LVL168
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL177
	.uahalf	0x33
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL178
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL179
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x55
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL188
	.uaword	.LVL193
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3c8efa39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL193
	.uaword	.LVL274
	.uahalf	0x11
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3c8efa39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL274
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL293-1
	.uaword	.LFE301
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL188
	.uaword	.LVL194
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3c8efa39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL275
	.uahalf	0x11
	.byte	0x91
	.sleb128 -68
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3c8efa39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL278
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL293-1
	.uaword	.LFE301
	.uahalf	0x3
	.byte	0x91
	.sleb128 -68
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL188
	.uaword	.LVL204
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3c8efa39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL276
	.uahalf	0x10
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3c8efa39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL293-1
	.uaword	.LFE301
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL187
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL207
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL243
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL284
	.uahalf	0xf
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL293-1
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL187
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0xc
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL284
	.uahalf	0xf
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL293-1
	.uaword	.LFE301
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL187
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0xc
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL284
	.uahalf	0xf
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LFE301
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL187
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL202
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL292
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL187
	.uaword	.LVL203
	.uahalf	0x2
	.byte	0x91
	.sleb128 12
	.uaword	.LVL203
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL232
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL292
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL187
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x91
	.sleb128 16
	.uaword	.LVL205
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL233
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL292
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL250
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL265
	.uaword	.LVL268
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL268
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL252
	.uaword	.LVL269
	.uahalf	0x3
	.byte	0x91
	.sleb128 -120
	.uaword	.LVL269
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL256
	.uaword	.LVL272
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL272
	.uaword	.LVL282
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL258
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL272
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL236
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL238
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL205
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL206
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL219
	.uaword	.LVL244
	.uahalf	0x3
	.byte	0x91
	.sleb128 -116
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL207
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL208
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL209
	.uaword	.LVL247
	.uahalf	0x3
	.byte	0x91
	.sleb128 -112
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL239
	.uaword	.LVL263
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL241
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL241
	.uaword	.LVL252
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL253
	.uaword	.LVL263
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL245
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -116
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL211
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -92
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL212
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL213
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -108
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL215
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -104
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL218
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL230
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -88
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL218
	.uaword	.LVL222
	.uahalf	0x15
	.byte	0x91
	.sleb128 -84
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -84
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL284
	.uahalf	0x17
	.byte	0x91
	.sleb128 -84
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -84
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x22
	.byte	0x91
	.sleb128 -60
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL218
	.uaword	.LVL284
	.uahalf	0x17
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x22
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL218
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL218
	.uaword	.LVL255
	.uahalf	0x3
	.byte	0x91
	.sleb128 -100
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL221
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -76
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL221
	.uaword	.LVL231
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL239-1
	.uahalf	0xc
	.byte	0x91
	.sleb128 -52
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL224
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL226
	.uaword	.LVL227
	.uahalf	0xc
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL227
	.uaword	.LVL284
	.uahalf	0xe
	.byte	0x91
	.sleb128 -48
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL229
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL230
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0xc
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL284
	.uahalf	0xe
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL234
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL191
	.uaword	.LVL197
	.uahalf	0x1d
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL197
	.uaword	.LVL207
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL243
	.uahalf	0x26
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL284
	.uahalf	0x2a
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL190
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x22
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL197
	.uaword	.LVL202
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL207
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL239-1
	.uahalf	0x2b
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL239-1
	.uaword	.LVL243
	.uahalf	0x2f
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL284
	.uahalf	0x33
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x1d
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL195
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL199
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x91
	.sleb128 -96
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL197
	.uahalf	0x28
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL197
	.uaword	.LVL207
	.uahalf	0x31
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL243
	.uahalf	0x31
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL284
	.uahalf	0x35
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL198
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL216
	.uaword	.LVL239-1
	.uahalf	0x2f
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL239-1
	.uaword	.LVL284
	.uahalf	0x33
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 16
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL198
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL201
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL261
	.uaword	.LVL265
	.uahalf	0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL265
	.uaword	.LVL271
	.uahalf	0x29
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL260
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL266
	.uaword	.LVL271
	.uahalf	0x2e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL261
	.uaword	.LVL262
	.uahalf	0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL264
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL267
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x7b
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL265
	.uahalf	0x34
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL265
	.uaword	.LVL271
	.uahalf	0x34
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0xc
	.uleb128 0x16e
	.byte	0x22
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL286
	.uaword	.LVL292
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL289
	.uaword	.LVL290
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL290
	.uaword	.LVL291
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x55
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL294
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL296
	.uaword	.LFE303
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL295
	.uaword	.LVL299
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL299
	.uaword	.LFE303
	.uahalf	0x10
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL296
	.uaword	.LVL297
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x9f
	.uaword	.LVL297
	.uaword	.LVL298
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL298
	.uaword	.LVL299
	.uahalf	0x1d
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3fc00000
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL299
	.uaword	.LVL300
	.uahalf	0x28
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3fc00000
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf4
	.uleb128 0x16e
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL300
	.uaword	.LFE303
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0xb
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL296
	.uaword	.LFE303
	.uahalf	0x12
	.byte	0xc
	.uaword	0x5f3759df
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16e
	.byte	0xf9
	.uleb128 0x177
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
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
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	0
	.uaword	0
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	0
	.uaword	0
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB127
	.uaword	.LBE127
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	0
	.uaword	0
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	0
	.uaword	0
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	0
	.uaword	0
	.uaword	.LFB292
	.uaword	.LFE292
	.uaword	.LFB293
	.uaword	.LFE293
	.uaword	.LFB302
	.uaword	.LFE302
	.uaword	.LFB300
	.uaword	.LFE300
	.uaword	.LFB301
	.uaword	.LFE301
	.uaword	.LFB303
	.uaword	.LFE303
	.uaword	.LFB304
	.uaword	.LFE304
	.uaword	.LFB294
	.uaword	.LFE294
	.uaword	.LFB295
	.uaword	.LFE295
	.uaword	.LFB296
	.uaword	.LFE296
	.uaword	.LFB297
	.uaword	.LFE297
	.uaword	.LFB298
	.uaword	.LFE298
	.uaword	.LFB299
	.uaword	.LFE299
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"recipNorm"
	.extern	asinf,STT_FUNC,0
	.extern	atan2f,STT_FUNC,0
	.extern	sqrtf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
