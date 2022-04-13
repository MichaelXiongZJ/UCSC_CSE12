.text
.global draw_pixel

#*****************************************************
# draw_pixel:
#  Given a coordinates y (row) in a1, and x (col) in
#  a2 sets corresponding value in memory to the color 
#  given by a0	
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#           a1 = y coordinate of pixel in format
#           a2 = x coordinate of pixel in format
#   Outputs:
#           No register outputs
#*****************************************************
draw_pixel:

    # Your code goes here
    li t0, 0xC00
    beq a1, zero, firstrow
loop:
    add t0, t0, 32
    addi t3, t3, 1
    blt t3, a1, loop
firstrow:
    add t0, t0, a2
    sb a0, 0(t0)
    add t0, zero, zero
    add t0, zero, zero
    add t3, zero, zero
    jr ra
    