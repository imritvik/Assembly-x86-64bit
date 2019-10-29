section .data
	msg db "Hello, world",10
section .text
	global _start

_start:
	call _printhello

	mov rax,60
	mov rdi,0
	syscall

_printhello:
	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx,13
	syscall
	ret


