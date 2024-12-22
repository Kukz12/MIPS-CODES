#Check Prime Number

.data

num: .asciiz "Enter the number to check prime: "
isprime: .asciiz "The number is prime "
isnotprime: .asciiz "The number is not prime "

.text
main:

li $v0 , 4
la $a0 , num
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t1 , 2
li $t6 , 0

jal prcheck

li $v0 ,10
syscall

prcheck:
loop:
beq $t1 , $t0 , np
div $t0 , $t1
mfhi $t6
addi $t1, $t1 , 1
beq $t6 , $0 , p
j loop

np:
li $v0 , 4
la $a0 , isprime
syscall

jr $ra 

p:
li $v0 , 4
la $a0 , isnotprime
syscall

jr $ra


