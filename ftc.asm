# Initialize data segment
.data
prompt1: .asciiz "Enter temperature value: "
prompt2: .asciiz "Enter temperature unit (0 for Celsius, 1 for Fahrenheit): "
result: .asciiz "The converted temperature is: "

# Initialize text segment
.text

main:
    # Prompt user to enter temperature value
    li $v0, 4
    la $a0, prompt1
    syscall

    # Read in temperature value
    li $v0, 5
    syscall
    move $s0, $v0    # $s0 = temperature value

    # Prompt user to enter temperature unit
    li $v0, 4
    la $a0, prompt2
    syscall

    # Read in temperature unit
    li $v0, 5
    syscall
    move $s1, $v0    # $s1 = temperature unit (0 = Celsius, 1 = Fahrenheit)

    # Convert temperature to other unit
    beq $s1, 0, to_fahrenheit   # If Celsius, jump to conversion to Fahrenheit
    beq $s1, 1, to_celsius     # If Fahrenheit, jump to conversion to Celsius


to_fahrenheit:
    # Convert temperature to Fahrenheit
    sub $t0, $s0, 32         # $t0 = temperature value - 32
    mul $t0, $t0, 5          # $t0 = ($t0) * 5
    div $t0, $t0, 9          # $t0 = ($t0) / 9
    move $s2, $t0            # $s2 = converted temperature value
    j print_result

to_celsius:
    # Convert temperature to Celsius
    mul $t0, $s0, 9          # $t0 = ($s0) * 9
    div $t0, $t0, 5          # $t0 = ($t0) / 5
    addi $t0, $t0, 32        # $t0 = ($t0) + 32
    move $s2, $t0            # $s2 = converted temperature value
    j print_result

print_result:
    # Print converted temperature value
    li $v0, 4
    la $a0, result
    syscall
    li $v0, 1
    move $a0, $s2
    syscall
    j exit

exit:
    # Exit program
    li $v0, 10
    syscall
