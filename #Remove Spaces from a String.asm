#Remove Spaces from a String

.data

str1: .asciiz "I love you baby"
spac: .asciiz " "

.text
main:

la $s0 , str1
lb $t0 , spac

loop:
lb $t1 , 0($s0)
addi $s0, $s0 , 1
beq $t1 , $t0 , loop
beq $t1 , $0 , exit
li $v0 , 11
move $a0 , $t1
syscall
j loop

exit:
li $v0 , 10
syscall

