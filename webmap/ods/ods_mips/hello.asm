	.text			# code section
	.globl main
main:	li $v0, 4			# system call for print string
	la $a0, str		# load address of string to print
	syscall			# print the string
	li $v0, 10		# system call for exit
	syscall			# exit
	.data
str: 	.asciiz "Hello world!\n"   # NUL terminated string, as in C