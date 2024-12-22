#Count Vowels in a String

.data 

str: .asciiz "This is a lovely day"
a: .asciiz "a"
e: .asciiz "e"
i: .asciiz "i"
o: .asciiz "o"
u: .asciiz "u"
res : .asciiz "The number of vowels are:"
.text
main:

la $s0 , str
lb $t0 , a
lb $t1 , e
lb $t2 , i
lb $t3 , o
lb $t4 , u
li $t8 , 0

loop:
lb $t5 , 0($s0)
beq $t5 , $t0 , count
beq $t5 , $t1 , count
beq $t5 , $t2 , count
beq $t5 , $t3 , count
beq $t5 , $t4 , count
beq $t5 , $0 , exit
addi $s0 , $s0 , 1
j loop

count:
addi $t8 , $t8 , 1
addi $s0 , $s0 , 1
j loop

exit:
li $v0 , 4
la $a0 , res
syscall

li $v0 , 1
move $a0 , $t8
syscall

li $v0 ,10
syscall



