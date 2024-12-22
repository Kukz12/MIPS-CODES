#Replace All Occurrences of a Character

.data

str1: .asciiz "I loves you baby so so so freakings smuch"
spac: .asciiz "s"
res: .asciiz "m"

.text
main:

la $s0 , str1
lb $t0 , spac
li $t8 , 1
lb $t5 , res

loop:
lb $t1 , 0($s0)
addi $s0, $s0 , 1
beq $t1 , $t0 , lmao
beq $t1 , $0 , exit
li $v0 , 11
move $a0 , $t1
syscall

j loop

lmao:
li $v0 , 11
move $a0 , $t5
syscall
j loop

exit:

li $v0 , 10
syscall
