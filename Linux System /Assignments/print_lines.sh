#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 3nd 2023
Description: Write script to print contents of 
             file from given line number to next given number of lines.

Sample execution: 

1. ./print_lines.sh 5 3 myfile.txt
line number 5
line number 6
line number 7

2. ./print_lines.sh myfile.txt
Error: arguments missing!
Usage: ./file_filter.sh start_line upto_line filename
For eg. ./file_filter.sh 5 5 <file>


3. ./print_lines.sh 5 10 myfile.txt
Error: data.txt is having only 10 lines. file should have atleast 14 lines



Documentation

# Main Program Starts from here


if [ $3 ]                                                       # Check for all arguments
then
        max_lines=`wc -l < $3`                                  # Read total no of lines
        lines=$(($1+$2-1))                              

    if [ $max_lines -gt $lines ]                                # Check if file have enough lines
    then
        head -$lines $3 | tail -$2                              # Print the lines depanding on Input
    else   
        echo "Error: data.txt is having only 10 lines. file should have atleast $lines lines"    # Error if not enough lines
    fi
else
    echo "Error: arguments missing!"                                # Give error if not enough arguments
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
fi