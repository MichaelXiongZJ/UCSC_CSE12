.text
.global fill_bitmap

#*****************************************************
# fill_bitmap: 
#  Given a color, will fill the bitmap display with that color.
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#   Outputs:
#           No register outputs
#*****************************************************
fill_bitmap:

    # Your code goes here
    li t0, 0xC00
    addi t1, t0, 1024
loop:
    sb a0, 0(t0)
    addi t0, t0, 1
    blt t0, t1, loop
    jr      ra
