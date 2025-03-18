extern printf
extern scanf

section .data
	scanf_fmt db "%d", 0
	max_printf_fmt db "The max element is %d", 10, 0

section .bss
	array resd 10 ;size of array

section .text
	global main
main:
	push rbp
	mov rbp, rsp

	mov rbx, 0
L1:	
	cmp rbx, 10 ;incrementing rbx until its 10
	jae L1_END

	xor rax, rax
	mov rdi, scanf_fmt
	lea rsi, [array + 4 * rbx]
	call scanf

	inc rbx 
	jmp L1

L1_END:
	mov rax, 0 
	mov eax, [array]
	mov rbx, 1

L2: 
	cmp rbx, 10
	jae L2_END

	cmp eax, [array + 4* rbx]
	jl ASSIGN
	inc rbx
	jmp L2

ASSIGN:
	mov eax, [array + 4 * rbx]
	inc rbx
	jmp L2

L2_END:
	mov rdi, max_printf_fmt
	movsx rsi, eax
	xor rax, rax
	call printf

	mov rsp, rbp
	pop rbp

	xor rax, rax
	ret

