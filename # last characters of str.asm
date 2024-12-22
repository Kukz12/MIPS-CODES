# last characters of str

.data

str1: .asciiz "Enter the string: "
lent: .asciiz "Enter the length of string: "
last: .asciiz "Enter the number of last characters you wish to print: "
buffer: .space 50

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

li $v0 , 4
la $a0 , lent
syscall

li $v0 , 5
syscall
move $t0 , $v0 

li $v0 , 4
la $a0 , last
syscall

li $v0 , 5
syscall
move $t1 , $v0 

sub $t4 , $t0 , $t1

loop:
beq $t4 , $0 , l2
lb $t6 , 0($s0)
addi $s0, $s0 , 1
addi $t4, $t4 , -1
j loop

l2:
beq $t1 , $0 , exit
lb $t6 , 0($s0)
li $v0 , 1

li $v0 , 11
move $a0 , $t6
syscall

addi $s0, $s0 , 1
addi $t1, $t1 , -1
j l2

exit:
li $v0 ,10 
syscall

