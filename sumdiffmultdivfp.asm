#Add Two Floating-Point Numbers


.data

num1: .asciiz "Enter the first number: "
num2: .asciiz "Enter the second number: "
res1: .asciiz "The sum is: "
res2: .asciiz "The difference is: "
res3: .asciiz "The product is: "
res4: .asciiz "The quotient is: "

.text
main:

li $v0 , 4
la $a0 , num1
syscall

li $v0 , 6
syscall
mov.s $f1 , $f0

li $v0 , 4
la $a0 , num2
syscall

li $v0 , 6
syscall
mov.s $f2 , $f0


jal fadd
jal fsub
jal fmul
jal fdiv

li $v0 ,10
syscall


fadd:
add.s $f5 , $f1 ,$f2

li $v0 , 4
la $a0 , res1
syscall

li $v0 , 2
mov.s $f12 , $f5
syscall

jr $ra


fsub:
sub.s $f5 , $f1 ,$f2

li $v0 , 4
la $a0 , res2
syscall

li $v0 , 2
mov.s $f12 , $f5
syscall

jr $ra

fmul:
mul.s $f5 , $f1 ,$f2

li $v0 , 4
la $a0 , res3
syscall

li $v0 , 2
mov.s $f12 , $f5
syscall

jr $ra



fdiv:
div.s  $f5 , $f1 ,$f2
li $v0 , 4
la $a0 , res4
syscall

li $v0 , 2
mov.s $f12 , $f5
syscall

jr $ra
































