#Leaf procedure to calculate x²+y²+z²+xyzw

.data 
x: .asciiz "Enter x value:"
y: .asciiz "Enter y value:"
z: .asciiz "Enter z value:"
w: .asciiz "Enter w value:"

.text
main:

li $v0 , 4
la $a0 , x
syscall

li $v0 , 5
syscall
add $t0 , $v0 , $0


li $v0 , 4
la $a0 , y
syscall

li $v0 , 5
syscall
add $t1 , $v0 , $0


li $v0 , 4
la $a0 , z
syscall

li $v0 , 5
syscall
add $t2 , $v0 , $0


li $v0 , 4
la $a0 , w
syscall

li $v0 , 5
syscall
add $t3 , $v0 , $0

jal cool

li $v0 , 10
syscall


cool: addi $t4 , $0 , 1 
      mul $t4 , $t2 , $t3
      mul $t4 , $t4 , $t1
      mul $t4 , $t4 , $t0

      mul $t5 , $t1 , $t1

      mul $t7 , $t2 , $t2

      mul $t8 , $t0 , $t0

      add $t6 , $t4 , $t5
      add $t6, $t6 , $t7     
      add $t6 , $t6 , $t8

      li $v0 , 1
      add $a0 , $t6 , $0 
      syscall
      jr $ra

      

























