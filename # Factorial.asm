#Calculate Factorial

.data

num: .asciiz "Enter the number to calculate factorial: "
res: .asciiz "The result is: "

.text
main:

li $v0 , 4
la $a0 , num 
syscall


li $v0 , 5
syscall
move $t0 , $v0

li $t7 , 1
li $t4 , 1
li $t3 , 0
jal fact

li $v0 , 1
move $a0 , $t7
syscall

li $v0 ,10
syscall

zero:
li $t7 , 1
jr $ra

one:
li $t7 , 1
jr $ra

fact:

beq $t0 , $t4 , one
beq $t0 , $t3 , zero

addi $sp , $sp , -8
sw $t0 , 0($sp)
sw $ra , 4($sp)

addi $t0 , $t0 , -1
jal fact

lw $t0 , 0($sp)
lw $ra , 4($sp)
addi $sp , $sp , 8

mul $t7 , $t7 , $t0
jr $ra 




















