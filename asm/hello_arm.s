.global _start
.section .text
_start:
	mov x0, #1	//stdout
	adrp x1, msg
	add x1, x1, :lo12:msg
	mov x2, #14
	mov x8, #64      //Linux AArch64 syscall: write
	svc #0

	mov x0,#0
	mov x8, #93     //Linux AArch64 syscall: exit
	svc #0

.section .rodata
msg:
	.ascii "Hello ARM Pi\n"
