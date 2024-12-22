#potential energy

.data

mass: .asciiz "Enter the mass of the body: "
height: .asciiz "Enter the height of the body: "
pot: .asciiz "The potential energy= "
g: .float 9.8
.text
main:

li $v0 , 4
la $a0 , mass
syscall

li $v0 , 6
syscall
mov.s $f1 , $f0

li $v0 , 4
la $a0 , height
syscall

li $v0 , 6
syscall
mov.s $f2 , $f0

lwc1 $f3 , g

jal potential 
li $v0 , 4
la $a0 , pot
syscall

li $v0 , 2
mov.s $f12 , $f6
syscall

li $v0 , 10
syscall

potential:
mul.s $f6 , $f1 , $f2
mul.s $f6 , $f6 , $f3
jr $ra



