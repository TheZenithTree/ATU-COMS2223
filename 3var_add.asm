#This program takes three variables from the user and adds them together. 

.text
main:
la $a0, prompt_ori
li $v0, 4
syscall

la $a0, p_int1
li $v0 4
syscall
li $v0 5
syscall
move $s0 $v0

la $a0, p_int2
li $v0 4
syscall
li $v0 5
syscall
move $s1 $v0

la $a0, p_int3
li $v0 4
syscall
li $v0 5
syscall
move $s2 $v0

add $t0 $s0 $s1
add $t0 $t0 $s2
la $a0 result
li $v0 4
syscall
move $a0 $t0
li $v0 1
syscall

li $v0, 10
syscall

.data
prompt_ori: .asciiz "Please enter three integer variables: \n"
p_int1: .asciiz "Variable 1: "
p_int2: .asciiz "Variable 2: "
p_int3: .asciiz "Variable 3: "
result: .asciiz "Result: "
