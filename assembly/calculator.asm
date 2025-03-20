extern printf
extern scanf
extern exit

section .data
	input_num1 db "Enter the first integer: ", 0
	input_num2 db "Enter the second integer: ", 0
	input_operation db "Select an operation 1. Addition, 2. Subtraction, 3. Multiplication, 4. Division: ", 0

	result_msg db "The result is: %d", 10, 0
	error_div_zero db "Error: Division by zero is not allowed", 10, 0

	fmt_int db "%d", 0

section .bss
	num1 resd 1
	num2 resd 1
	operation resd 1
	result resd 1

section .text
	global main

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	lea rdi, [input_num1]
	call printf

	lea rdi, [fmt_int]
	lea rsi, [num1]
	call scanf

	lea rdi, [input_num2]
	call printf

	lea rdi, [fmt_int]
	lea rsi, [num2]
	call scanf

	lea rdi, [input_operation]
	call printf

	lea rdi, [fmt_int]
	lea rsi, [operation]
	call scanf

	mov eax, [operation]
	cmp eax, 1
	je addition
	cmp eax, 2
	je subtraction
	cmp eax, 3
	je multiplication
	cmp eax, 4
	je division
	jmp end_program

addition:
	mov eax, [num1]
	add eax, [num2]
	mov [result], eax
	jmp print_result

subtraction:
	mov eax, [num1]
	sub eax, [num2]
	mov [result], eax
	jmp print_result

multiplication:
	mov eax, [num1]
	imul eax, [num2]
	mov [result], eax
	jmp print_result

division:
	mov eax, [num2]
	cmp eax, 0
	je div_zero_error
	mov eax, [num1]
	cdq
	idiv dword [num2]
	mov [result], eax
	jmp print_result

div_zero_error:
	lea rdi, [error_div_zero]
	call printf
	jmp end_program

print_result:
	lea rdi, [result_msg]
	mov esi, [result]
	call printf

end_program:
	mov rsp, rbp
	pop rbp
	ret
