#Count the Number of Words in a String

.data

str1: .asciiz "I love you baby so so so freaking much"
spac: .asciiz " "
res: .asciiz "The number of words in string is:"

.text
main:

la $s0 , str1
lb $t0 , spac
li $t8 , 1

loop:
lb $t1 , 0($s0)
addi $s0, $s0 , 1
beq $t1 , $t0 , lmao
beq $t1 , $0 , exit
j loop

lmao:
addi $t8 , $t8 , 1
j loop

exit:
li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t8
syscall

li $v0 , 10
syscall
