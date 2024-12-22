#Sum of n numbers

.data 

num: .asciiz "Enter the number: "
res: .asciiz "The sum of n numbers = "

.text
main:

li $v0 , 4
la $a0 , num
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t1 , 0
li $t2 , 1
li $t7 , 0

jal sumn

li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t7
syscall

li $v0 , 10
syscall


zero:
li $t7 , 0
jr $ra


sumn:

beq $t0 , $t1 , zero


addi $sp , $sp , -8
sw $t0 , 0($sp) 
sw $ra , 4($sp)

addi $t0 , $t0 , -1
jal sumn

lw $t0 , 0($sp) 
lw $ra , 4($sp)
addi $sp , $sp , 8

add $t7 , $t7 , $t0
jr $ra





