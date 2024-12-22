#Reverse an Array

.data 

ar: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
lent: .word 9

.text
main:

la $s0 , ar
lw $t0 , lent
move $t4 , $t0

jal rev

li $v0 , 10
syscall


rev:
loop: 
beq $t0 , $0 , next
lw $t1 , 0($s0)
addi $s0 , $s0 , 4
addi $t0 , $t0 , -1
j loop

next:
beq $t4 , $0 , last
addi $s0 , $s0 , -4
lw $t1 , 0($s0)
li $v0 , 1
move $a0 , $t1
syscall
addi $t4 , $t4 , -1
j next

last:
jr $ra



