#!/bin/bash 

<<Documentation
Name : Akshay  
Date : Aug 25th 2023
Description: Bash Shell Script to print Chess Board

Documentation

# actual Program start from here

for i in `seq 8`                             # Outer for loop for Rows
do
   for j in `seq 8`                          # Inner for loop for Collumns
   do
        tot=`expr $i + $j`                  
        tmp=`expr $tot % 2`                   # To print alternate white box

        if [ $tmp -eq 0 ] 
        then
            echo -e -n "\e[[47m" " "            # Print White Box
        else
            echo -e -n "\e[[40m" " "            # Print Black Box
        fi
  done
 echo -e -n "\e[[00m" " "                      # set back background colour to black
 echo ""                                    # print the new line
done
