	.arch armv8-a
	.arch_extension crc
	.arm
.data

.section .rodata

.global a
.size a, 4
a:
	.word 10
.global b
.size b, 4
b:
	.word 5
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L1:
	ldr r4, addr_b
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
addr_a:
	.word a
addr_b:
	.word b
