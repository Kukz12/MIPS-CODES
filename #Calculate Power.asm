#Calculate Power

.data

base: .asciiz "Enter the base: "
powe: .asciiz "Enter the power: "

.text
main:

li $v0 , 4
la $a0 , base
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $v0 , 4
la $a0 , powe
syscall

li $v0 , 5
syscall
move $t1 , $v0

li $t7 , 1

jal pow

li $v0 ,10
syscall

pow:
loop:
beq $t1 , $0 , ex
mul $t7 , $t7 , $t0
addi $t1 , $t1 , -1
j loop

ex: 

li $v0 , 1
move $a0 , $t7
syscall

jr $ra






