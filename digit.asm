section .data
	dig db 0,10

section .text
	global _start

_start:
	mov rax,7
	call _printdigit

	mov rax,60
	mov rdi,0
	syscall

_printdigit:

	add rax,48
	mov [dig],al
	mov rax,1
	mov rdi,1
	mov rsi,dig
	mov rdx,2
	syscall
	ret

