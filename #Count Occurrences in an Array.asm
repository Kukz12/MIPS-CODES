#Count Occurrences in an Array

.data 

arr: .word 1, 2, 3, 4, 5, 3, 4, 2, 5, 5, 6, 7, 2, 8
len: .word 14
num: .asciiz "Enter the number you want to count the occurances of: "
res: .asciiz "The number of occurances = "

.text
main:

li $v0 , 4
la $a0 , num
syscall

lw $t7 , len

li $v0 , 5
syscall
move $t8 , $v0

la $s0 , arr
li $t6, 0

jal countocc

li $v0 ,10
syscall

countocc:
loop:
beq $t7 , $0 , esc
lw $t2 , 0($s0)
beq $t2, $t8 , count
addi $s0 , $s0 ,4
addi $t7 , $t7 , -1
j loop

count:
addi $t6 , $t6 , 1
addi $s0 , $s0 , 4
addi $t7 , $t7 , -1
j loop

esc:
li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t6
syscall

jr $ra



