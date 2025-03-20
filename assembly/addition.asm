extern printf
extern scanf

section .rodata
	format_scanf db "Enter your first number: %d",0
	format_scanf db "Enter your second number: %d",0
	format_printf db "Result is "

section .text
	global main:
main:
