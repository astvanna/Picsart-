extern printf
extern scanf

section .data
	input_fmt db "Enter your base, then the exponent: ", 0
	scan_fmt db "%d %d", 0
	power_printf_fmt db "%d to the power of %d is %d", 10, 0

section .bss
	base resd 1
	exponent resd 1

section .text
	global main

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	lea rdi, [input_fmt]
	xor eax, eax
	call printf

	lea rdi, [scan_fmt]
	lea rsi, [base]
	lea rdx, [exponent]
	xor eax, eax
	call scanf

	mov eax, 1
	mov ecx, [exponent]
	mov ebx, [base]

	cmp ecx, 0
	je RESULT

L1:
	imul eax, ebx
	loop L1

RESULT:
	lea rdi, [power_printf_fmt]
	mov esi, [base]
	mov edx, [exponent]
	mov ecx, eax
	xor eax, eax
	call printf

	mov rsp, rbp
	pop rbp
	ret
