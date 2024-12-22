.data 

a: .asciiz "Enter the marks of student in sub 1: "
l: .asciiz "Enter the marks of student in sub 2: "
r: .asciiz "Enter the marks of student in sub 3: "

lol: .float 3.0
lmao: .float 5.0

avg1: .asciiz "The average per student: "


avl: .asciiz "The average of all marks is: "

.text
main:

li $t0 , 5
li $t1 , 5
lwc1 $f5 , lol
lwc1 $f9, lmao

loop:
beq $t0 , 0 , esc
li $v0 , 4
la $a0 , a
syscall

li $v0 , 6
syscall
mov.s $f1 , $f0

li $v0 , 4
la $a0 , l
syscall

li $v0 , 6
syscall
mov.s $f2 , $f0

li $v0 , 4
la $a0 , r
syscall

li $v0 , 6
syscall
mov.s $f3 , $f0

add.s $f4 , $f1 , $f2
add.s $f4 , $f4 , $f3
div.s $f6 , $f4 , $f5

addi $sp , $sp , -4
swc1 $f6 , 0($sp)
addi $t0 , $t0 , -1

j loop

esc:
beq $t1 , $0 , last
lwc1 $f6 , 0($sp)
addi $sp , $sp , 4

li $v0 , 4
la $a0 , avg1
syscall

li $v0 , 2
mov.s $f12 , $f6
syscall

add.s $f7 , $f7 , $f6
addi $t1 , $t1 , -1
j esc

last:

div.s $f8 , $f7 , $f9
li $v0 , 4
la $a0 , avl
syscall

li $v0 , 2
mov.s $f12 , $f8
syscall

li $v0 , 10 
syscall









