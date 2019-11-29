;program that uses macros
;for sake of simplicity i use exit
%macro exit 0 			;this syntax will only work with nasm!
	mov rax,60
	mov rdi,0
	syscall
%endmacro

section .text
	global _start

_start:
	exit
