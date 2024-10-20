
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array 
    li a1, 7    # unsigned
    li a2, 1     
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
    slli t0, a1, 2 
    add a3, a0, t0 
    li t0, 4       
    li t1, 1
    beq a1, zero, end    
loop:
    blt a1, zero, end
    lw t2, 0(a3)
    beq t2, a2, exitloop
    sub a3, a3, t0
    sub a1, a1, t1
    j loop
end:
    add a3, zero, zero
    j exitloop
exitloop:
    add s0, a3, zero
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
