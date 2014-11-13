.data
linebrk: .asciiz "\n"
	.text
print_eol:                      # prints "\n"
  	li $v0, 4               #
 	la $a0, linebrk         #
	syscall                 #
	jr $ra                  # return
	nop
# prints the integer contained in $a0
print_int: 
	li $v0, 1        	# system call to 
	syscall          	# print integer
	jr $ra           	# return
	nop
.globl main
main:
        li $s0, 1               # $s0 = loop ctr
        li $s1, 10              # $s1 = upperbnd
loop:   move $a0, $s0           # print loop ctr
        jal print_int           # 
	nop
        jal print_eol           # print "\n"
	nop
        addi $s0, $s0, 1        # loop ctr +1
        ble $s0, $s1, loop      # unless $s0>$s1…


