#Swap Two Variables

.data

num1: .asciiz "Enter the first number: "
num2: .asciiz "Enter the second number: "
befsw: .asciiz "Numbers before swapping: "
aftsw: .asciiz "Numbers after swapping: "

.text
main:

li $v0 , 4
la $a0 , num1
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $v0 , 4
la $a0 , num2
syscall

li $v0 , 5
syscall
move $t1 , $v0

jal swap

li $v0 , 10
syscall

swap:
li $v0 , 4
la $a0 , befsw
syscall

li $v0 , 1
move $a0 , $t0
syscall

li $v0 , 1
move $a0 , $t1
syscall

move $t8 , $t0
move $t0 , $t1
move $t1 , $t8

li $v0 , 4
la $a0 , aftsw
syscall

li $v0 , 1
move $a0 , $t0
syscall

li $v0 , 1
move $a0 , $t1
syscall

jr $ra






