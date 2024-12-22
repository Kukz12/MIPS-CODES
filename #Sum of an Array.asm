#Sum of an Array

.data

arr: .word 1, 2, 3, 4, 5, 6, 7, 8
len: .word 8

.text
main:

la $s0 , arr
lw $t0 , len
li $t6 , 0

jal sum

li $v0 , 10
syscall

sum:
loop:
beq $t0 , $0 , esc
lw $t1 , 0($s0)
add $t6 , $t6 , $t1
addi $s0 , $s0 , 4
addi $t0 , $t0 , -1
j loop

esc:
li $v0 , 1
move $a0 , $t6
syscall

jr $ra





