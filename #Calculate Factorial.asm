#Calculate Factorial

.data

msg1: .asciiz "Enter the num to find fact of:"
msg2: .asciiz "The factorial is: "

.text
main:

li $v0 , 4
la $a0 , msg1
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t6 , 1

jal fact

li $v0 , 10
syscall


fact: 
loop:
beq $t0 , $0 , ft
mul $t6 , $t6 , $t0
addi $t0 , $t0 , -1
j loop

ft:

li $v0 , 4
la $a0 , msg2
syscall

li $v0 , 1
move $a0, $t6
syscall

jr $ra
