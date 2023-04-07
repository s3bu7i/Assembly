.data

.text
	main:
		addi $a0, $zero, 100
		addi $a1, $zero, 50
		
		jal printtext
		
		li $v0, 1
		addi $a0, $v1, 0
		syscall
	
	
	li $v0, 10
	syscall

	printtext:
		add $v1, $a0, $a1
		jr $ra
