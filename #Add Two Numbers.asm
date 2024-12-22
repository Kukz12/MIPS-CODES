#Add Two Numbers

.data

num1: .asciiz "Enter the first number: "
num2: .asciiz "Enter the second number: "
res1: .asciiz "The sum is:"
res3: .asciiz "The product is:"
res2: .asciiz "The difference is:"
res4: .asciiz "The quotient is:"

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

li $t3, 0
li $t4, 0
li $t5, 0
li $t6, 0

jal adds
jal subt
jal multi
jal divi

li $v0 ,10
syscall

adds: 
add $t3 , $t0 , $t1
li $v0 , 4
la $a0 , res1
syscall

li $v0 , 1
move $a0 , $t3
syscall

jr $ra


subt: 
sub $t4 , $t0 , $t1

li $v0 , 4
la $a0 , res2
syscall

li $v0 , 1
move $a0 , $t4
syscall

jr $ra

multi: 
mul $t5 , $t0 , $t1

li $v0 , 4
la $a0 , res3
syscall

li $v0 , 1
move $a0 , $t5
syscall

jr $ra

divi: 
div $t0 , $t1
mflo $t6

li $v0 , 4
la $a0 , res4
syscall

li $v0 , 1
move $a0 , $t6
syscall

jr $ra

