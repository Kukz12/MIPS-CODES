#Find quotient by successive subtraction 

.data

num: .asciiz "Enter the number: "
divi: .asciiz "Enter the divisor: "
arm: .asciiz "The quotient is:"

.text
main:

li $v0 , 4
la $a0 , num
syscall

li $v0 , 5
syscall
move $t0 , $v0


li $v0 , 4
la $a0 , divi
syscall

li $v0 , 5
syscall
move $t1 , $v0

li $t8, 0

quot: 
ble $t0 , $t1 , lol
sub $t0 , $t0 , $t1
addi $t8 , $t8 , 1
beq $t0 , $0 , lol
j quot


lol:

li $v0 , 4
la $a0 , arm
syscall

li $v0 , 1
move $a0 , $t8
syscall


li $v0 , 10
syscall

