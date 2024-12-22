#Armstrong number

.data

num: .asciiz "Enter the number:"
arm: .asciiz "The Armstrong number is:"

.text
main:

li $v0 , 4
la $a0 , num
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t1 , 10
li $t6, 0
li $t3 , 0

loop:
div $t0 , $t1
mfhi $t3
mflo $t0
move $t5 , $t3
mul $t3 , $t3 , $t5
mul $t3 , $t3 , $t5
add $t6 , $t6 , $t3
beq $t0 , $0 , exit
j loop

exit:
li $v0 , 4
la $a0 , arm
syscall

li $v0 , 1
move $a0 , $t6
syscall

li $v0 ,10
syscall



