#Hard coded array of integers, find the number of odd numbers and store the count in memory

.data

length: .asciiz "Enter the length of the array: "
ele: .asciiz " Enter the elements: "
oddn: .asciiz "The number of odd numbers in the array is: "

.text
main:

li $v0 , 4
la $a0 , length
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t6, 2

li $t8, 0

loop:

li $v0 , 4
la $a0 , ele
syscall

li $v0 , 5
syscall
move $t1 , $v0

div $t1, $t6
mfhi $t7
bne $t7 , $0 , odd
addi $t0 , $t0 , -1
beq $t0 , $0 , exit

j loop

odd:
addi $t8, $t8 , 1
addi $t0 , $t0 , -1
j loop

exit:
li $v0 , 4
la $a0 , oddn
syscall

li $v0 , 1
move $a0 , $t8
syscall

li $v0 , 10
syscall








