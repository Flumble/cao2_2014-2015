         .text
        .globl main
main:   la   $t0, Aaddr          # $t0 = pointer to array A
        lw   $t1, len            # $t1 = length (of array A)
        sll  $t1, $t1, 2         # $t1 = 4*length
        add  $t1, $t1, $t0       # $t1 = address(A)+4*length
loop:   lw   $t2, 0($t0)         # $t2 = A[i]
        addi $t2, $t2, 5         # $t2 = $t2 + 5
        sw   $t2, 0($t0)         # A[i] = $t2
        addi $t0, $t0, 4         # i = i+1
        bne  $t0, $t1, loop      # if $t0<$t1 goto loop
        .data
Aaddr:  .word 0,2,1,4,5         # array with 5 elements
len:    .word 5

