.include "user_define.h"

.global main
.globl exit
.section .text

.align 4
matrix: 
    .word 65, -1, 67
    .word -9, 65, 65
    .word 65, 65, -29

result:
    .space 36
main:
    la x5, matrix
    la x6, result

	# address of matrix 
	la x7, result
	li x29, 70 # fail test result

    # Initialize the 2x2 matrix with values
    li x30, 9       # Set the loop counter for 4 elements (2x2 matrix)
    li x31, 0       # Initialize index counter\	

loop:
    beq x30, x31, exit # If index counter equals loop counter, exit loop
    # Load value from the matrix
    lw x28, 0(x5)    # Load word into t1 from address in x1

    # Perform ReLU operation
    bgt x28, x0, store  # if x5 > 0, store it
    sw x29, 0(x6) # otherwise store test value (TEST)
    j increment

increment:
	# lw x8, 0(x2) # load result into x8
    addi x5, x5, 4  # Move to the next element in the original matrix
    addi x6, x6, 4  # Move to the next element in the result matrix
    addi x31, x31, 1  # Increment the loop counter
    j loop # return to start of loop

store:
    # Store the result in the result matrix
    sw x28, 0(x6)    # Store t1 at the address in x2
    j increment     # Jump back to the start of the loop

exit:

	lw x12, 0(x7)
	lw x13, 4(x7)
	lw x14, 8(x7)
	lw x15, 12(x7)

    lw x16, 16(x7)
    lw x17, 20(x7)
    lw x18, 24(x7)
    lw x19, 28(x7)
    lw x20, 32(x7)

	lui a0,print_port>>12
    addi a1,zero,'\n'
    sw a1,0(a0)

    addi a1,x12,0 # result[1]
    sw a1,0(a0)

    addi a1,x13,0 # result[2]
    sw a1,0(a0)

    addi a1,x14,0 # result[3]
    sw a1,0(a0)

    addi a1,x15,0 # result[4]
    sw a1,0(a0)

    addi a1,x16,0
    sw a1,0(a0)

    addi a1,x17,0
    sw a1,0(a0)

    addi a1,x18,0
    sw a1,0(a0)

    addi a1,x19,0
    sw a1,0(a0)

    addi a1,x20,0
    sw a1,0(a0)

    addi a1,zero,'\n'
    sw a1,0(a0)
    sw a1,0(a0)

    li x18, 1
    li x17, 0x20000000
    sw x18,0(x17)