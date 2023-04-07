.data
	myDouble:  .double 4.66
	zero: .double 0.9999

.text

	ldcl $f2, myDouble
	ldcl $f0, zero
	
	li $v0, 3
	add.d $f12, $f2, $0
	syscall

