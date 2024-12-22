#Check for Palindrome

.data

str1: .asciiz "WOWiW0p"
np : .asciiz "The string is not a palindrome"
p : .asciiz "Thr string is a pallindrome"

.text
main:

la $s0 , str1
la $s1 , str1

li $t3 , 0

loop: 
lb $t0 , 0($s0)
beq $t0 ,$0 , l2
addi $s0 $s0 ,1
addi $t3 ,$t3 ,1
j loop

l2: 
addi $s0 , $s0 , -1
beq $t3 , $0 , pal
lb $t0 , 0($s0)
lb $t1 , 0($s1)
bne $t0 , $t1 , npal
addi $s1, $s1 , 1
addi $t3 , $t3 , -1
j l2 

npal:
li $v0 , 4
la $a0 , np
syscall
j exit

pal:
li $v0 , 4
la $a0 , p
syscall
j exit

exit:
li $v0 ,10
syscall

      




