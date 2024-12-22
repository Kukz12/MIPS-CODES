#Print a Message

.data 

msg: .asciiz "Are you alright"
do: .asciiz "Do you want to print the msg? (y-1 n-0): "
.text
main:

li $v0 , 4
la $a0 , do
syscall

li $v0 , 5
syscall
move $t0 , $v0

beq $t0 , $0 , no

jal prin

no: li $v0 ,10
    syscall

prin:
li $v0 , 4
la $a0 , msg
syscall

jr $ra
