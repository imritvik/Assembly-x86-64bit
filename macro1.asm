section .data
	dig db 0,10

section .text
	global _start

%macro exit 0
	mov rax,60
	mov rdi,0
	syscall
%endmacro

%macro printdig 1
	mov rax,%1
	call _printDiGRAX
%endmacro

_start:
	printdig 2
	printdig 4

	exit

_printDiGRAX:
	add rax,48
	mov [dig],al
	mov rax,1
	mov rdi,1
	mov rsi,dig
	mov rdx,2
	syscall
	ret


