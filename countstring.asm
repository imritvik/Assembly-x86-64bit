;program that counts passed string

section .data
	text1 db "Hello, world!",10,0 
	text2 db "this is ritvik!",10,0

section .text
	global _start

_start:
	mov rax,text1 ;move rax to text1
	call _print ;call print with text1
	mov rax,text2
	call _print
	
	mov rax,60
	mov rdi,0
	syscall

_print:
	push rax ;push rax into the stack
	mov rbx,0
_printLoop:
	inc rax ;increment rax
	inc rbx ;increment rbx which is counter
	mov cl,[rax] ;move rax’s value into the lowest bit of rcx
	cmp cl,0 ;compare with 0
	jne _printLoop ;loop until we hit 0

	mov rax,1 
	mov rdi,1 ;just printing
	pop rsi  ;pop into source index
	mov rdx,rbx
	syscall
	ret
