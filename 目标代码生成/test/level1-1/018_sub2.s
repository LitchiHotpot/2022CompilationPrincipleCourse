	.arch armv8-a
	.arch_extension crc
	.arm
.data

.section .rodata

.global a
.size a, 4
a:
	.word 10
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L4:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_a
	ldr r6, [r5]
	sub r5, r4, r6
	mov r0, r5
	add sp, sp, #4
	bx lr
.L6:
.L7:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L8:
	b .L7
.L10:
.L11:
.L12:
.L13:
.L14:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L15:
	b .L14
addr_a:
	.word a
