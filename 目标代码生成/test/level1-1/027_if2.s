	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 0
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L3:
	ldr r4, =10
	ldr r5, addr_a
	str r4, [r5]
	ldr r4, addr_a
	ldr r5, [r4]
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	bgt .L4
	b .L13
.L4:
	mov r0, #1
	add sp, sp, #0
	bx lr
	b .L6
.L5:
	mov r0, #0
	add sp, sp, #0
	bx lr
	b .L6
.L6:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L7:
.L8:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L9:
	b .L8
.L11:
.L12:
.L13:
	b .L5
addr_a:
	.word a
