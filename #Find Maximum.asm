#Find Maximum of Three Numbers

.data

num1: .asciiz "Enter the first number: "
num2: .asciiz "Enter the second number: "
num3: .asciiz "Enter the third number: "
maxi: .asciiz "The largest number among the 3 is: "

.text
main:

li $v0 , 4
la $a0 , num1
syscall

li $v0 , 5
syscall
move $t1 , $v0

li $v0 , 4
la $a0 , num2
syscall

li $v0 , 5
syscall
move $t2 , $v0

li $v0 , 4
la $a0 , num3
syscall

li $v0 , 5
syscall
move $t3 , $v0

li $t7 , 0

jal max

li $v0 , 4
la $a0 , maxi
syscall

li $v0 , 1
move $a0 , $t7
syscall


li $v0 , 10
syscall

max:

bge $t1 , $t2 , g1
bge $t2, $t1 , g2
bge $t3, $t1 , g3

g1: bge $t1, $t3 , gg1
    bge $t2, $t1 , g2
g2: bge $t2 , $t3 , gg2 
    bge $t3, $t1 , g3
g3: bge $t3 , $t2 , gg3 

gg1: 
move $t7 , $t1 
jr $ra  

gg2: 
move $t7 , $t2 
jr $ra   

gg3: 
move $t7 , $t3 
jr $ra     





   


