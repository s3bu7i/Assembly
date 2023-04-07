.data
	text: .asciiz "hello "
	
.text
	main:
		jal printstring
		
		addi $t0, $zero, 5040
		
		li $v0, 1
		add $a0, $zero, $t0
		syscall
		
	li $v0, 10
	syscall
	
	printstring:
		li $v0, 4
		la $a0, text
		syscall 
		
		jr $ra

