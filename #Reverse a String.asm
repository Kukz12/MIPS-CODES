#Reverse a String

.data 

str: .asciiz "Kukku"

.text
main:

la $s0 , str
li $t1 , 0

loop: 
lb $t0, 0($s0)
beq $t0 , $0 , l2
addi $s0 , $s0 , 1
addi $t1 , $t1 , 1
j loop

l2: 
addi $s0 , $s0 , -1
lb $t0 , 0($s0)
li $v0 , 11
move $a0 , $t0
syscall
addi $t1 , $t1 , -1
beq $t1 , $0 , exit
j l2

exit : 
li $v0 , 10
syscall



      