#Fibonacci Sequence

.data

limit: .asciiz "Enter the limit for the series: "
fib: .asciiz "The Fibonacci series is: "

.text
main:

li $v0 , 4
la $a0 , limit
syscall

li $v0 , 5
syscall
move $t5 , $v0

li $t0 , 0
li $t1 , 1
li $t8 , 0


jal fibo

li $v0 , 10 
syscall

fibo:
li $v0 , 4
la $a0 , fibo 
syscall

li $v0 , 1
move $a0 , $t0
syscall

loop:
bge $t1 , $t5 , esc

li $v0 , 1
move $a0 , $t1
syscall

move $t8 , $t1
add $t1 , $t0 , $t1
move $t0 , $t8
j loop

esc:
jr $ra








