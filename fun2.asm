.data
prompt: .asciiz "Please enter two numbers\n"
result:  .asciiz "The result is:"

.text
main:
li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall
move $t1,$v0

li $v0,5
syscall
move $t2,$v0

jal addnubers

li $v0,4
la $a0,result
syscall

li $v0,1
move $a0,$t1
syscall

li $v0,10
syscall

addnubers:
add $t1, $t1,$t2

jr $ra

