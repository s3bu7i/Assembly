.data

msg: .asciiz "Your are welcome"

.text
	main: 
	jal displayMsg
	
	
	li $v0,10
	syscall 
	
	displayMsg:
	li $v0,4
	la $a0,msg
	syscall 
	
	jr $ra
