#Find the Length of a String

.data 

str: .asciiz "My name is Sneha Cenoy"
res: .asciiz "The length of the string is:"

.text
main:

la $s0 , str
li $t1, 0

loop:
lb $t0 , 0($s0)
beq $t0 , $0 , exit
addi $t1 ,$t1 , 1
addi $s0 ,$s0 , 1
j loop

exit:
li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t1
syscall

li $v0 , 10
syscall





