STDOUT equ 1
SYS_WRITE equ 1
EXIT equ 60

section .data
	text db "Hello, world!",10

section .text
	global _start
_start:

	mov rax,STDOUT
	mov rdi,SYS_WRITE
	mov rsi,text
	mov rdx,14
	syscall

	mov rax,EXIT
	mov rdi,0
	syscall 

