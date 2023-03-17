.data
prompt: .asciiz "Please enter two numbers\n"
result:  .asciiz "The result is:"

.text

li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,5
syscall
move $t1,$v0
div $t0,$t0,$t1

li $v0,4
la $a0,result
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,10
syscall
