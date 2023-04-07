.data
	myFirst: .asciiz "Hello World"

.text

	li $v0, 4
	la $a0, myFirst
	syscall
