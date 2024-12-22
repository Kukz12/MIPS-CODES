#Power of a Number

.data

base: .asciiz "Enter the base: "
powe: .asciiz "Enter the power: "
res: .asciiz "The result is: "

.text
main:

li $v0 , 4 
la $a0 , base
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $v0 , 4 
la $a0 , powe
syscall

li $v0 , 5
syscall
move $t1 , $v0

li $t5 , 1
li $t6 , 1
li $t7 , 0

jal pow

li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t5
syscall

li $v0 ,10
syscall

one:
move $t5 , $t0
jr $ra

zero:
li $t5 , 1 
jr $ra

pow:
beq $t1 , $t6 , one
beq $t1 , $t7 , zero

addi $sp, $sp , -8
sw $t1 , 0($sp)
sw $ra , 4($sp)

addi $t1 , $t1 , -1
jal pow

lw $t1 , 0($sp)
lw $ra , 4($sp)
addi $sp, $sp , 8

mul $t5 , $t5 , $t0
jr $ra















