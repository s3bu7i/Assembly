.data
	num1: .word 33
	num2: .word 2
	a: .asciiz 
.text
	lw $t0, num1
	lw $t1, num2
	
	mul $t2, $t0, $t1
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	
	li $v0 , 1
	la $a0 , a
	syscall
	
	div $t2, $t0, $t1
	mflo $t2
	
	li $v0, 1
	move $a0, $t2
	syscall
	
