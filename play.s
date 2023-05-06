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
	.file	"play.c"
	.text
	.align	2
	.global	init
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L3
	ldr	r2, .L3+4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L4:
	.align	2
.L3:
	.word	paused
	.word	currentSong
	.size	init, .-init
	.comm	titlePosition,4,4
	.comm	screenTitle,4,4
	.comm	currentSong,4,4
	.comm	progress,4,4
	.comm	frame,4,4
	.comm	second,4,4
	.comm	minute,4,4
	.comm	shuffle,4,4
	.comm	paused,4,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	song,12,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
