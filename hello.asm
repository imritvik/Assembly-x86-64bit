section .data
	message db "Hello, world!",10 ;defining a string type variable 'message' and 10 is new line in ascii

section .text
	global _start ;u can think of this as calling the main funtion


_start: ;the main funtion
	mov rax,1	;move accumulator register to 1 which is standard sys_write
	mov rdi,1	;mov destination index to 1 which is file descriptor in this context it means standard output
	mov rsi,message	;move source index to message
	mov rdx,14	;mov data register to 14 which is length of "hellow, world!" with "\n"
	syscall		;calling the system calll
	
	mov rax,60	;60 is index for exit
	mov rdi,0	;0 means no error
	syscall

