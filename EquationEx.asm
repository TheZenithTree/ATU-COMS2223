# This program takes an input from the console and uses it as the variable in an equation

.text
main:

la $a0 prompt
li $v0 4
syscall
li $v0 5
syscall
move $s0 $v0

li $t0 4
li $t1 7

mul $t2 $s0 $s0 #x^2
mul $t0 $t0 $t2 #4x^2

mul $t1 $t1 $s0 #7x

add $s1 $t0 $t1 #4x^2 + 7x
addi $s1 $s1 1 #4x^2 + 7x + 1

la $a0 result
li $v0 4
syscall

move $a0 $s1
li $v0 1
syscall

li $v0 10
syscall

.data
prompt: .asciiz "Enter an integer (x) to be entered into the equation (4x^2 + 7x + 1): "
result: .asciiz "Result: "
