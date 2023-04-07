.data

.text
	addi $t0, $zero, 15
	addi $t1, $zero, 3
	
	div $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall

