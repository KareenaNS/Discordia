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
	.file	"game2.c"
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
	.type	jump2.part.0, %function
jump2.part.0:
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
	.word	player2
	.word	__aeabi_i2d
	.word	__aeabi_dadd
	.word	__aeabi_d2iz
	.word	__aeabi_dsub
	.word	__aeabi_dcmple
	.size	jump2.part.0, .-jump2.part.0
	.global	__aeabi_idivmod
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer2.part.0, %function
drawPlayer2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L38
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	ldr	r1, [r4, #100]
	beq	.L35
.L13:
	ldr	r2, .L38+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r2, #4]	@ movhi
.L14:
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
.L35:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L38+8
	ldr	r1, [r4, #40]
	str	r2, [r4, #32]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #100]
	b	.L13
.L12:
	ldr	r2, [r4, #64]
	cmp	r2, #1
	beq	.L36
	ldr	r3, .L38+12
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L18
	ldr	r2, .L38+16
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L18
	tst	r3, #32
	beq	.L19
	tst	r2, #32
	bne	.L19
.L20:
	ldr	r2, .L38+4
	ldr	r3, .L38+20
	strh	r3, [r2, #4]	@ movhi
	b	.L14
.L19:
	tst	r3, #16
	bne	.L37
.L18:
	mov	r3, #0
	ldr	r2, .L38+4
	str	r3, [r4, #100]
	b	.L14
.L36:
	ldr	r1, [r4, #44]
	ldr	r2, [r4, #100]
	sub	r1, r1, #1
	cmp	r2, r1
	addlt	r2, r2, #1
	strge	r3, [r4, #64]
	add	r3, r2, #4
	strlt	r2, [r4, #100]
	lsl	r3, r3, #2
	ldr	r2, .L38+4
	and	r3, r3, #1020
	strh	r3, [r2, #4]	@ movhi
	b	.L14
.L37:
	tst	r2, #16
	bne	.L18
	b	.L20
.L39:
	.align	2
.L38:
	.word	player2
	.word	shadowOAM
	.word	__aeabi_idivmod
	.word	oldButtons
	.word	buttons
	.word	305
	.size	drawPlayer2.part.0, .-drawPlayer2.part.0
	.align	2
	.global	initPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer2, %function
initPlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	ldr	r3, .L42
	ldr	r5, .L42+4
	mov	r1, #1
	mov	r2, #0
	mov	r10, #82
	mov	r9, #8
	mov	r8, #40
	mov	r7, #4
	mov	r6, #2
	mov	lr, #35
	mov	ip, #16
	mov	r0, #10
	str	r4, [r3, #72]
	str	r5, [r3, #76]
	mov	r4, #0
	ldr	r5, .L42+8
	stm	r3, {r9, r10}
	str	r4, [r3, #88]
	str	r5, [r3, #92]
	str	r8, [r3, #84]
	str	r7, [r3, #40]
	str	r6, [r3, #44]
	str	lr, [r3, #104]
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
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	player2
	.word	1072693248
	.word	1071644672
	.size	initPlayer2, .-initPlayer2
	.align	2
	.global	initEnemy2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy2, %function
initEnemy2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L46
	mov	lr, pc
	bx	r8
	ldr	r4, .L46+4
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	ldr	r6, .L46+8
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r6, #28]
	add	r0, r0, #120
	ldr	r7, .L46+12
	sub	r0, r0, r3
	mov	lr, pc
	bx	r7
	stm	r6, {r0-r1}
	mov	lr, pc
	bx	r8
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	ldr	r5, .L46+16
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r5, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r7
	stm	r5, {r0-r1}
	mov	lr, pc
	bx	r8
	smull	r3, r4, r0, r4
	asr	r3, r0, #31
	rsb	r3, r3, r4, asr #1
	rsb	r2, r3, r3, lsl #4
	ldr	r4, .L46+20
	add	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r3, [r4, #28]
	add	r0, r0, #120
	sub	r0, r0, r3
	mov	lr, pc
	bx	r7
	mov	r8, #3
	mov	r3, #1
	mov	lr, #16
	mov	ip, #10
	mov	r2, #0
	mov	r7, #4
	stm	r4, {r0-r1}
	ldr	r1, .L46+24
	ldr	r1, [r1, #4]
	str	ip, [r6, #60]
	str	r1, [r6, #8]
	str	r1, [r5, #8]
	str	r1, [r4, #8]
	str	ip, [r5, #60]
	str	ip, [r4, #60]
	str	ip, [r6, #36]
	str	r8, [r6, #68]
	str	r8, [r5, #68]
	str	r8, [r4, #68]
	str	lr, [r6, #32]
	str	lr, [r5, #32]
	str	lr, [r4, #32]
	str	lr, [r6, #28]
	str	lr, [r5, #28]
	str	lr, [r4, #28]
	str	r2, [r6, #72]
	str	r2, [r5, #72]
	str	r2, [r4, #72]
	str	r3, [r6, #20]
	str	r3, [r5, #20]
	str	r3, [r4, #20]
	str	r3, [r6, #24]
	str	r3, [r5, #24]
	str	r3, [r4, #24]
	str	r3, [r6, #84]
	str	r3, [r5, #84]
	str	r3, [r4, #84]
	str	ip, [r5, #36]
	str	ip, [r4, #36]
	str	r2, [r6, #80]
	str	r2, [r5, #80]
	str	r2, [r4, #80]
	str	r7, [r6, #64]
	str	r7, [r5, #64]
	str	r7, [r4, #64]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	rand
	.word	70991195
	.word	enemy01
	.word	__aeabi_i2d
	.word	enemy02
	.word	enemy03
	.word	player2
	.size	initEnemy2, .-initEnemy2
	.align	2
	.global	initGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L50
	ldr	r2, .L50+4
	push	{r4, lr}
	str	r3, [r1]
	str	r3, [r2]
	bl	initPlayer2
	bl	initEnemy2
	mov	r2, #512
	ldr	r3, .L50+8
	ldr	r1, .L50+12
	ldr	r0, [r3]
	ldr	r3, .L50+16
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	vOff2
	.word	hOff2
	.word	bites
	.word	bites2
	.word	mapWidth2
	.size	initGame2, .-initGame2
	.align	2
	.global	updatePlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer2, %function
updatePlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L82
	ldrh	r5, [r2]
	ldr	r4, .L82+4
	tst	r5, #32
	str	r3, [r4, #28]
	sub	sp, sp, #12
	bne	.L53
	ldr	r3, [r4]
	cmn	r3, #4
	blt	.L53
	mov	r2, #1
	ldr	r1, [r4, #8]
	sub	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #24]
	str	r2, [r4, #28]
.L54:
	tst	r5, #128
	moveq	r3, #35
	streq	r3, [r4, #4]
	ldr	r3, .L82+8
	ldrh	r6, [r3]
	tst	r6, #1
	ldr	r7, .L82+12
	ldr	r8, .L82+16
	ldr	r9, .L82+20
	beq	.L56
	tst	r5, #1
	beq	.L77
.L56:
	tst	r6, #64
	ldr	r3, [r4, #68]
	beq	.L59
	tst	r5, #64
	beq	.L79
.L59:
	cmp	r3, #1
	beq	.L60
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L80
.L62:
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
.L53:
	ands	r3, r5, #16
	bne	.L54
	ldr	r1, .L82+24
	ldr	r2, [r4]
	ldr	r1, [r1]
	cmp	r2, r1
	bge	.L54
	mov	r0, #1
	ldr	r1, [r4, #8]
	add	r2, r1, r2
	str	r3, [r4, #24]
	str	r2, [r4]
	str	r0, [r4, #28]
	b	.L54
.L79:
	cmp	r3, #0
	bne	.L59
	mov	r3, #1
	mov	r0, #0
	ldr	r1, .L82+28
	str	r3, [r4, #68]
	ldr	r3, [r4, #4]
	str	r0, [r4, #88]
	str	r1, [r4, #92]
	str	r3, [r4, #96]
.L60:
	bl	jump2.part.0
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L62
.L80:
	ldr	r3, .L82+32
	mov	lr, pc
	bx	r3
	b	.L62
.L77:
	ldr	r3, [r7, #84]
	ldr	r1, [r8, #84]
	ldr	r2, [r9, #84]
	orr	r3, r3, r1
	orrs	r3, r3, r2
	beq	.L56
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L56
	ldr	r3, .L82+36
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	ldr	fp, .L82+40
	mov	r2, r0
	mov	r3, r1
	stm	sp, {r0-r1}
	ldmia	r7, {r0-r1}
	mov	lr, pc
	bx	fp
	ldr	r10, .L82+44
	mov	r2, #0
	ldr	r3, .L82+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L57
	ldmia	sp, {r2-r3}
	ldmia	r8, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, .L82+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L81
.L57:
	mov	r3, #1
	str	r3, [r4, #64]
	b	.L56
.L81:
	ldmia	sp, {r2-r3}
	ldmia	r9, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, .L82+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L56
	b	.L57
.L83:
	.align	2
.L82:
	.word	buttons
	.word	player2
	.word	oldButtons
	.word	enemy01
	.word	enemy02
	.word	enemy03
	.word	mapWidth2
	.word	-1071906816
	.word	goToLose
	.word	__aeabi_i2d
	.word	__aeabi_dsub
	.word	__aeabi_dcmple
	.word	1077477376
	.size	updatePlayer2, .-updatePlayer2
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.align	2
	.global	updateEnemy2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy2, %function
updateEnemy2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L125
	ldr	r3, [r5, #84]
	cmp	r3, #1
	sub	sp, sp, #28
	beq	.L119
.L86:
	ldr	r5, .L125+4
	ldr	r3, [r5, #84]
	cmp	r3, #1
	beq	.L120
.L94:
	ldr	r5, .L125+8
	ldr	r3, [r5, #84]
	cmp	r3, #1
	beq	.L121
.L84:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L119:
	ldr	r4, .L125+12
	ldr	r7, [r4]
	ldr	r6, .L125+16
	mov	r0, r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #64]
	cmp	r3, #1
	mov	r10, r0
	mov	fp, r1
	str	r3, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L122
.L87:
	mov	r0, r10
	mov	r1, fp
	mov	r2, r8
	mov	r3, r9
	ldr	r10, .L125+20
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L89
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r10, .L125+24
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L89
	mov	r0, r8
	mov	r1, r9
	ldr	r8, .L125+28
	mov	r2, #0
	mov	r3, #1073741824
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L89:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L125+32
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, .L125+36
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L86
	mov	r1, #8
	ldr	r7, .L125+40
	ldr	r3, [r7]
	ldr	r2, .L125+44
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L125+48
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
	b	.L86
.L121:
	ldr	r4, .L125+12
	ldr	r7, [r4]
	ldr	r6, .L125+16
	mov	r0, r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #64]
	cmp	r3, #1
	mov	r10, r0
	mov	fp, r1
	str	r3, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L123
.L103:
	mov	r0, r10
	mov	r1, fp
	mov	r2, r8
	mov	r3, r9
	ldr	r10, .L125+20
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L105
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r10, .L125+24
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L105
	mov	r0, r8
	mov	r1, r9
	ldr	r8, .L125+28
	mov	r2, #0
	ldr	r3, .L125+52
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L105:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L125+32
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, .L125+36
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L84
	mov	r1, #8
	ldr	r7, .L125+40
	ldr	r3, [r7]
	ldr	r2, .L125+44
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L125+48
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
	b	.L84
.L120:
	ldr	r4, .L125+12
	ldr	r7, [r4]
	ldr	r6, .L125+16
	mov	r0, r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #64]
	cmp	r3, #1
	mov	r10, r0
	mov	fp, r1
	str	r3, [sp, #20]
	ldmia	r5, {r8-r9}
	beq	.L124
.L95:
	mov	r0, r10
	mov	r1, fp
	mov	r2, r8
	mov	r3, r9
	ldr	r10, .L125+20
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L97
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	ldr	r10, .L125+24
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L97
	mov	r0, r8
	mov	r1, r9
	ldr	r8, .L125+28
	mov	r2, #0
	ldr	r3, .L125+56
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r9, r1
	stm	r5, {r8-r9}
.L97:
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #32]
	ldr	ip, [r5, #28]
	mov	r1, r9
	stmib	sp, {r2, ip}
	str	r3, [sp, #12]
	mov	r0, r8
	ldr	r3, .L125+32
	mov	lr, pc
	bx	r3
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, .L125+36
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L94
	mov	r1, #8
	ldr	r7, .L125+40
	ldr	r3, [r7]
	ldr	r2, .L125+44
	sub	r3, r3, #1
	str	r1, [r4]
	str	r3, [r7]
	mov	lr, pc
	bx	r2
	ldr	r3, .L125+48
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
	b	.L94
.L122:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L125+28
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L125+60
	ldr	ip, .L125+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L87
	ldr	r3, .L125+68
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L125+72
	ldr	r3, .L125+76
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
	b	.L87
.L124:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L125+28
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L125+60
	ldr	ip, .L125+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L95
	ldr	r3, .L125+68
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L125+72
	ldr	r3, .L125+76
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
	b	.L95
.L123:
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L125+28
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L125+60
	ldr	ip, .L125+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L103
	ldr	r3, .L125+68
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L125+72
	ldr	r3, .L125+76
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
	b	.L103
.L126:
	.align	2
.L125:
	.word	enemy01
	.word	enemy02
	.word	enemy03
	.word	player2
	.word	__aeabi_i2d
	.word	__aeabi_dcmplt
	.word	__aeabi_dcmpgt
	.word	__aeabi_dsub
	.word	__aeabi_d2iz
	.word	collision
	.word	bites
	.word	rand
	.word	70991195
	.word	1073217536
	.word	1072693248
	.word	1077477376
	.word	__aeabi_dcmple
	.word	dedeffect_length
	.word	dedeffect_data
	.word	playSoundB
	.size	updateEnemy2, .-updateEnemy2
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer2
	bl	updateEnemy2
	ldr	r3, .L133
	ldr	r2, .L133+4
	ldr	r3, [r3]
	ldr	r2, [r2]
	add	r1, r3, #120
	cmp	r1, r2
	ldr	r1, .L133+8
	ldrge	r3, [r1]
	strlt	r3, [r1]
	cmp	r3, #0
	movlt	r0, #0
	movlt	r3, r0
	strlt	r0, [r1]
	sub	r0, r2, #239
	cmp	r0, r3
	suble	r2, r2, #240
	strle	r2, [r1]
	pop	{r4, lr}
	bx	lr
.L134:
	.align	2
.L133:
	.word	player2
	.word	mapWidth2
	.word	hOff2
	.size	updateGame2, .-updateGame2
	.align	2
	.global	jump2
	.syntax unified
	.arm
	.fpu softvfp
	.type	jump2, %function
jump2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L137
	ldr	r3, [r3, #68]
	cmp	r3, #1
	bxne	lr
	b	jump2.part.0
.L138:
	.align	2
.L137:
	.word	player2
	.size	jump2, .-jump2
	.align	2
	.global	drawEnemy2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy2, %function
drawEnemy2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L163
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L141
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	beq	.L159
.L142:
	add	r1, r1, #32
	ldr	r4, .L163+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #12]	@ movhi
.L143:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldr	r3, .L163+8
	ldmia	r5, {r0-r1}
	strh	r2, [r4, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r5, .L163+12
	lsl	r0, r0, #23
	ldr	r3, [r5, #84]
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	cmp	r3, #0
	strh	r0, [r4, #10]	@ movhi
	bne	.L160
.L146:
	ldrh	r3, [r4, #16]
	orr	r3, r3, #512
	strh	r3, [r4, #16]	@ movhi
.L151:
	ldr	r5, .L163+16
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L152
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L153
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	bne	.L154
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L163+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
.L154:
	add	r1, r1, #32
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #28]	@ movhi
	b	.L155
.L140:
	ldr	r4, .L163+4
	ldrh	r3, [r4, #8]
	ldr	r5, .L163+12
	orr	r3, r3, #512
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L146
.L160:
	ldr	r3, [r5, #80]
	cmp	r3, #0
	bne	.L147
	ldr	r3, [r5, #60]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #60]
	ldr	r1, [r5, #48]
	bne	.L148
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L163+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
.L148:
	add	r1, r1, #32
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #20]	@ movhi
	b	.L149
.L152:
	ldrh	r3, [r4, #24]
	orr	r3, r3, #512
	strh	r3, [r4, #24]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L153:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	beq	.L161
.L156:
	mov	r3, #0
	add	r1, r1, #72
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #28]	@ movhi
	str	r3, [r5, #84]
.L155:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldmia	r5, {r0-r1}
	strh	r2, [r4, #24]	@ movhi
	ldr	r3, .L163+8
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	strh	r0, [r4, #26]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L147:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	beq	.L162
.L150:
	mov	r3, #0
	add	r1, r1, #72
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #20]	@ movhi
	str	r3, [r5, #84]
.L149:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	ldr	r3, .L163+8
	strh	r2, [r4, #16]	@ movhi
	ldmia	r5, {r0-r1}
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #36864
	strh	r0, [r4, #18]	@ movhi
	b	.L151
.L141:
	ldr	r3, [r5, #36]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #36]
	ldr	r1, [r5, #52]
	bne	.L144
	mov	ip, #10
	add	r0, r1, #1
	ldr	r2, .L163+20
	ldr	r1, [r5, #64]
	str	r3, [r5, #84]
	str	ip, [r5, #36]
	mov	lr, pc
	bx	r2
	str	r1, [r5, #52]
.L144:
	add	r1, r1, #72
	ldr	r4, .L163+4
	lsl	r1, r1, #2
	and	r1, r1, #1020
	strh	r1, [r4, #12]	@ movhi
	b	.L143
.L159:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L163+20
	ldr	r1, [r5, #68]
	str	r2, [r5, #60]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #48]
	b	.L142
.L162:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L163+20
	ldr	r1, [r5, #64]
	str	r2, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #52]
	b	.L150
.L161:
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L163+20
	ldr	r1, [r5, #64]
	str	r2, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #52]
	b	.L156
.L164:
	.align	2
.L163:
	.word	enemy01
	.word	shadowOAM
	.word	__aeabi_d2iz
	.word	enemy02
	.word	enemy03
	.word	__aeabi_idivmod
	.size	drawEnemy2, .-drawEnemy2
	.align	2
	.global	drawPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer2, %function
drawPlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L167
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawPlayer2.part.0
.L166:
	ldr	r2, .L167+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L168:
	.align	2
.L167:
	.word	player2
	.word	shadowOAM
	.size	drawPlayer2, .-drawPlayer2
	.align	2
	.global	drawBites2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBites2, %function
drawBites2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L181
	ldrh	r1, [r3, #32]
	ldr	r2, .L181+4
	orr	r1, r1, #512
	push	{r4, lr}
	ldrh	ip, [r3, #56]
	ldrh	r4, [r3, #40]
	ldrh	lr, [r3, #48]
	ldrh	r0, [r3, #64]
	ldr	r2, [r2]
	strh	r1, [r3, #32]	@ movhi
	ldrh	r1, [r3, #72]
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	cmp	r2, #1
	strh	r4, [r3, #40]	@ movhi
	strh	lr, [r3, #48]	@ movhi
	strh	ip, [r3, #56]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	beq	.L178
	cmp	r2, #2
	bne	.L179
	mov	lr, #32768
	mov	ip, #184
	ldr	r2, .L181+8
	ldr	r2, [r2]
	add	r2, r2, #50
	ldrh	r0, [r3, #80]
	ldrh	r1, [r3, #96]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r2, [r3, #90]	@ movhi
	strh	r0, [r3, #80]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	strh	lr, [r3, #88]	@ movhi
	strh	ip, [r3, #92]	@ movhi
.L169:
	pop	{r4, lr}
	bx	lr
.L179:
	cmp	r2, #3
	bne	.L180
	mov	lr, #32768
	mov	ip, #185
	ldr	r2, .L181+8
	ldr	r2, [r2]
	add	r2, r2, #50
	ldrh	r0, [r3, #80]
	ldrh	r1, [r3, #88]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	lr, [r3, #96]	@ movhi
	strh	r2, [r3, #98]	@ movhi
	strh	r0, [r3, #80]	@ movhi
	strh	r1, [r3, #88]	@ movhi
	strh	ip, [r3, #100]	@ movhi
	pop	{r4, lr}
	bx	lr
.L180:
	cmp	r2, #0
	bne	.L169
	ldrh	ip, [r3, #80]
	ldrh	r0, [r3, #88]
	ldrh	r1, [r3, #96]
	ldr	lr, .L181+12
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	str	r2, [lr, #56]
	strh	ip, [r3, #80]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	pop	{r4, lr}
	bx	lr
.L178:
	mov	lr, #32768
	mov	ip, #183
	ldr	r2, .L181+8
	ldr	r2, [r2]
	add	r2, r2, #50
	ldrh	r0, [r3, #88]
	ldrh	r1, [r3, #96]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	lr, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	strh	ip, [r3, #84]	@ movhi
	pop	{r4, lr}
	bx	lr
.L182:
	.align	2
.L181:
	.word	shadowOAM
	.word	bites
	.word	hOff2
	.word	player2
	.size	drawBites2, .-drawBites2
	.align	2
	.global	drawGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame2, %function
drawGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L197
	ldrh	r2, [r3]
	ldr	r3, .L197+4
	tst	r2, #128
	ldr	r2, [r3, #56]
	bne	.L184
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L184
	cmp	r2, #0
	beq	.L185
	ldr	r3, .L197+8
	ldr	r2, .L197+12
	strh	r2, [r3, #4]	@ movhi
	b	.L186
.L184:
	cmp	r2, #0
	beq	.L185
	bl	drawPlayer2.part.0
.L186:
	bl	drawEnemy2
	bl	drawBites2
	mov	r2, #67108864
	ldr	r3, .L197+16
	ldr	r7, .L197+20
	ldrh	r3, [r3]
	ldrh	r7, [r7]
	strh	r3, [r2, #16]	@ movhi
	strh	r7, [r2, #18]	@ movhi
	ldr	r2, .L197+24
	ldr	r1, .L197+28
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
	ldr	r5, .L197+32
	strh	r4, [ip, #2]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	sub	r1, r1, #960
	mov	lr, pc
	bx	r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L185:
	ldr	r2, .L197+8
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	b	.L186
.L198:
	.align	2
.L197:
	.word	buttons
	.word	player2
	.word	shadowOAM
	.word	305
	.word	hOff2
	.word	vOff2
	.word	511
	.word	shadowOAM+960
	.word	DMANow
	.size	drawGame2, .-drawGame2
	.comm	enemy03,88,8
	.comm	enemy02,88,8
	.comm	enemy01,88,8
	.comm	shadowOAM,1024,4
	.comm	enemynum2,4,4
	.comm	mapWidth2,4,4
	.comm	vOff2,4,4
	.comm	bites2,4,4
	.comm	hOff2,4,4
	.comm	player2,112,8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
