;program that takes input from user

section .data
	text1 db "what is your name? "
	text2 db "hello, "

section .bss
	name resb 16

section .text
	global _start

_start:
	call _printtext1
	call _getname
	call _printtext2
	call _printname

	mov rax,60
	mov rdi,0
	syscall

_getname:
        mov rax,0 	;0 is id for sys_read
        mov rdi,0	;0 is standard input
        mov rsi,name
        mov rdx,16
        syscall
        ret

_printtext1:
	mov rax,1
	mov rdi,1
	mov rsi,text1
	mov rdx,19
	syscall
	ret

_printtext2:
	 mov rax,1
      	 mov rdi,1
         mov rsi,text2
         mov rdx,7
         syscall
         ret

_printname:
	mov rax,1
	mov rdi,1
	mov rsi,name
	mov rdx,16
	syscall
	ret
