#Check Even/Odd

.data 

num1: .asciiz "Enter the number to check even or odd: "
od: .asciiz "The number is odd"
ev: .asciiz "The number is even"

.text
main:

li $v0 , 4
la $a0 , num1
syscall

li $v0 , 5
syscall
move $t0 , $v0

jal check

li $v0 ,10
syscall

check:
li $t1 , 2
li $t4 , 0
div $t0 , $t1
mfhi $t4
beq $t4 , $0 , even
j odd

even:
li $v0 , 4
la $a0 , ev
syscall
jr $ra

odd:
li $v0 , 4
la $a0 , od
syscall
jr $ra



