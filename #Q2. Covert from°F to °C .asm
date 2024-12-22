#Q2. Covert from°F to °C (°C= ((5.0/9.0)*(fahr - 32.0));

.data

msg1: .asciiz "Enter the temperature in Fareinheit: "
res: .asciiz "The temperature in Celsius = "
a: .float 5.0
l: .float 9.0
w: .float 32.0

.text
main:

li $v0 , 4
la $a0 , msg1
syscall

li $v0 , 6
syscall
mov.s $f1 , $f0

lwc1 $f2 , a
lwc1 $f3 , l
lwc1 $f4 , w

jal fartocel

li $v0 , 2
mov.s $f12 , $f8
syscall

li $v0 , 10
syscall

fartocel:

div.s $f5 , $f2 , $f3
sub.s $f6 , $f1 , $f4
mul.s $f8 , $f5 , $f6
jr $ra


