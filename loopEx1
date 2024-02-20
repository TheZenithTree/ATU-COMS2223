#This program uses a loop to add a number to itself minus five. 

.text
main: move $a0, $0 #moves 0 to argument
 li $t0, 40 #loads 40 to temp register
loop: add $a0, $a0, $t0 #Begin loop, add argument and temp
 addi $t0, $t0, -5 #Reduce temp by five
 bnez $t0, loop #Ends loop when $t0 is equal to 0

 li $v0, 1 #loads ability to load argument to console
 syscall #does previous line of code
 li $v0, 10 #loads ability to exit program
 syscall #does previous line of code
