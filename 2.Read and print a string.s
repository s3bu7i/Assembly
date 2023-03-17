# Read and print a string

	.data

myString: 	.space 10
prompt:	.asciiz "Enter a string: "
msg: 	.asciiz "\nString entered is: "

	.text
main:	
	li $v0, 4
	la $a0, prompt
	syscall

	li $v0, 8
	la $a0, myString
	li $a1, 10 
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 4
	la $a0, myString
	syscall

	li $v0, 10
	syscall
