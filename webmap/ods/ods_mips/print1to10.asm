main:	li $s0, 1		# $s0 = loop counter
	li $s1, 10		# $s1 = upper bound of loop
loop:	move $a0, $s0		# print loop counter $s0
	li $v0, 1
	syscall
	li $v0, 4		# print “\n”
	la $a0, linebrk		# linebrk: .asciiz “\n”
	syscall
	addi $s0, $s0, 1	# increase counter by 1	
	ble $s0, $s1, loop	# if ($s0<=$s1) goto loop
	li $v0, 10		# exit
	syscall
	.data
linebrk: .asciiz "\n"
