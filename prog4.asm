.data 
str1: .asciiz " Enter the string: "
res: .asciiz "The last five letters are: "

.text 
main:

li $v0 , 4
la $a0 , str1
syscall

li $v0 , 8
syscall
add $s0 , $a0 , $0

li $t1, 5
 
loop: lb $t0 , 0($s0)
      beq $t0 , $0 , L2
      addi $s0 , $s0 , 1
      j loop

L2: addi $s0 ,$s0 , -1
    addi $t1 , $t1 , -1
    beq $t1 , $0 , L3    
    j L2

L3: lb $t0 , 0($s0)
    li $v0, 11            
    move $a0, $t0         
    syscall
    beq $t0 , $0 , exit
    addi $s0 , $s0 , 1
    j L3

exit:  li $v0 , 10 
       syscall

    
    