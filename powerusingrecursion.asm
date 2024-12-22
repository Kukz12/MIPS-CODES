#posingrecursion
#t0 stores base , t1 stores power

.data 

base: .asciiz "Enter the base: "
po: .asciiz "Enter the power: "

.text
main:

li $v0 , 4
la $a0 , base
syscall

li $v0 , 5
syscall
move $t0, $v0 

li $v0 , 4
la $a0 , po
syscall

li $v0 , 5
syscall
move $t1, $v0 

move $a1 , $t0
move $a2 , $t1
jal pow

li $v0 , 1
move $a0 , $t6 
syscall

li $v0 , 10
syscall

pow: addi $sp , $sp , -12
     sw $a2 , 0($sp)
     sw $a1 , 4($sp)
     sw $ra , 8($sp)
     beq $a2 , $0 , escp
     addi $a2 , $a2 , -1
     jal pow

     lw $a2 , 0($sp)
     mul $t6 , $t6 , $a1
     j restore

escp: li $t6 , 1
      j restore

restore: lw $a2 , 0($sp)
         lw $a1 , 4($sp)
         lw $ra , 8($sp)
         addi $sp , $sp , 12
         jr $ra


         
     
     




