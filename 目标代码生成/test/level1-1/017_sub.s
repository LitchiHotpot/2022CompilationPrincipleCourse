	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L5:
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #8
	bx lr
.L8:
.L9:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L10:
	b .L9
.L12:
.L13:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L14:
	b .L13
.L16:
.L17:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L18:
	b .L17
