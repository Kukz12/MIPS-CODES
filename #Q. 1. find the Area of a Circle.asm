#Q. 1. find the Area of a Circle (pi= 3.1415926535897924)

.data 

msg1: .asciiz "Enter the radius: "
res: .asciiz "The area is: "
pi: .float 3.1415926535897924

.text
main:

li $v0 , 4
la $a0 , msg1
syscall

lwc1 $f3, pi

li $v0 , 6
syscall
mov.s $f1 , $f0

jal area

li $v0 ,10
syscall

area:
mul.s $f5 , $f1 , $f1
mul.s $f5 , $f5 , $f3


li $v0 , 4
la $a0 , res
syscall

li $v0 , 2
mov.s $f12 , $f5
syscall

jr $ra


