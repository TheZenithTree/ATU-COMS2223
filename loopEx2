#Print 1 through 20 and add all numbers within
.text
main:

li $t0 1 #initial and counter
li $s0 20 #max counter and break point
li $s1 0 #result

move $a0 $t0
li $v0 1
syscall

FOR: bgt $t0 $s0 EXIT

la $a0 plus
li $v0 4
syscall #plus sign to console

move $a0 $t0
li $v0 1
syscall #counter to console

add $s1 $s1 $t0 #add to result

UPDATE: addi $t0 $t0 1 #increase counter
j FOR #jump to beginning of loop

EXIT: 
la $a0 equal
li $v0 4
syscall
move $a0 $s1
li $v0 1
syscall

li $v0 10
syscall

.data
plus: .asciiz " + "
equal: .asciiz " = "
