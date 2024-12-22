#fibonaci

.data 

limit: .asciiz "Enter the limit: "

.text
main:

li $v0 , 4
la $a0 , limit
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $t1 , 0 
li $t2 , 1

jal fibo

li $v0 , 10
syscall


fibo: li $v0 , 1
      move $a0 , $t1
      syscall
   
      move $t4 , $t2
      add $t2 , $t2 ,$t1
      move $t1 , $t4
      bge $t1 , $t0 , exit

      j fibo

exit: jr $ra







    

