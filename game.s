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
	.file	"game.c"
	.text
	.global	__aeabi_i2d
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.global	__aeabi_dsub
	.global	__aeabi_dcmple
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	jump.part.0, %function
jump.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L9
	add	r9, r4, #88
	ldmia	r9, {r8-r9}
	ldr	r0, [r4, #4]
	ldr	r10, .L9+4
	mov	lr, pc
	bx	r10
	ldr	r6, .L9+8
	mov	r2, r8
	mov	r3, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L9+12
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
	blt	.L2
	ldr	r0, [r4, #80]
	mov	lr, pc
	bx	r10
	ldr	r5, .L9+16
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	r5
	mov	r2, r0
	mov	r3, r1
	ldr	r5, .L9+20
	str	r2, [r4, #88]
	str	r3, [r4, #92]
	mov	r2, #0
	mov	r3, #0
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L2:
	cmp	r5, r8
	movge	r3, #0
	strge	r8, [r4, #4]
	strge	r3, [r4, #68]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L8:
	mov	r3, #0
	add	r8, r8, r9
	str	r8, [r4, #4]
	str	r3, [r4, #68]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	player
	.word	__aeabi_i2d
	.word	__aeabi_dadd
	.word	__aeabi_d2iz
	.word	__aeabi_dsub
	.word	__aeabi_dcmple
	.size	jump.part.0, .-jump.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #1
	mov	r2, #0
	mov	r6, #0
	mov	r4, #0
	mov	fp, #82
	mov	r10, #8
	mov	r9, #50
	mov	r8, #4
	mov	lr, #2
	mov	ip, #16
	mov	r0, #10
	ldr	r3, .L13
	ldr	r7, .L13+4
	ldr	r5, .L13+8
	str	r6, [r3, #72]
	str	r7, [r3, #76]
	str	r4, [r3, #88]
	str	r5, [r3, #92]
	stm	r3, {r10, fp}
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
	str	r0, [r3, #48]
	str	r0, [r3, #32]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	player
	.word	1072693248
	.word	1071644672
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L17
	mov	lr, pc
	bx	r8
	ldr	r7, .L17+4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	ldr	r4, .L17+8
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r4, #28]
	add	r0, r0, #120
	ldr	r6, .L17+12
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
	ldr	r5, .L17+16
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
	ldr	r3, .L17+20
	stm	r3, {r6-r7}
	ldr	r6, .L17+24
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
.L18:
	.align	2
.L17:
	.word	rand
	.word	70991195
	.word	enemy
	.word	__aeabi_i2d
	.word	enemy2
	.word	enemy3
	.word	player
	.size	initEnemy, .-initEnemy
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	r2, .L21
	ldr	r3, .L21+4
	str	r4, [r2]
	str	r4, [r3]
	bl	initPlayer
	bl	initEnemy
	mov	r2, #3
	ldr	r1, .L21+8
	ldr	r3, .L21+12
	str	r4, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	vOff
	.word	hOff
	.word	enemynum
	.word	bites
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L56
	ldrh	r5, [r2]
	ldr	r4, .L56+4
	tst	r5, #32
	str	r3, [r4, #28]
	sub	sp, sp, #12
	bne	.L24
	ldr	r3, [r4]
	cmn	r3, #4
	blt	.L24
	mov	r2, #1
	ldr	r1, [r4, #8]
	sub	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #24]
	str	r2, [r4, #28]
.L25:
	ldr	r3, .L56+8
	ldrh	r6, [r3]
	tst	r6, #1
	ldr	r7, .L56+12
	ldr	r8, .L56+16
	ldr	r9, .L56+20
	beq	.L26
	tst	r5, #1
	beq	.L51
.L26:
	tst	r6, #128
	beq	.L29
	tst	r5, #128
	moveq	r1, #40
	moveq	r3, #100663296
	moveq	r2, #148
	streq	r1, [r4, #4]
	strheq	r2, [r3, #240]	@ movhi
.L29:
	tst	r6, #64
	ldr	r3, [r4, #68]
	beq	.L30
	tst	r5, #64
	beq	.L53
.L30:
	cmp	r3, #1
	beq	.L31
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L54
.L33:
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
.L24:
	ands	r3, r5, #16
	bne	.L25
	ldr	r2, [r4]
	cmp	r2, #239
	bgt	.L25
	mov	r0, #1
	ldr	r1, [r4, #8]
	add	r2, r1, r2
	str	r3, [r4, #24]
	str	r2, [r4]
	str	r0, [r4, #28]
	b	.L25
.L53:
	cmp	r3, #0
	bne	.L30
	mov	r3, #1
	mov	r0, #0
	ldr	r1, .L56+24
	str	r3, [r4, #68]
	ldr	r3, [r4, #4]
	str	r0, [r4, #88]
	str	r1, [r4, #92]
	str	r3, [r4, #96]
.L31:
	bl	jump.part.0
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L33
.L54:
	ldr	r3, .L56+28
	mov	lr, pc
	bx	r3
	b	.L33
.L51:
	ldr	r3, [r7, #84]
	ldr	r1, [r8, #84]
	ldr	r2, [r9, #84]
	orr	r3, r3, r1
	orrs	r3, r3, r2
	beq	.L26
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L26
	ldr	r3, .L56+32
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	ldr	fp, .L56+36
	mov	r2, r0
	mov	r3, r1
	stm	sp, {r0-r1}
	ldmia	r7, {r0-r1}
	mov	lr, pc
	bx	fp
	ldr	r10, .L56+40
	mov	r2, #0
	ldr	r3, .L56+44
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L27
	ldmia	sp, {r2-r3}
	ldmia	r8, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, .L56+44
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L55
.L27:
	mov	r3, #1
	str	r3, [r4, #64]
	b	.L26
.L55:
	ldmia	sp, {r2-r3}
	ldmia	r9, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, .L56+44
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L26
	b	.L27
.L57:
	.align	2
.L56:
	.word	buttons
	.word	player
	.word	oldButtons
	.word	enemy
	.word	enemy2
	.word	enemy3
	.word	-1071906816
	.word	goToLose
	.word	__aeabi_i2d
	.word	__aeabi_dsub
	.word	__aeabi_dcmple
	.word	1077477376
	.size	updatePlayer, .-updatePlayer
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L99
	ldr	r7, [r5, #80]
	cmp	r7, #0
	sub	sp, sp, #28
	bne	.L60
	ldr	r4, .L99+4
	ldr	r10, [r4]
	ldr	r6, .L99+8
	mov	r0, r10
	mov	lr, pc
	bx	r6
	ldr	fp, [r4, #64]
	cmp	fp, #1
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L93
.L61:
	mov	r2, r8
	mov	r3, r9
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	ldr	r7, .L99+12
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L63
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r7, .L99+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L63
	mov	r0, r8
	mov	r1, r9
	mov	r2, #0
	ldr	r7, .L99+20
	ldr	r3, .L99+24
	mov	lr, pc
	bx	r7
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L63:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L99+28
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	ldr	r7, .L99+32
	mov	r0, r10
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L94
.L60:
	ldr	r5, .L99+36
	ldr	r7, [r5, #80]
	cmp	r7, #0
	bne	.L68
	ldr	r4, .L99+4
	ldr	r10, [r4]
	ldr	r6, .L99+8
	mov	r0, r10
	mov	lr, pc
	bx	r6
	ldr	fp, [r4, #64]
	cmp	fp, #1
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L95
.L69:
	mov	r2, r8
	mov	r3, r9
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	ldr	r7, .L99+12
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L71
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r7, .L99+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L71
	mov	r0, r8
	mov	r1, r9
	mov	r2, #0
	ldr	r7, .L99+20
	ldr	r3, .L99+24
	mov	lr, pc
	bx	r7
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L71:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L99+28
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	ldr	r7, .L99+32
	mov	r0, r10
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L96
.L68:
	ldr	r5, .L99+40
	ldr	r7, [r5, #80]
	cmp	r7, #0
	bne	.L58
	ldr	r4, .L99+4
	ldr	r10, [r4]
	ldr	r6, .L99+8
	mov	r0, r10
	mov	lr, pc
	bx	r6
	ldr	fp, [r4, #64]
	cmp	fp, #1
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L97
.L77:
	mov	r2, r8
	mov	r3, r9
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	ldr	r7, .L99+12
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L79
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r7, .L99+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L79
	mov	r0, r8
	mov	r1, r9
	mov	r2, #0
	ldr	r7, .L99+20
	ldr	r3, .L99+24
	mov	lr, pc
	bx	r7
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L79:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L99+28
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	ldr	r7, .L99+32
	mov	r0, r10
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L98
.L58:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L97:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L99+20
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L99+44
	ldr	ip, .L99+48
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L77
	ldr	r3, .L99+52
	mov	r2, r7
	ldr	r1, [r3]
	ldr	r0, .L99+56
	ldr	r3, .L99+60
	mov	lr, pc
	bx	r3
	ldr	r10, [r4]
	str	r7, [r4, #64]
	mov	r0, r10
	str	fp, [r5, #80]
	mov	lr, pc
	bx	r6
	ldmia	r5, {r8-r9}
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	b	.L77
.L93:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L99+20
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L99+44
	ldr	ip, .L99+48
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L61
	ldr	r3, .L99+52
	mov	r2, r7
	ldr	r1, [r3]
	ldr	r0, .L99+56
	ldr	r3, .L99+60
	mov	lr, pc
	bx	r3
	ldr	r10, [r4]
	str	fp, [r5, #80]
	mov	r0, r10
	str	r7, [r4, #64]
	mov	lr, pc
	bx	r6
	ldmia	r5, {r8-r9}
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	b	.L61
.L95:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L99+20
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L99+44
	ldr	ip, .L99+48
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L69
	ldr	r3, .L99+52
	mov	r2, r7
	ldr	r1, [r3]
	ldr	r0, .L99+56
	ldr	r3, .L99+60
	mov	lr, pc
	bx	r3
	ldr	r10, [r4]
	str	fp, [r5, #80]
	mov	r0, r10
	str	r7, [r4, #64]
	mov	lr, pc
	bx	r6
	ldmia	r5, {r8-r9}
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	b	.L69
.L94:
	mov	r1, #8
	mov	r0, #0
	ldr	r7, .L99+64
	ldr	r3, [r7]
	ldr	r2, .L99+68
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	str	r0, [r4, #64]
	mov	lr, pc
	bx	r2
	ldr	r3, .L99+72
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
	b	.L60
.L96:
	mov	r1, #8
	ldr	r7, .L99+64
	ldr	r3, [r7]
	ldr	r2, .L99+68
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L99+72
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
	b	.L68
.L98:
	mov	r1, #8
	ldr	r7, .L99+64
	ldr	r3, [r7]
	ldr	r2, .L99+68
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L99+72
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
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	enemy
	.word	player
	.word	__aeabi_i2d
	.word	__aeabi_dcmplt
	.word	__aeabi_dcmpgt
	.word	__aeabi_dsub
	.word	1071644672
	.word	__aeabi_d2iz
	.word	collision
	.word	enemy2
	.word	enemy3
	.word	1077477376
	.word	__aeabi_dcmple
	.word	dedeffect_length
	.word	dedeffect_data
	.word	playSoundB
	.word	bites
	.word	rand
	.word	70991195
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	updateEnemy
	ldr	r2, .L111
	ldr	r3, [r2]
	ldr	r0, .L111+4
	cmp	r3, #120
	sub	r3, r3, #120
	str	r3, [r0]
	movne	r3, #0
	ldr	r1, [r2, #4]
	strne	r3, [r0]
	cmp	r1, #80
	movne	r3, #0
	ldr	r2, .L111+8
	sub	ip, r1, #80
	str	ip, [r2]
	pop	{r4, lr}
	strne	r3, [r2]
	bx	lr
.L112:
	.align	2
.L111:
	.word	player
	.word	hOff
	.word	vOff
	.size	updateGame, .-updateGame
	.align	2
	.global	jump
	.syntax unified
	.arm
	.fpu softvfp
	.type	jump, %function
jump:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L115
	ldr	r3, [r3, #68]
	cmp	r3, #1
	bxne	lr
	b	jump.part.0
.L116:
	.align	2
.L115:
	.word	player
	.size	jump, .-jump
	.global	__aeabi_idivmod
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L141
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L118
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L119
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	beq	.L137
.L120:
	add	r1, r1, #32
	ldr	r4, .L141+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #12]	@ movhi
.L121:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldr	r3, .L141+8
	ldmia	r5, {r0-r1}
	strh	r2, [r4, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r5, .L141+12
	lsl	r0, r0, #23
	ldr	r3, [r5, #84]
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	cmp	r3, #0
	strh	r0, [r4, #10]	@ movhi
	bne	.L138
.L124:
	ldrh	r3, [r4, #16]
	orr	r3, r3, #512
	strh	r3, [r4, #16]	@ movhi
.L129:
	ldr	r5, .L141+16
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L131
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	bne	.L132
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L141+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
.L132:
	add	r1, r1, #32
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #28]	@ movhi
	b	.L133
.L118:
	ldr	r4, .L141+4
	ldrh	r3, [r4, #8]
	ldr	r5, .L141+12
	orr	r3, r3, #512
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L124
.L138:
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	bne	.L126
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L141+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
.L126:
	add	r1, r1, #32
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #20]	@ movhi
	b	.L127
.L130:
	ldrh	r3, [r4, #24]
	orr	r3, r3, #512
	strh	r3, [r4, #24]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L131:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	beq	.L139
.L134:
	mov	r3, #0
	add	r1, r1, #72
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #28]	@ movhi
	str	r3, [r5, #84]
.L133:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldmia	r5, {r0-r1}
	strh	r2, [r4, #24]	@ movhi
	ldr	r3, .L141+8
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	strh	r0, [r4, #26]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L125:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	beq	.L140
.L128:
	mov	r3, #0
	add	r1, r1, #72
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #20]	@ movhi
	str	r3, [r5, #84]
.L127:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldr	r3, .L141+8
	strh	r2, [r4, #16]	@ movhi
	ldmia	r5, {r0-r1}
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	strh	r0, [r4, #18]	@ movhi
	b	.L129
.L119:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	bne	.L122
	mov	ip, #10
	add	r0, r1, #1
	ldr	r2, .L141+20
	ldr	r1, [r5, #64]
	str	r3, [r5, #84]
	str	ip, [r5, #36]
	mov	lr, pc
	bx	r2
	str	r1, [r5, #52]
.L122:
	add	r1, r1, #72
	ldr	r4, .L141+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #12]	@ movhi
	b	.L121
.L137:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L141+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
	b	.L120
.L140:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L141+20
	ldr	r1, [r5, #64]
	str	r2, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #52]
	b	.L128
.L139:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L141+20
	ldr	r1, [r5, #64]
	str	r2, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #52]
	b	.L134
.L142:
	.align	2
.L141:
	.word	enemy
	.word	shadowOAM
	.word	__aeabi_d2iz
	.word	enemy2
	.word	enemy3
	.word	__aeabi_idivmod
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L158
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L144
	ldr	r3, .L158+4
	ldrh	r3, [r3]
	tst	r3, #128
	ldm	r4, {r5, r6}
	beq	.L145
	ldr	r3, .L158+8
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L145
	mov	r1, #404
	ldr	r3, .L158+12
	ldr	r3, [r3]
	add	r3, r3, r6, lsl #5
	add	r3, r3, r5
	ldr	r2, .L158+16
	lsl	r3, r3, #1
	strh	r1, [r2, r3]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	ldr	r2, .L158+20
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L145:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L147
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	ldr	r1, [r4, #100]
	bne	.L148
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L158+24
	ldr	r1, [r4, #40]
	str	r2, [r4, #32]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #100]
.L148:
	ldr	r2, .L158+20
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r2, #4]	@ movhi
	b	.L149
.L147:
	ldr	r2, [r4, #64]
	cmp	r2, #1
	beq	.L157
	str	r3, [r4, #100]
	ldr	r2, .L158+20
.L149:
	ldr	r1, [r4, #24]
	lsl	r3, r5, #23
	lsr	r3, r3, #23
	orr	r3, r3, #32768
	cmp	r1, #0
	strh	r3, [r2, #2]	@ movhi
	and	r6, r6, #255
	orreq	r3, r3, #4096
	strh	r6, [r2]	@ movhi
	strheq	r3, [r2, #2]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L157:
	ldr	r1, [r4, #44]
	ldr	r2, [r4, #100]
	sub	r1, r1, #1
	cmp	r2, r1
	addlt	r2, r2, #1
	strge	r3, [r4, #64]
	add	r3, r2, #4
	strlt	r2, [r4, #100]
	lsl	r3, r3, #2
	ldr	r2, .L158+20
	and	r3, r3, #1020
	strh	r3, [r2, #4]	@ movhi
	b	.L149
.L159:
	.align	2
.L158:
	.word	player
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	100728832
	.word	shadowOAM
	.word	__aeabi_idivmod
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawBites
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBites, %function
drawBites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L172
	ldr	r3, [r3]
	cmp	r3, #1
	str	lr, [sp, #-4]!
	beq	.L169
	cmp	r3, #2
	bne	.L170
	mov	lr, #32768
	mov	ip, #184
	ldr	r3, .L172+4
	ldr	r3, [r3]
	ldr	r2, .L172+8
	add	r3, r3, #50
	ldrh	r0, [r2, #32]
	ldrh	r1, [r2, #48]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #48]	@ movhi
	strh	lr, [r2, #40]	@ movhi
	strh	ip, [r2, #44]	@ movhi
.L160:
	ldr	lr, [sp], #4
	bx	lr
.L170:
	cmp	r3, #3
	bne	.L171
	mov	lr, #32768
	mov	ip, #185
	ldr	r3, .L172+4
	ldr	r3, [r3]
	ldr	r2, .L172+8
	add	r3, r3, #50
	ldrh	r0, [r2, #40]
	ldrh	r1, [r2, #32]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	lr, [r2, #48]	@ movhi
	strh	r3, [r2, #50]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #32]	@ movhi
	strh	ip, [r2, #52]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L171:
	cmp	r3, #0
	bne	.L160
	ldr	r2, .L172+8
	ldrh	ip, [r2, #32]
	ldrh	r0, [r2, #40]
	ldrh	r1, [r2, #48]
	ldr	lr, .L172+12
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	str	r3, [lr, #56]
	strh	ip, [r2, #32]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #48]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L169:
	mov	r3, #83886080
	mov	r2, #31
	mov	lr, #32768
	mov	ip, #183
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	ldr	r3, .L172+4
	ldr	r3, [r3]
	ldr	r2, .L172+8
	add	r3, r3, #50
	ldrh	r0, [r2, #40]
	ldrh	r1, [r2, #48]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	lr, [r2, #32]	@ movhi
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #48]	@ movhi
	strh	ip, [r2, #36]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L173:
	.align	2
.L172:
	.word	bites
	.word	hOff
	.word	shadowOAM
	.word	player
	.size	drawBites, .-drawBites
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	drawEnemy
	bl	drawPlayer
	bl	drawBites
	mov	ip, #67108864
	mov	r2, #0
	mov	r8, #177
	mov	r7, #178
	mov	lr, #182
	mov	r6, #179
	mov	r5, #180
	mov	r4, #181
	ldr	r1, .L176
	ldr	r3, .L176+4
	ldrh	r9, [r1]
	ldrh	r3, [r3]
	ldr	r1, .L176+8
	ldr	r0, .L176+12
	strh	r3, [ip, #16]	@ movhi
	strh	r9, [ip, #18]	@ movhi
	add	ip, r3, #2
	add	r9, r1, #960
	and	ip, ip, r0
	strh	ip, [r9, #2]	@ movhi
	add	ip, r3, #10
	strh	r2, [r9]	@ movhi
	and	ip, ip, r0
	add	r9, r1, #968
	strh	ip, [r9, #2]	@ movhi
	add	ip, r3, #18
	strh	r2, [r9]	@ movhi
	and	ip, ip, r0
	add	r9, r1, #976
	strh	ip, [r9, #2]	@ movhi
	add	ip, r3, #26
	strh	r2, [r9]	@ movhi
	and	ip, ip, r0
	add	r9, r1, #984
	strh	ip, [r9, #2]	@ movhi
	add	ip, r3, #34
	add	r3, r3, #42
	and	ip, ip, r0
	and	r3, r3, r0
	add	r0, r1, #992
	strh	r2, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	add	r0, r1, #1000
	strh	r3, [r0, #2]	@ movhi
	add	r3, r1, #964
	strh	r8, [r3]	@ movhi
	add	r3, r1, #972
	strh	r2, [r0]	@ movhi
	strh	r7, [r3]	@ movhi
	strh	r2, [r9]	@ movhi
	add	r3, r1, #988
	add	r2, r1, #980
	add	r0, r1, #996
	add	ip, r1, #1004
	strh	r6, [r2]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r4, [r0]	@ movhi
	strh	lr, [ip]	@ movhi
	ldr	r4, .L176+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L177:
	.align	2
.L176:
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	511
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	enemy3,88,8
	.comm	enemy2,88,8
	.comm	enemy,88,8
	.comm	shadowOAM,1024,4
	.comm	enemynum,4,4
	.comm	voff,4,4
	.comm	hoff,4,4
	.comm	vOff,4,4
	.comm	bites,4,4
	.comm	hOff,4,4
	.comm	player,112,8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
