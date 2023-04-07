.data

	age: .word 32

.text

	li $v0, 1
	lw $a0, age
	syscall
