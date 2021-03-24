BITS 64

global _main

section .rodata

	pathname db 'NSA.txt', 0

section .text

_main:
	mov rax, 85
	mov rdi, pathname
	mov rsi, 777
	syscall 
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
