#Check if a number is a palindrome using procedure

.data

num1: .asciiz "Enter the number you wanna check: "
res1: .asciiz "The number is palindrome "
res2: .asciiz "The number is not a palindrome "

.text
main:

li $v0 , 4
la $a0 , num1
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t4 , 10
move $t7 , $t0
li $t6 , 0
li $t8 , 0

jal pal

li $v0 , 10
syscall

pal: 
loop:
div $t0 , $t4
mfhi $t6
mflo $t0
mul $t8 , $t8 , $t4
add $t8 , $t8 , $t6
beq $t0 ,$0 , escp
j loop

escp:
beq $t7, $t8 , ypal
j npal

ypal:

li $v0 , 4
la $a0 , res1
syscall
jr $ra

npal:

li $v0 , 4
la $a0 , res2
syscall
jr $ra




