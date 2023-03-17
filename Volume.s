# Volume 

	.data
volume:		.word	0
surfaceArea:	.word	0
prompta:	.asciiz	"Enter 'A' side: "
promptb:	.asciiz	"Enter 'B' side: "
promptc:	.asciiz	"Enter 'C' side: "
promptVol:	.asciiz "\nVolume: "


	.text
main:
# Side A ($t1)
	li $v0, 4
	la $a0, prompta
	syscall

	li $v0, 5
	syscall
	add $t1, $zero, $v0

# Side B ($t2)
	li $v0, 4
	la $a0, promptb
	syscall

	li $v0, 5
	syscall	
	add $t2, $zero, $v0

# Side C ($t3)
	li $v0, 4
	la $a0, promptc
	syscall

	li $v0, 5
	syscall	
	add $t3, $zero, $v0

# Volume
	mul $t4, $t1, $t2
	mul $t4, $t4, $t3
	sw $t4, volume

	li $v0, 4
	la $a0, promptVol
	syscall

	li $v0, 1
	lw $a0, volume
	syscall


# Exit
	li $v0, 10
	syscall
