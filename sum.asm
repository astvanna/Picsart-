extern printf
extern scanf

section .data
	input db "Enter N: ", 0
	format db "%d", 0
	result_msg db "Sum is %d", 10, 0

section .bss
	N resd 1
	sum resd 1

section .text
	global main

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	lea rdi, [input]
	xor eax, eax
	call printf

	lea rdi, [format]
	lea rsi, [N]
	xor eax, eax
	call scanf

	mov dword[sum], 0

	mov ecx, 1
loop_START:
	cmp ecx, [N]
	jg loop_END

	add [sum], ecx
	inc ecx
	jmp loop_START

loop_END:
	mov esi, [sum]
	lea rdi, [result_msg]
	xor eax, eax
	call printf

	mov rsp, rbp
	pop rbp
	ret
