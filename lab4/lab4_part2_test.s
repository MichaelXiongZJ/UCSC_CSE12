.text
.global main

main:
#*****************************************************
#   Args:
#        a0: 8 bit color value
#        a1: y coordinate of pixel
#        a2: x coordinate of pixel
#*****************************************************
    lb      a0, pixel_color
    li      a1, 15 # y coordinate = 15
    li      a2, 15 # x coordinate = 15

    jal     draw_pixel #Call to your code in lab4_part2.s

done:
    j .

.data
#*****************************************************
# Change this value for the color you calculate with 
# your student id number (see the Submission section   
# of Part 2 in the lab manual)
#*****************************************************
pixel_color:
    .byte 0x77 #<- Value to be changed
