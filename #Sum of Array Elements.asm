#Sum of Array Elements

.data

arr: .word 1, 2, 3, 4, 5, 6, 7
len: .word 7
sum: .word 0
res: .asciiz "The sum of array elements is: "

.text
main:

li $t8 , 0
la $t1 , len
lw $t1 , 0($t1)
li $t5 , 0 
la $s0 , arr


jal sumn

li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t8
syscall

li $v0 , 10
syscall

zero:
li $t8 ,0
jr $ra

sumn:

beq $t1 , $0 , zero

lw $t2 , 0($s0)

addi $sp , $sp , -8
sw $t2 , 0($sp)
sw $ra , 4($sp)

addi $s0 , $s0 , 4
addi $t1 , $t1 , -1
jal sumn

lw $t2 , 0($sp)
lw $ra , 4($sp) 
addi $sp , $sp , 8

add $t8 , $t8 , $t2
jr $ra





