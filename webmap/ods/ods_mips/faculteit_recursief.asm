	.data
prompt:	.asciiz	"\n\n Give me a value for 'N': "
msg:	.asciiz	" N factorial is: "
bye:	.asciiz	"\n### Good-bye ###"
	.text
.globl	main
main:	addiu	$sp, $sp, -8	# allocate space
mloop:
	li	$v0, 4
	la	$a0, prompt
	syscall
	li	$v0, 5	# Get value for N
	syscall
#	li	$v0, 1	#BERT
	bltz	$v0, quit
	sw	$v0, 0($sp)
	jal	fac	# Call factorial
	nop	
	li	$v0, 4	# Print message
	la	$a0, msg
	syscall
	lw	$a0, 4($sp)	# Get result
	li	$v0, 1
	syscall
	b	mloop
quit:
	addiu	$sp, $sp, 8	# Deallocate space
	li	$v0, 4
	la	$a0, bye
	syscall
	li	$v0, 10
	syscall
###########################
# Functional Description: recursive factorial
###########################
fac:
	lw	$a0, 0($sp)
	bltz	$a0, problem
	addi	$t1, $a0, -13
	bgtz	$t1, problem	# 13 is largest value we can accept
	addiu	$sp, $sp, -16	# Allocate
	sw	$ra, 12($sp)	# Save return address
	sw	$a0, 8($sp)
	slti	$t0, $a0, 2	# If N is 1 or 0 then return the value 1
	beqz	$t0, go
	li	$v0, 1
	b	facret
go:
	addi	$a0, $a0, -1
	sw	$a0, 0($sp)	# Pass N-1 to factorial function
	jal	fac		# Recursive call
	nop
	lw	$v0, 4($sp)	# Get (N-1)! back
	lw	$ra, 12($sp)
	lw	$a0, 8($sp)
	mult	$v0, $a0	# N*(N-1)!
	mflo	$v0
facret:
	addiu	$sp, $sp, 16	# Deallocate
	sw	$v0, 4($sp)
	jr	$ra
problem:
	sw	$v0, 4($sp)
	jr	$ra

