.text
.global main

main:
#*****************************************************
#   Args:
#        a0: 8 bit color value
#*****************************************************
    lb a0, background_color

    jal fill_bitmap #Call to your code in lab4_part1.s

done:
    j .

.data
#*****************************************************
# Change this value for the color you calculate with 
# your student id number (see the Submission section   
# of Part 1 in the lab manual)
#*****************************************************
background_color:
    .byte 0x88 # <- Value to be changed
