# Celsius to Fahrenheit / Fahrenheit to Celsius converter

.data
input: .asciiz "Enter temperature: "
result_label: .asciiz "Result: "
newline: .asciiz "\n"

.text


main:
    li $v0, 4
    la $a0, input
    syscall
    
    li $v0, 5
    syscall
    move $s0, $v0
    
celsius_to_fahrenheit:
    mul $t1, $s0, 9       
    div $t1, $t1, 5       
    addi $t1, $t1, 32     
    j print_result
    
fahrenheit_to_celsius:
    subi $s0, $s0, 32     
    mul $t1, $s0, 5       
    div $t1, $t1, 9       
    j print_result
    
print_result:
    li $v0, 4
    la $a0, result_label
    syscall
    
    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall
    
    li $v0, 10
    syscall
