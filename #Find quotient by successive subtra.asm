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

li $t8 ,0

jal quot

li $v0 , 4
la $a0 , arm
syscall

li $v0 , 1
move $a0 , $t8
syscall


quot: 

addi $sp , $sp , -8
sw $t0 , 0($sp)
sw $ra , 4($sp)

blt $t0 , $t1 , restore
sub $t0 , $t0 , $t1
jal quot
addi $t8 , $t8 , 1
j restore


restore: 
lw $t0 , 0($sp)
lw $ra , 4($sp)
addi $sp , $sp , 8
jr $ra

  




