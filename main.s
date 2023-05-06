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
	.file	"main.c"
	.text
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r3, .L16
	ldrh	r2, [r3, #2]
	tst	r2, #1
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	beq	.L3
	ldr	r3, .L16+4
	ldr	r2, [r3, #8]
	cmp	r2, #1
	beq	.L12
.L5:
	ldr	r3, .L16+8
	ldr	r2, [r3, #8]
	cmp	r2, #1
	beq	.L13
.L3:
	mov	r1, #1
	ldr	r3, .L16
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L13:
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	blt	.L3
	ldr	r2, [r3, #12]
	cmp	r2, #1
	beq	.L14
	mov	r2, #0
	ldr	r1, .L16+12
	ldr	r0, .L16+16
	ldr	r1, [r1]
	strh	r2, [r0, #6]	@ movhi
	str	r2, [r3, #8]
	str	r2, [r1, #32]
	b	.L3
.L12:
	add	r0, r3, #16
	ldm	r0, {r0, r2}
	add	r2, r2, #1
	cmp	r2, r0
	str	r2, [r3, #20]
	blt	.L5
	ldr	r2, [r3, #12]
	cmp	r2, #1
	beq	.L15
	ldr	r2, .L16+12
	ldr	r0, .L16+16
	ldr	r2, [r2]
	strh	r1, [r0, #2]	@ movhi
	str	r1, [r3, #8]
	str	r1, [r2, #20]
	b	.L5
.L14:
	ldm	r3, {r0, r1}
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
	b	.L3
.L15:
	ldm	r3, {r0, r1}
	ldr	r3, .L16+24
	mov	lr, pc
	bx	r3
	b	.L5
.L17:
	.align	2
.L16:
	.word	67109376
	.word	soundA
	.word	soundB
	.word	dma
	.word	67109120
	.word	playSoundB
	.word	playSoundA
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	saveToCartridgeRAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	saveToCartridgeRAM, %function
saveToCartridgeRAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	add	ip, r3, #40
	rsb	r0, r3, #234881024
.L19:
	add	r2, r0, r3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, ip
	strb	r1, [r2]
	bne	.L19
	bx	lr
.L23:
	.align	2
.L22:
	.word	saveData-1
	.size	saveToCartridgeRAM, .-saveToCartridgeRAM
	.align	2
	.global	loadFromCartridgeRAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadFromCartridgeRAM, %function
loadFromCartridgeRAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L28
	add	r0, r3, #40
	rsb	r1, r3, #234881024
.L25:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L25
	bx	lr
.L29:
	.align	2
.L28:
	.word	saveData-1
	.size	loadFromCartridgeRAM, .-loadFromCartridgeRAM
	.global	__aeabi_d2iz
	.align	2
	.global	saveGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	saveGame, %function
saveGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L42
	ldr	r3, [r4, #36]
	cmp	r3, #1
	beq	.L40
	cmp	r3, #2
	bne	.L41
	ldr	r3, .L42+4
	ldr	r1, .L42+8
	ldm	r3, {r0, r2}
	ldr	r3, [r3, #24]
	ldr	r5, .L42+12
	stmib	r4, {r2, r3}
	str	r0, [r4]
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	r2, .L42+16
	str	r3, [r4, #24]
	ldmia	r2, {r0-r1}
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	r2, .L42+20
	str	r3, [r4, #28]
	ldmia	r2, {r0-r1}
	mov	lr, pc
	bx	r5
	ldr	r2, .L42+24
.L38:
	ldr	r3, .L42+28
.L39:
	ldr	r2, [r2]
	ldr	r3, [r3]
	str	r0, [r4, #32]
	str	r2, [r4, #12]
	str	r3, [r4, #16]
.L32:
	ldr	r3, .L42+32
	rsb	r0, r4, #234881024
	add	r0, r0, #1
	add	ip, r3, #40
.L35:
	add	r2, r0, r3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, ip
	strb	r1, [r2]
	bne	.L35
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	cmp	r3, #3
	bne	.L32
	ldr	r3, .L42+36
	ldr	r1, .L42+40
	ldm	r3, {r0, r2}
	ldr	r3, [r3, #24]
	ldr	r5, .L42+12
	stmib	r4, {r2, r3}
	str	r0, [r4]
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	r2, .L42+44
	str	r3, [r4, #24]
	ldmia	r2, {r0-r1}
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	r2, .L42+48
	str	r3, [r4, #28]
	ldmia	r2, {r0-r1}
	mov	lr, pc
	bx	r5
	ldr	r2, .L42+52
	ldr	r3, .L42+56
	b	.L39
.L40:
	ldr	r3, .L42+60
	ldr	r1, .L42+64
	ldm	r3, {r0, r2}
	ldr	r3, [r3, #24]
	ldr	r5, .L42+12
	stmib	r4, {r2, r3}
	str	r0, [r4]
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	r2, .L42+68
	str	r3, [r4, #24]
	ldmia	r2, {r0-r1}
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	r2, .L42+72
	str	r3, [r4, #28]
	ldmia	r2, {r0-r1}
	mov	lr, pc
	bx	r5
	ldr	r2, .L42+76
	b	.L38
.L43:
	.align	2
.L42:
	.word	saveData
	.word	player3
	.word	enemyy
	.word	__aeabi_d2iz
	.word	enemyyy
	.word	enemyyyy
	.word	hOff3
	.word	vOff
	.word	saveData-1
	.word	player2
	.word	enemy01
	.word	enemy02
	.word	enemy03
	.word	hOff2
	.word	vOff2
	.word	player
	.word	enemy
	.word	enemy2
	.word	enemy3
	.word	hOff
	.size	saveGame, .-saveGame
	.global	__aeabi_i2d
	.align	2
	.global	loadGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadGame, %function
loadGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L58
	push	{r4, r5, r6, r7, r8, lr}
	add	r0, r3, #40
	add	r4, r3, #1
	rsb	r1, r3, #234881024
.L45:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L45
	ldr	r3, [r4, #20]
	cmn	r3, #1
	ldr	r3, [r4, #36]
	bne	.L46
	cmp	r3, #2
	mov	r2, #0
	movne	ip, #82
	moveq	ip, #112
	mov	r0, #8
	mov	r1, #1
	str	ip, [r4, #4]
	str	r2, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #8]
	str	r0, [r4]
	str	r1, [r4, #20]
.L46:
	cmp	r3, #1
	beq	.L56
	cmp	r3, #2
	bne	.L57
	ldm	r4, {r2, r3}
	ldr	r5, .L58+4
	ldr	r6, .L58+8
	str	r2, [r5]
	str	r3, [r5, #4]
	ldr	r0, [r4, #24]
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+12
	stm	r3, {r0-r1}
	ldr	r0, [r4, #28]
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+16
	stm	r3, {r0-r1}
	ldr	r0, [r4, #32]
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r7, r1
	ldr	r3, [r4, #8]
	ldr	ip, .L58+20
	ldr	r1, .L58+24
.L55:
	str	r3, [r5, #24]
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	ldr	r3, .L58+28
	stm	ip, {r6-r7}
	str	r0, [r1]
	str	r2, [r3]
.L44:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L57:
	cmp	r3, #3
	bne	.L44
	ldm	r4, {r2, r3}
	ldr	r5, .L58+32
	ldr	r6, .L58+8
	str	r2, [r5]
	ldr	r0, [r4, #24]
	str	r3, [r5, #4]
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+36
	stm	r3, {r0-r1}
	ldr	r0, [r4, #28]
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+40
	stm	r3, {r0-r1}
	ldr	r0, [r4, #32]
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L58+44
	add	r0, r4, #12
	stm	r3, {r6-r7}
	ldr	ip, [r4, #8]
	ldm	r0, {r0, r2}
	ldr	r1, .L58+48
	ldr	r3, .L58+52
	str	ip, [r5, #24]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L56:
	ldm	r4, {r2, r3}
	ldr	r5, .L58+56
	ldr	r6, .L58+8
	str	r2, [r5]
	str	r3, [r5, #4]
	ldr	r0, [r4, #24]
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+60
	stm	r3, {r0-r1}
	ldr	r0, [r4, #28]
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+64
	stm	r3, {r0-r1}
	ldr	r0, [r4, #32]
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #8]
	mov	r7, r1
	mov	r6, r0
	ldr	ip, .L58+68
	ldr	r1, .L58+72
	b	.L55
.L59:
	.align	2
.L58:
	.word	saveData-1
	.word	player3
	.word	__aeabi_i2d
	.word	enemyy
	.word	enemyyy
	.word	enemyyyy
	.word	hOff3
	.word	vOff
	.word	player2
	.word	enemy01
	.word	enemy02
	.word	enemy03
	.word	hOff2
	.word	vOff2
	.word	player
	.word	enemy
	.word	enemy2
	.word	enemy3
	.word	hOff
	.size	loadGame, .-loadGame
	.align	2
	.global	goToInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruct, %function
goToInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L62
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L62+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L62+8
	mov	r2, #100663296
	ldr	r1, .L62+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L62+16
	ldr	r1, .L62+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L62+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L62+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L62+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
	.word	DMANow
	.word	instructionsPal
	.word	8608
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToInstruct, .-goToInstruct
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L64
	ldr	r3, .L71+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
.L64:
	pop	{r4, lr}
	bx	lr
.L70:
	pop	{r4, lr}
	b	goToInstruct
.L72:
	.align	2
.L71:
	.word	hideSprites
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L75
	mov	lr, pc
	bx	r3
	ldr	r4, .L75+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L75+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L75+12
	mov	r2, #100663296
	ldr	r1, .L75+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+20
	ldr	r1, .L75+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L75+28
	ldrh	r2, [r3]
	ldr	r3, .L75+32
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L75+36
	ldr	r1, .L75+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L75+44
	ldr	r1, .L75+48
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L75+52
	mov	lr, pc
	bx	r4
	mov	ip, #4352
	mov	r0, #1
	mov	r2, #2
	ldr	r1, .L75+56
	ldr	r3, .L75+60
	strh	ip, [r5]	@ movhi
	str	r0, [r1, #36]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	waitForVBlank
	.word	DMANow
	.word	level1possiblyPal
	.word	6496
	.word	level1possiblyTiles
	.word	100726784
	.word	level1possiblyMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	shadowOAM
	.word	saveData
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	instruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L84
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L77
	ldr	r3, .L84+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
.L77:
	pop	{r4, lr}
	bx	lr
.L83:
	ldr	r2, .L84+12
	ldr	r3, .L84+16
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L85:
	.align	2
.L84:
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.word	rseed
	.word	srand
	.word	initGame
	.size	instruct, .-instruct
	.align	2
	.global	goToGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame3, %function
goToGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L88+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #23552
	mov	r3, #9984
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L88+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L88+16
	ldr	r1, .L88+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+24
	ldrh	r2, [r3]
	ldr	r3, .L88+28
	strh	r2, [r5, #18]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L88+32
	ldr	r1, .L88+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L88+40
	ldr	r1, .L88+44
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L88+48
	mov	lr, pc
	bx	r4
	mov	ip, #4352
	mov	r0, #2
	mov	r2, #4
	ldr	r1, .L88+52
	ldr	r3, .L88+56
	strh	ip, [r5]	@ movhi
	str	r0, [r1, #36]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	waitForVBlank
	.word	DMANow
	.word	level3possiblyPal
	.word	level3possiblyTiles
	.word	100720640
	.word	level3possiblyMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	shadowOAM
	.word	saveData
	.word	state
	.size	goToGame3, .-goToGame3
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r3, .L92
	ldr	r4, .L92+4
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L92+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L92+12
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L92+16
	ldr	r2, .L92+20
	ldr	r1, .L92+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L92+28
	ldr	r1, .L92+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+36
	ldrh	r2, [r3]
	ldr	r3, .L92+40
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L92+44
	ldr	r1, .L92+48
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L92+52
	ldr	r1, .L92+56
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L92+60
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #4352
	ldr	r1, .L92+64
	ldr	r2, .L92+68
	strh	r0, [r5]	@ movhi
	str	r3, [r1, #36]
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	waitForVBlank
	.word	DMANow
	.word	level3mapPal
	.word	23556
	.word	13488
	.word	100679680
	.word	level3mapTiles
	.word	100720640
	.word	level3mapMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	shadowOAM
	.word	saveData
	.word	state
	.size	goToGame2, .-goToGame2
	.global	__aeabi_dcmplt
	.global	__aeabi_dadd
	.global	__aeabi_dmul
	.global	__aeabi_d2uiz
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #67108864
	mov	r3, #768
	strh	r3, [r4]	@ movhi
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	mov	r3, #7936
	ldr	r2, .L104+4
	ldr	r10, .L104+8
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L104+12
	mov	lr, pc
	bx	r10
	mov	r0, #3
	ldr	r2, .L104+16
	ldr	r1, .L104+20
	mov	r3, #256
	mov	lr, pc
	bx	r10
	ldr	r3, .L104+24
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r3, .L104+28
	ldr	r2, .L104+32
	ldr	r1, .L104+36
	mov	lr, pc
	bx	r10
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L104+40
	ldr	r1, .L104+44
	mov	lr, pc
	bx	r10
	ldr	r6, .L104+48
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L104+52
	ldr	r1, .L104+56
	mov	lr, pc
	bx	r10
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L104+60
	ldr	r1, .L104+64
	mov	lr, pc
	bx	r10
	ldmia	r6, {r4-r5}
	mov	r2, #0
	mov	r0, r4
	mov	r1, r5
	ldr	r3, .L104+68
	ldr	ip, .L104+72
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L95
	ldr	r8, .L104+76
	ldr	r7, .L104+80
	ldr	r9, .L104+84
.L98:
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L104+88
	mov	lr, pc
	bx	r8
	mov	r4, r0
	mov	r5, r1
	ldr	ip, .L104+92
	mov	r2, #0
	ldr	r3, .L104+96
	stm	r6, {r4-r5}
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r7
	mov	fp, #67108864
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r2, r4
	mov	r3, r5
	strh	r0, [fp, #20]	@ movhi
	mov	r1, r5
	mov	r0, r4
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	r2, #320
	ldr	r3, .L104+100
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r3, [fp, #82]	@ movhi
	strh	r0, [fp, #16]	@ movhi
	strh	r2, [fp, #80]	@ movhi
	ldr	r3, .L104+104
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L97
	ldr	r3, .L104+108
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r3, #0
	ldreq	r4, .L104+112
	stmeq	r6, {r3-r4}
.L97:
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r9
	mov	r0, #3
	mov	lr, pc
	bx	r10
	ldmia	r6, {r4-r5}
	mov	r2, #0
	mov	r0, r4
	mov	r1, r5
	ldr	r3, .L104+68
	ldr	ip, .L104+72
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L98
.L95:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #5
	ldr	r3, .L104+116
	stm	r6, {r0-r1}
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L105:
	.align	2
.L104:
	.word	waitForVBlank
	.word	7684
	.word	DMANow
	.word	mntPal
	.word	83886112
	.word	cloudsPal+32
	.word	pauseSounds
	.word	4688
	.word	100696064
	.word	cloudsTiles
	.word	7456
	.word	mntTiles
	.word	hoff
	.word	100722688
	.word	cloudsMap
	.word	100726784
	.word	mntMap
	.word	1081081856
	.word	__aeabi_dcmplt
	.word	__aeabi_dadd
	.word	__aeabi_d2uiz
	.word	shadowOAM
	.word	1071644672
	.word	__aeabi_dmul
	.word	1075052544
	.word	2311
	.word	oldButtons
	.word	buttons
	.word	1081085952
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L113
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L106
	ldr	r3, .L113+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L112
.L106:
	pop	{r4, lr}
	bx	lr
.L112:
	bl	goToGame
	ldr	r3, .L113+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	waitForVBlank
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.word	unpauseSounds
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L117
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L117+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L117+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7168
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L117+20
	mov	r2, #100663296
	ldr	r1, .L117+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+28
	ldr	r1, .L117+32
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L117+36
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L117+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L118:
	.align	2
.L117:
	.word	waitForVBlank
	.word	pauseSounds
	.word	hideSprites
	.word	DMANow
	.word	winnnPal
	.word	7648
	.word	winnnTiles
	.word	100720640
	.word	winnnMap
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L121+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L121+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L121+20
	mov	r2, #100663296
	ldr	r1, .L121+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+28
	ldr	r1, .L121+32
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L121+36
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L121+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L122:
	.align	2
.L121:
	.word	waitForVBlank
	.word	pauseSounds
	.word	hideSprites
	.word	DMANow
	.word	loseeePal
	.word	8800
	.word	loseeeTiles
	.word	100726784
	.word	loseeeMap
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L124
	ldr	r3, .L137+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L135
.L124:
	ldr	r5, .L137+16
	ldr	r3, [r5]
	cmp	r3, #0
	ldr	r4, .L137+20
	beq	.L125
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L125
.L126:
	ldr	r3, [r4]
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #239
	ble	.L123
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L136
.L123:
	pop	{r4, r5, r6, lr}
	bx	lr
.L125:
	bl	goToLose
	b	.L126
.L136:
	ldr	r3, .L137+24
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame3
.L135:
	bl	saveGame
	bl	goToPause
	b	.L124
.L138:
	.align	2
.L137:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	bites
	.word	player
	.word	initGame3
	.size	game, .-game
	.align	2
	.global	game3
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3, %function
game3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L153
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L140
	ldr	r3, .L153+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L151
.L140:
	ldr	r5, .L153+16
	ldr	r3, [r5]
	cmp	r3, #0
	ldr	r4, .L153+20
	beq	.L141
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L141
.L142:
	ldr	r2, .L153+24
	ldr	r3, [r4]
	ldr	r1, [r4, #16]
	ldr	r2, [r2]
	add	r3, r3, r1
	cmp	r3, r2
	blt	.L139
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L152
.L139:
	pop	{r4, r5, r6, lr}
	bx	lr
.L141:
	bl	goToLose
	b	.L142
.L152:
	ldr	r3, .L153+28
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame2
.L151:
	bl	goToPause
	b	.L140
.L154:
	.align	2
.L153:
	.word	updateGame3
	.word	drawGame3
	.word	oldButtons
	.word	buttons
	.word	bites3
	.word	player3
	.word	mapWidth3
	.word	initGame2
	.size	game3, .-game3
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L169
	mov	lr, pc
	bx	r3
	ldr	r3, .L169+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L169+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L156
	ldr	r3, .L169+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L167
.L156:
	ldr	r5, .L169+16
	ldr	r3, [r5]
	cmp	r3, #0
	ldr	r4, .L169+20
	beq	.L157
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L157
.L158:
	ldr	r3, [r4]
	cmp	r3, #239
	ble	.L155
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L168
.L155:
	pop	{r4, r5, r6, lr}
	bx	lr
.L157:
	bl	goToLose
	b	.L158
.L168:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L167:
	bl	goToPause
	b	.L156
.L170:
	.align	2
.L169:
	.word	updateGame2
	.word	drawGame2
	.word	oldButtons
	.word	buttons
	.word	bites2
	.word	player2
	.size	game2, .-game2
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #97
	str	lr, [sp, #-4]!
	mov	r0, #67108864
	mov	lr, #1
	mov	ip, #8
	ldr	r3, .L173
	ldr	r2, .L173+4
	strh	r1, [r3]	@ movhi
	ldr	r1, .L173+8
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2, #4092]
	bx	lr
.L174:
	.align	2
.L173:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	playSong
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSong, %function
playSong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L180
	ldr	r2, .L180+4
	ldr	r1, [r3]
	ldr	r2, [r2, #12]
	ldr	r0, .L180+8
	ldr	r3, .L180+12
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	ip, #49152
	mvn	r0, #59
	ldr	r3, .L180+16
	ldr	r1, .L180+20
	strh	r2, [r3, #10]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	ldr	r2, [r1]
	cmp	r2, #5
	strh	r0, [r3, #12]	@ movhi
	beq	.L179
	mov	r1, #195
	mov	r2, #196
	strh	r1, [r3, #10]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #14]	@ movhi
	bx	lr
.L179:
	ldr	r3, .L180+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L181:
	.align	2
.L180:
	.word	bgsound_length
	.word	soundA
	.word	bgsound_data
	.word	playSoundA
	.word	67109120
	.word	state
	.word	pauseSounds
	.size	playSong, .-playSong
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L184
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L184+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L184+8
	mov	r2, #100663296
	ldr	r1, .L184+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L184+16
	ldr	r1, .L184+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L184+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L184+28
	mov	lr, pc
	bx	r4
	bl	playSong
	mov	r2, #0
	ldr	r3, .L184+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L185:
	.align	2
.L184:
	.word	DMANow
	.word	titlescreenPal
	.word	5728
	.word	titlescreenTiles
	.word	100726784
	.word	titlescreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r2, #4352
	mov	r4, #67108864
	ldr	r3, .L188
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #8
	mov	r2, #97
	mov	r0, #1
	mov	r1, #0
	mov	r6, #0
	mov	r7, #0
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, .L188+4
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	ldr	r2, .L188+8
	ldr	r3, .L188+12
	ldr	r0, .L188+16
	str	r3, [r2, #4092]
	ldr	r2, .L188+20
	ldr	r3, .L188+24
	stm	r0, {r6-r7}
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	loadGame
	pop	{r4, r6, r7, lr}
	b	goToStart
.L189:
	.align	2
.L188:
	.word	setupSounds
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.word	hoff
	.word	voff
	.word	hideSprites
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	winlose.part.0, %function
winlose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L192
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L193:
	.align	2
.L192:
	.word	buttons
	.size	winlose.part.0, .-winlose.part.0
	.align	2
	.global	winlose
	.syntax unified
	.arm
	.fpu softvfp
	.type	winlose, %function
winlose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L196
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	winlose.part.0
.L197:
	.align	2
.L196:
	.word	oldButtons
	.size	winlose, .-winlose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L211
	mov	lr, pc
	bx	r3
	ldr	r4, .L211+4
	ldr	r7, .L211+8
	ldr	r6, .L211+12
	ldr	fp, .L211+16
	ldr	r10, .L211+20
	ldr	r9, .L211+24
	ldr	r5, .L211+28
	ldr	r8, .L211+32
.L209:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L199
.L201:
	.word	.L207
	.word	.L206
	.word	.L205
	.word	.L204
	.word	.L203
	.word	.L202
	.word	.L200
	.word	.L200
.L200:
	tst	r2, #8
	ldrne	r3, .L211+36
	movne	lr, pc
	bxne	r3
.L199:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L209
.L202:
	ldr	r3, .L211+40
	mov	lr, pc
	bx	r3
	b	.L199
.L203:
	ldr	r3, .L211+44
	mov	lr, pc
	bx	r3
	b	.L199
.L204:
	ldr	r3, .L211+48
	mov	lr, pc
	bx	r3
	b	.L199
.L205:
	ldr	r3, .L211+52
	mov	lr, pc
	bx	r3
	b	.L199
.L207:
	mov	lr, pc
	bx	fp
	b	.L199
.L206:
	ldr	r3, .L211+56
	mov	lr, pc
	bx	r3
	b	.L199
.L212:
	.align	2
.L211:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	waitForVBlank
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	winlose.part.0
	.word	pause
	.word	game3
	.word	game2
	.word	game
	.word	instruct
	.size	main, .-main
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	state,4,4
	.comm	currentSong,4,4
	.comm	shuffle,4,4
	.comm	seed,4,4
	.comm	rseed,4,4
	.comm	saveData,40,4
	.comm	voff,4,4
	.comm	hoff,8,8
	.comm	shadowOAM,1024,4
	.comm	song,12,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
