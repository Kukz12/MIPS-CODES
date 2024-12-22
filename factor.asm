#factorialrec

.data

facte: .asciiz "Enter the number you want to find the factorial for: "
ans: .asciiz "The factorial of the number is : "

.text
main:

li $v0 , 4
la $a0 , facte
syscall

li $v0 , 5
syscall
move $t0 , $v0

jal fact

li $v0 , 4
la $a0 , ans
syscall

li $v0 , 1
move $a0 , $t5
syscall

li $v0 , 10
syscall

fact : addi $sp , $sp , -8
       sw $t0 , 0($sp)
       sw $ra , 4($sp)

       li $t3, 1
       beq $t0 , $t3 , ex
       
       addi $t0 , $t0 , -1
       jal fact

       lw $t0 , 0($sp)
       mul $t5 , $t5 , $t0

       j restore

ex: addi $t5, $0 , 1
    j restore

restore: lw $t0 , 0($sp)
         lw $ra , 4($sp)
         addi $sp , $sp , 8
         jr $ra
         