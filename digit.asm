section .data
	dig db 0,10

section .text
	global _start

_start:
	mov rax,7	;this 7 is going to be printed you can change it to the number you want
	call _printdigit

	mov rax,60
	mov rdi,0
	syscall

_printdigit:

	add rax,48	;48 is ascii for 0 and 0+7 is 7
	mov [dig],al	;changing the least significant byte of rax which is 0 from *dig
	mov rax,1
	mov rdi,1
	mov rsi,dig
	mov rdx,2
	syscall
	ret

