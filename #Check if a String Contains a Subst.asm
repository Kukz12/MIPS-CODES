#Check if a String Contains a Substring

.data 

str1: .asciiz "I love ice cream"
subs: .asciiz "ice"
nono: .asciiz "the string is not a substing of main string"
yesyes: .asciiz "the string is a substing of main string"

.text
main:

la $s0 , str1


loop:
la $s1 , subs
lb $t0 , 0($s0)
lb $t1 , 0($s1)
beq $t0 ,$0 , nosub
beq $t1 , $t0 , l2
addi $s0 ,$s0, 1
j loop

l2:
addi $s0 ,$s0, 1
addi $s1, $s1 , 1
lb $t0 , 0($s0)
lb $t1 , 0($s1)
beq $t1 , $0 , subf
bne $t1 , $t0 , loop
j l2

nosub:
li $v0 , 4
la $a0 , nono
syscall

li $v0 , 10
syscall

subf:
li $v0 , 4
la $a0 , yesyes
syscall

li $v0 , 10
syscall


