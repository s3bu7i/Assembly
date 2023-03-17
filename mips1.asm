.data
val1:
val2:
msg1:
msg2:
msg3:

.text
.globl main

main:
    lw $t0, val1
    lw $t1, val2
    
    bgt $t0, $t1, greater_than
    beq $t0, $t1, equal_to
    j less_than
    
    greater_than:
    la $a0, msg1
    li $v0, 4
    syscall
    
    li $v0, 10
    syscall
    
    equal_to:
    la $a0, msg2
    li $v0, 4
    syscall
    
    li $v0, 10
    syscall
    
    less_than:
    la $a0, msg3
    li $v0, 4
    syscall
    
    li $v0, 10
    syscall