#Find the Length of a String

.data

str1: .asciiz "Enter the string: "
res: .asciiz "The length is: "
len: .word 0
buffer: .space 50
lol: .word 0
.text
main:

li $v0 , 4
la $a0 , str1
syscall

li $v0 , 8
la $a0 , buffer
li $a1 , 100
syscall


move $s0 , $a0

li $t9 ,0

jal lenth

li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t9
syscall

li $v0 ,10
syscall

zero:
li $t9 , -1
jr $ra

lenth:
lb $t1, 0($s0)
beq $t1 , $0 , zero

addi $sp , $sp , -8
sw $t1 , 0($sp)
sw $ra , 4($sp)

addi $s0 , $s0 , 1
jal lenth


lw $t1 , 0($sp)
lw $ra , 4($sp)
addi $sp , $sp , 8

addi $t9 , $t9 , 1



jr $ra














 
