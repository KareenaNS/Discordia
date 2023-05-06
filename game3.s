	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game3.c"
	.text
	.global	__aeabi_idivmod
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer3.part.0, %function
drawPlayer3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L13
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	ldr	r1, [r4, #100]
	beq	.L11
.L3:
	ldr	r2, .L13+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r2, #4]	@ movhi
.L4:
	ldr	r3, [r4]
	ldr	r0, [r4, #24]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #32768
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	cmp	r0, #0
	strh	r3, [r2, #2]	@ movhi
	orreq	r3, r3, #4096
	strh	r1, [r2]	@ movhi
	strheq	r3, [r2, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L2:
	ldr	r2, [r4, #64]
	cmp	r2, #1
	beq	.L12
	str	r3, [r4, #100]
	ldr	r2, .L13+4
	b	.L4
.L11:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L13+8
	ldr	r1, [r4, #40]
	str	r2, [r4, #32]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #100]
	b	.L3
.L12:
	ldr	r1, [r4, #44]
	ldr	r2, [r4, #100]
	sub	r1, r1, #1
	cmp	r2, r1
	addlt	r2, r2, #1
	strge	r3, [r4, #64]
	add	r3, r2, #4
	strlt	r2, [r4, #100]
	lsl	r3, r3, #2
	ldr	r2, .L13+4
	and	r3, r3, #1020
	strh	r3, [r2, #4]	@ movhi
	b	.L4
.L14:
	.align	2
.L13:
	.word	player3
	.word	shadowOAM
	.word	__aeabi_idivmod
	.size	drawPlayer3.part.0, .-drawPlayer3.part.0
	.global	__aeabi_i2d
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.global	__aeabi_dsub
	.global	__aeabi_dcmple
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	jump3.part.0, %function
jump3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L22
	add	r9, r4, #88
	ldmia	r9, {r8-r9}
	ldr	r0, [r4, #4]
	ldr	r10, .L22+4
	mov	lr, pc
	bx	r10
	ldr	r6, .L22+8
	mov	r2, r8
	mov	r3, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L22+12
	mov	lr, pc
	bx	r3
	mov	r5, r0
	mov	r1, r9
	mov	r0, r8
	add	r3, r4, #72
	ldmia	r3, {r2-r3}
	str	r5, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r7, r1
	ldr	r8, [r4, #96]
	ldr	r9, [r4, #84]
	sub	r3, r5, r8
	cmp	r3, r9
	str	r6, [r4, #88]
	str	r7, [r4, #92]
	blt	.L16
	ldr	r0, [r4, #80]
	mov	lr, pc
	bx	r10
	ldr	r5, .L22+16
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	r5
	mov	r2, r0
	mov	r3, r1
	ldr	r5, .L22+20
	str	r2, [r4, #88]
	str	r3, [r4, #92]
	mov	r2, #0
	mov	r3, #0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L21
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L16:
	cmp	r5, r8
	movge	r3, #0
	strge	r8, [r4, #4]
	strge	r3, [r4, #68]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	mov	r3, #0
	add	r8, r8, r9
	str	r8, [r4, #4]
	str	r3, [r4, #68]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	player3
	.word	__aeabi_i2d
	.word	__aeabi_dadd
	.word	__aeabi_d2iz
	.word	__aeabi_dsub
	.word	__aeabi_dcmple
	.size	jump3.part.0, .-jump3.part.0
	.align	2
	.global	initPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer3, %function
initPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r1, #1
	mov	r6, #0
	mov	r4, #0
	mov	fp, #8
	mov	r10, #112
	mov	r9, #40
	mov	r8, #4
	mov	lr, #2
	mov	ip, #16
	mov	r0, #10
	ldr	r3, .L26
	ldr	r7, .L26+4
	ldr	r5, .L26+8
	str	r6, [r3, #72]
	str	r7, [r3, #76]
	str	r4, [r3, #88]
	str	r5, [r3, #92]
	str	fp, [r3]
	str	r10, [r3, #4]
	str	r9, [r3, #84]
	str	r8, [r3, #40]
	str	lr, [r3, #44]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #56]
	str	r1, [r3, #80]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #24]
	str	r2, [r3, #104]
	str	r0, [r3, #48]
	str	r0, [r3, #32]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	player3
	.word	1072693248
	.word	1071644672
	.size	initPlayer3, .-initPlayer3
	.align	2
	.global	initEnemy3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy3, %function
initEnemy3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L30
	mov	lr, pc
	bx	r8
	ldr	r7, .L30+4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	ldr	r4, .L30+8
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r4, #28]
	add	r0, r0, #120
	ldr	r6, .L30+12
	sub	r0, r0, r3
	mov	lr, pc
	bx	r6
	stm	r4, {r0-r1}
	mov	lr, pc
	bx	r8
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r4, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r6
	ldr	r5, .L30+16
	stm	r5, {r0-r1}
	mov	lr, pc
	bx	r8
	smull	r3, r7, r0, r7
	asr	r3, r0, #31
	rsb	r7, r3, r7, asr #1
	rsb	r3, r7, r7, lsl #4
	add	r7, r7, r3, lsl #3
	sub	r0, r0, r7
	ldr	r3, [r4, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r7, r1
	mov	r2, #1
	mov	ip, #16
	mov	r1, #0
	mov	r0, #10
	mov	r8, #3
	mov	lr, #4
	ldr	r3, .L30+20
	stm	r3, {r6-r7}
	ldr	r6, .L30+24
	ldr	r6, [r6, #4]
	str	r8, [r4, #68]
	str	r8, [r5, #68]
	str	r6, [r4, #8]
	str	r6, [r5, #8]
	str	r6, [r3, #8]
	str	r8, [r3, #68]
	str	ip, [r4, #32]
	str	ip, [r5, #32]
	str	ip, [r4, #28]
	str	ip, [r5, #28]
	str	r1, [r4, #72]
	str	r1, [r5, #72]
	str	r2, [r4, #20]
	str	r2, [r5, #20]
	str	r2, [r4, #24]
	str	r2, [r5, #24]
	str	r2, [r4, #84]
	str	r2, [r5, #84]
	str	r0, [r4, #60]
	str	r0, [r5, #60]
	str	r0, [r4, #36]
	str	ip, [r3, #32]
	str	ip, [r3, #28]
	str	r1, [r3, #72]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #84]
	str	r0, [r3, #60]
	str	r0, [r5, #36]
	str	r1, [r4, #80]
	str	r1, [r5, #80]
	str	lr, [r4, #64]
	str	lr, [r5, #64]
	str	lr, [r3, #64]
	str	r0, [r3, #36]
	str	r1, [r3, #80]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	rand
	.word	70991195
	.word	enemyy
	.word	__aeabi_i2d
	.word	enemyyy
	.word	enemyyyy
	.word	player3
	.size	initEnemy3, .-initEnemy3
	.align	2
	.global	initGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame3, %function
initGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L34
	ldr	r2, .L34+4
	push	{r4, lr}
	str	r3, [r1]
	str	r3, [r2]
	bl	initPlayer3
	bl	initEnemy3
	ldr	r3, .L34+8
	ldr	r1, .L34+12
	ldr	r0, [r3]
	ldr	r2, .L34+16
	ldr	r3, .L34+20
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	vOff3
	.word	hOff3
	.word	bites
	.word	bites3
	.word	305
	.word	mapWidth3
	.size	initGame3, .-initGame3
	.align	2
	.global	drawPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer3, %function
drawPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L38
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawPlayer3.part.0
.L37:
	ldr	r2, .L38+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L39:
	.align	2
.L38:
	.word	player3
	.word	shadowOAM
	.size	drawPlayer3, .-drawPlayer3
	.align	2
	.global	drawEnemy3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy3, %function
drawEnemy3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L64
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L42
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	beq	.L60
.L43:
	add	r1, r1, #32
	ldr	r4, .L64+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #12]	@ movhi
.L44:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldr	r3, .L64+8
	ldmia	r5, {r0-r1}
	strh	r2, [r4, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r5, .L64+12
	lsl	r0, r0, #23
	ldr	r3, [r5, #84]
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	cmp	r3, #0
	strh	r0, [r4, #10]	@ movhi
	bne	.L61
.L47:
	ldrh	r3, [r4, #16]
	orr	r3, r3, #512
	strh	r3, [r4, #16]	@ movhi
.L52:
	ldr	r5, .L64+16
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L54
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	bne	.L55
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L64+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
.L55:
	add	r1, r1, #32
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #28]	@ movhi
	b	.L56
.L41:
	ldr	r4, .L64+4
	ldrh	r3, [r4, #8]
	ldr	r5, .L64+12
	orr	r3, r3, #512
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L47
.L61:
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L48
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	bne	.L49
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L64+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
.L49:
	add	r1, r1, #32
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #20]	@ movhi
	b	.L50
.L53:
	ldrh	r3, [r4, #24]
	orr	r3, r3, #512
	strh	r3, [r4, #24]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	beq	.L62
.L57:
	mov	r3, #0
	add	r1, r1, #72
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #28]	@ movhi
	str	r3, [r5, #84]
.L56:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldmia	r5, {r0-r1}
	strh	r2, [r4, #24]	@ movhi
	ldr	r3, .L64+8
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	strh	r0, [r4, #26]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	beq	.L63
.L51:
	mov	r3, #0
	add	r1, r1, #72
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #20]	@ movhi
	str	r3, [r5, #84]
.L50:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldr	r3, .L64+8
	strh	r2, [r4, #16]	@ movhi
	ldmia	r5, {r0-r1}
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	strh	r0, [r4, #18]	@ movhi
	b	.L52
.L42:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	bne	.L45
	mov	ip, #10
	add	r0, r1, #1
	ldr	r2, .L64+20
	ldr	r1, [r5, #64]
	str	r3, [r5, #84]
	str	ip, [r5, #36]
	mov	lr, pc
	bx	r2
	str	r1, [r5, #52]
.L45:
	add	r1, r1, #72
	ldr	r4, .L64+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #12]	@ movhi
	b	.L44
.L60:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L64+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
	b	.L43
.L63:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L64+20
	ldr	r1, [r5, #64]
	str	r2, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #52]
	b	.L51
.L62:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L64+20
	ldr	r1, [r5, #64]
	str	r2, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #52]
	b	.L57
.L65:
	.align	2
.L64:
	.word	enemyy
	.word	shadowOAM
	.word	__aeabi_d2iz
	.word	enemyyy
	.word	enemyyyy
	.word	__aeabi_idivmod
	.size	drawEnemy3, .-drawEnemy3
	.align	2
	.global	updatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L96
	ldrh	r5, [r2]
	ldr	r4, .L96+4
	tst	r5, #32
	str	r3, [r4, #28]
	sub	sp, sp, #12
	bne	.L67
	ldr	r3, [r4]
	cmn	r3, #4
	blt	.L67
	mov	r2, #1
	ldr	r1, [r4, #8]
	sub	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #24]
	str	r2, [r4, #28]
.L68:
	tst	r5, #128
	moveq	r3, #1
	moveq	r2, #35
	streq	r3, [r4, #104]
	ldr	r3, .L96+8
	ldrh	r6, [r3]
	streq	r2, [r4, #4]
	tst	r6, #1
	ldr	r7, .L96+12
	ldr	r8, .L96+16
	ldr	r9, .L96+20
	beq	.L70
	tst	r5, #1
	beq	.L91
.L70:
	tst	r6, #64
	ldr	r3, [r4, #68]
	beq	.L73
	tst	r5, #64
	beq	.L93
.L73:
	cmp	r3, #1
	beq	.L74
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L94
.L76:
	ldr	r3, [r7, #84]
	ldr	r1, [r8, #84]
	ldr	r2, [r9, #84]
	orr	r3, r3, r1
	orrs	r3, r3, r2
	streq	r3, [r4, #64]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L67:
	ands	r3, r5, #16
	bne	.L68
	ldr	r1, .L96+24
	ldr	r2, [r4]
	ldr	r1, [r1]
	cmp	r2, r1
	bge	.L68
	mov	r0, #1
	ldr	r1, [r4, #8]
	add	r2, r1, r2
	str	r3, [r4, #24]
	str	r2, [r4]
	str	r0, [r4, #28]
	b	.L68
.L93:
	cmp	r3, #0
	bne	.L73
	mov	r3, #1
	mov	r0, #0
	ldr	r1, .L96+28
	str	r3, [r4, #68]
	ldr	r3, [r4, #4]
	str	r0, [r4, #88]
	str	r1, [r4, #92]
	str	r3, [r4, #96]
.L74:
	bl	jump3.part.0
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L76
.L94:
	ldr	r3, .L96+32
	mov	lr, pc
	bx	r3
	b	.L76
.L91:
	ldr	r3, [r7, #84]
	ldr	r1, [r8, #84]
	ldr	r2, [r9, #84]
	orr	r3, r3, r1
	orrs	r3, r3, r2
	beq	.L70
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L70
	ldr	r3, .L96+36
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	ldr	fp, .L96+40
	mov	r2, r0
	mov	r3, r1
	stm	sp, {r0-r1}
	ldmia	r7, {r0-r1}
	mov	lr, pc
	bx	fp
	ldr	r10, .L96+44
	mov	r2, #0
	ldr	r3, .L96+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L71
	ldmia	sp, {r2-r3}
	ldmia	r8, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, .L96+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L95
.L71:
	mov	r3, #1
	str	r3, [r4, #64]
	b	.L70
.L95:
	ldmia	sp, {r2-r3}
	ldmia	r9, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, .L96+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L70
	b	.L71
.L97:
	.align	2
.L96:
	.word	buttons
	.word	player3
	.word	oldButtons
	.word	enemyy
	.word	enemyyy
	.word	enemyyyy
	.word	mapWidth3
	.word	-1071906816
	.word	goToLose
	.word	__aeabi_i2d
	.word	__aeabi_dsub
	.word	__aeabi_dcmple
	.word	1077477376
	.size	updatePlayer3, .-updatePlayer3
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.align	2
	.global	updateEnemy3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy3, %function
updateEnemy3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L139
	ldr	r3, [r5, #84]
	cmp	r3, #1
	sub	sp, sp, #28
	beq	.L133
.L100:
	ldr	r5, .L139+4
	ldr	r3, [r5, #84]
	cmp	r3, #1
	beq	.L134
.L108:
	ldr	r5, .L139+8
	ldr	r3, [r5, #84]
	cmp	r3, #1
	beq	.L135
.L98:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L133:
	ldr	r4, .L139+12
	ldr	r7, [r4]
	ldr	r6, .L139+16
	mov	r0, r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #64]
	cmp	r3, #1
	mov	r10, r0
	mov	fp, r1
	str	r3, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L136
.L101:
	mov	r0, r10
	mov	r1, fp
	mov	r2, r8
	mov	r3, r9
	ldr	r10, .L139+20
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L103
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r10, .L139+24
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L103
	mov	r0, r8
	mov	r1, r9
	ldr	r8, .L139+28
	mov	r2, #0
	ldr	r3, .L139+32
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L103:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L139+36
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, .L139+40
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L100
	mov	r1, #8
	ldr	r7, .L139+44
	ldr	r3, [r7]
	ldr	r2, .L139+48
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L139+52
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r5, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r6
	ldr	r3, [r7]
	cmp	r3, #0
	stm	r5, {r0-r1}
	streq	r3, [r4, #56]
	b	.L100
.L135:
	ldr	r4, .L139+12
	ldr	r7, [r4]
	ldr	r6, .L139+16
	mov	r0, r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #64]
	cmp	r3, #1
	mov	r10, r0
	mov	fp, r1
	str	r3, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L137
.L117:
	mov	r0, r10
	mov	r1, fp
	mov	r2, r8
	mov	r3, r9
	ldr	r10, .L139+20
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L119
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r10, .L139+24
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L119
	mov	r0, r8
	mov	r1, r9
	ldr	r8, .L139+28
	mov	r2, #0
	ldr	r3, .L139+56
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L119:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L139+36
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, .L139+40
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L98
	mov	r1, #8
	ldr	r7, .L139+44
	ldr	r3, [r7]
	ldr	r2, .L139+48
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L139+52
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r5, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r6
	ldr	r3, [r7]
	cmp	r3, #0
	stm	r5, {r0-r1}
	streq	r3, [r4, #56]
	b	.L98
.L134:
	ldr	r4, .L139+12
	ldr	r7, [r4]
	ldr	r6, .L139+16
	mov	r0, r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #64]
	cmp	r3, #1
	mov	r10, r0
	mov	fp, r1
	str	r3, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L138
.L109:
	mov	r0, r10
	mov	r1, fp
	mov	r2, r8
	mov	r3, r9
	ldr	r10, .L139+20
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L111
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r10, .L139+24
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L111
	mov	r0, r8
	mov	r1, r9
	ldr	r8, .L139+28
	mov	r2, #0
	ldr	r3, .L139+60
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L111:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L139+36
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, .L139+40
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L108
	mov	r1, #8
	ldr	r7, .L139+44
	ldr	r3, [r7]
	ldr	r2, .L139+48
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L139+52
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r5, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r6
	ldr	r3, [r7]
	cmp	r3, #0
	stm	r5, {r0-r1}
	streq	r3, [r4, #56]
	b	.L108
.L136:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L139+28
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L139+64
	ldr	ip, .L139+68
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L101
	ldr	r3, .L139+72
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L139+76
	ldr	r3, .L139+80
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, [sp, #20]
	ldr	r7, [r4]
	str	r2, [r5, #72]
	mov	r0, r7
	str	r3, [r5, #84]
	str	r3, [r4, #64]
	mov	lr, pc
	bx	r6
	ldmia	r5, {r8-r9}
	mov	r10, r0
	mov	fp, r1
	b	.L101
.L138:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L139+28
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L139+64
	ldr	ip, .L139+68
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L109
	ldr	r3, .L139+72
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L139+76
	ldr	r3, .L139+80
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, [sp, #20]
	ldr	r7, [r4]
	str	r2, [r5, #72]
	mov	r0, r7
	str	r3, [r5, #84]
	str	r3, [r4, #64]
	mov	lr, pc
	bx	r6
	ldmia	r5, {r8-r9}
	mov	r10, r0
	mov	fp, r1
	b	.L109
.L137:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L139+28
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L139+64
	ldr	ip, .L139+68
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L117
	ldr	r3, .L139+72
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L139+76
	ldr	r3, .L139+80
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, [sp, #20]
	ldr	r7, [r4]
	str	r2, [r5, #72]
	mov	r0, r7
	str	r3, [r5, #84]
	str	r3, [r4, #64]
	mov	lr, pc
	bx	r6
	ldmia	r5, {r8-r9}
	mov	r10, r0
	mov	fp, r1
	b	.L117
.L140:
	.align	2
.L139:
	.word	enemyy
	.word	enemyyy
	.word	enemyyyy
	.word	player3
	.word	__aeabi_i2d
	.word	__aeabi_dcmplt
	.word	__aeabi_dcmpgt
	.word	__aeabi_dsub
	.word	1072693248
	.word	__aeabi_d2iz
	.word	collision
	.word	bites
	.word	rand
	.word	70991195
	.word	1072168960
	.word	1071644672
	.word	1077477376
	.word	__aeabi_dcmple
	.word	dedeffect_length
	.word	dedeffect_data
	.word	playSoundB
	.size	updateEnemy3, .-updateEnemy3
	.align	2
	.global	updateGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame3, %function
updateGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer3
	bl	updateEnemy3
	ldr	r3, .L151
	ldr	r2, .L151+4
	ldr	r3, [r3]
	ldr	ip, [r2]
	add	r2, r3, r3, lsr #31
	cmp	ip, r2, asr #1
	bgt	.L142
	ldr	r0, .L151+8
	ldr	r2, [r0]
.L143:
	cmp	r2, #0
	movlt	r1, #0
	movlt	r2, r1
	strlt	r1, [r0]
	sub	r1, r3, #239
	cmp	r1, r2
	suble	r3, r3, #240
	strle	r3, [r0]
	ldr	r3, .L151+12
	ldr	r2, [r3]
	cmp	r2, #0
	movne	r2, #0
	pop	{r4, lr}
	strne	r2, [r3]
	bx	lr
.L142:
	ldr	r0, .L151+8
	asr	r1, r2, #1
	ldr	r2, [r0]
	add	lr, r2, #240
	cmp	r3, lr
	subgt	r2, ip, r1
	strgt	r2, [r0]
	b	.L143
.L152:
	.align	2
.L151:
	.word	mapWidth3
	.word	player3
	.word	hOff3
	.word	vOff3
	.size	updateGame3, .-updateGame3
	.align	2
	.global	jump3
	.syntax unified
	.arm
	.fpu softvfp
	.type	jump3, %function
jump3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L155
	ldr	r3, [r3, #68]
	cmp	r3, #1
	bxne	lr
	b	jump3.part.0
.L156:
	.align	2
.L155:
	.word	player3
	.size	jump3, .-jump3
	.align	2
	.global	drawBites3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBites3, %function
drawBites3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L169
	ldr	r2, .L169+4
	ldrh	ip, [r3, #32]
	ldrh	r0, [r3, #40]
	ldrh	r1, [r3, #48]
	ldr	r2, [r2]
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	cmp	r2, #1
	str	lr, [sp, #-4]!
	strh	ip, [r3, #32]	@ movhi
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #48]	@ movhi
	beq	.L166
	cmp	r2, #2
	bne	.L167
	mov	lr, #32768
	mov	ip, #184
	ldr	r2, .L169+8
	ldr	r2, [r2]
	add	r2, r2, #50
	ldrh	r0, [r3, #56]
	ldrh	r1, [r3, #72]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	strh	lr, [r3, #64]	@ movhi
	strh	ip, [r3, #68]	@ movhi
.L157:
	ldr	lr, [sp], #4
	bx	lr
.L167:
	cmp	r2, #3
	bne	.L168
	mov	lr, #32768
	mov	ip, #185
	ldr	r2, .L169+8
	ldr	r2, [r2]
	add	r2, r2, #50
	ldrh	r0, [r3, #56]
	ldrh	r1, [r3, #64]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	lr, [r3, #72]	@ movhi
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #64]	@ movhi
	strh	ip, [r3, #76]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L168:
	cmp	r2, #0
	bne	.L157
	ldrh	ip, [r3, #56]
	ldrh	r0, [r3, #64]
	ldrh	r1, [r3, #72]
	ldr	lr, .L169+12
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	str	r2, [lr, #56]
	strh	ip, [r3, #56]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L166:
	mov	lr, #32768
	mov	ip, #183
	ldr	r2, .L169+8
	ldr	r2, [r2]
	add	r2, r2, #50
	ldrh	r0, [r3, #64]
	ldrh	r1, [r3, #72]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	lr, [r3, #56]	@ movhi
	strh	r2, [r3, #58]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	strh	ip, [r3, #60]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L170:
	.align	2
.L169:
	.word	shadowOAM
	.word	bites
	.word	hOff
	.word	player3
	.size	drawBites3, .-drawBites3
	.align	2
	.global	drawGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame3, %function
drawGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L185
	ldrh	r2, [r3]
	ldr	r3, .L185+4
	tst	r2, #128
	ldr	r2, [r3, #56]
	bne	.L172
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L172
	cmp	r2, #0
	beq	.L173
	ldr	r3, .L185+8
	ldr	r2, .L185+12
	strh	r2, [r3, #4]	@ movhi
	b	.L174
.L172:
	cmp	r2, #0
	beq	.L173
	bl	drawPlayer3.part.0
.L174:
	bl	drawEnemy3
	bl	drawBites3
	mov	r3, #67108864
	ldr	r2, .L185+16
	ldrh	r7, [r2]
	ldr	r2, .L185+20
	strh	r7, [r3, #16]	@ movhi
	ldrh	r7, [r2]
	ldr	r2, .L185+24
	strh	r7, [r3, #18]	@ movhi
	ldrh	r3, [r2]
	ldr	r2, .L185+28
	ldr	r1, .L185+32
	add	r7, r3, #2
	and	r7, r7, r2
	strh	r7, [r1, #2]	@ movhi
	mov	r7, #181	@ movhi
	mov	r0, #0
	mov	lr, r1
	mov	r6, r1
	mov	r5, r1
	mov	r4, r1
	mov	ip, r1
	strh	r7, [r1, #36]	@ movhi
	mov	r7, #182	@ movhi
	mov	fp, #177
	mov	r10, #178
	mov	r9, #179
	mov	r8, #180
	strh	r0, [r6, #8]!	@ movhi
	strh	r0, [r5, #16]!	@ movhi
	strh	r0, [r4, #24]!	@ movhi
	strh	r0, [lr, #32]!	@ movhi
	strh	r0, [ip, #40]!	@ movhi
	strh	r0, [r1]	@ movhi
	add	r0, r3, #18
	and	r0, r0, r2
	strh	r0, [r5, #2]	@ movhi
	add	r0, r3, #26
	and	r0, r0, r2
	strh	r7, [r1, #44]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	add	r7, r3, #10
	add	r0, r3, #34
	add	r3, r3, #42
	and	r4, r3, r2
	and	r7, r7, r2
	and	r0, r0, r2
	strh	fp, [r1, #4]	@ movhi
	strh	r10, [r1, #12]	@ movhi
	strh	r9, [r1, #20]	@ movhi
	strh	r8, [r1, #28]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	mov	r3, #512
	strh	r7, [r6, #2]	@ movhi
	ldr	r5, .L185+36
	strh	r4, [ip, #2]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	sub	r1, r1, #960
	mov	lr, pc
	bx	r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L173:
	ldr	r2, .L185+8
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	b	.L174
.L186:
	.align	2
.L185:
	.word	buttons
	.word	player3
	.word	shadowOAM
	.word	305
	.word	hOff3
	.word	vOff3
	.word	hOff
	.word	511
	.word	shadowOAM+960
	.word	DMANow
	.size	drawGame3, .-drawGame3
	.comm	enemyyyy,88,8
	.comm	enemyyy,88,8
	.comm	enemyy,88,8
	.comm	shadowOAM,1024,4
	.comm	mapWidth3,4,4
	.comm	vOff3,4,4
	.comm	bites3,4,4
	.comm	hOff3,4,4
	.comm	player3,112,8
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
