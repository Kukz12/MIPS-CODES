#Find the First Occurrence of a Character

.data

str1: .asciiz "My name is kukku"
charac: .asciiz "l"
res: .asciiz "First occurance is at location: "
ayyo: .asciiz "Ayyo the character not found"

.text
main:

la $s0 , str1
lb $t0 , charac
li $t1 , 0

loop:
lb $t3 , 0($s0)
beq $t3, $t0 , foundit
beq $t3 , $0 , notfound
addi $s0 , $s0 , 1
addi $t1 , $t1 , 1
j loop

foundit: 
li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t1
syscall

li $v0 ,10
syscall


notfound: 
li $v0 , 4
la $a0 , ayyo
syscall

li $v0 ,10
syscall







