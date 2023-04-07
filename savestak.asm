.data
	 newline: .asciiz "\n"
	 
.text
	main:
		addi $s0, $zero, 10
		
		jal printtext
		
		li $v0, 4
		la $a0, newline
		syscall
		
	li $v0, 10
	syscall
	
	printtext:
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		
		addi $s0, $s0, 30
		
		li $v0, 1
		move $a0, $s0
		syscall
		
		 lw $s0, 0($sp)
		 addi $sp, $sp, 4
		 
		  jr $ra 







