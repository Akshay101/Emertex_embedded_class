#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 2nd 2023
Description: Write a script to print the length of each and every string using arrays          
Sample execution: 

Test Case 1:
./string_length.sh hello hey how are you?
Length of string (hello) - 5
Length of string (hai) - 3
Length of string (how) - 3
Length of string (are) - 3
Length of string (you?) - 4

Test Case 2:
./string_length.sh
Error : Please pass the arguments through command-line.

Documentation

# Main Program Starts from here

arr=$@                                                          # Read all Command line arguments

if [ $1 ]                                                       # Check if command line arguments is Passed?
then
    for i in $arr                                               # Run for loop for each element in array
    do 
        echo "Length of string ($i) - ${#i}"                    # Print string Length
    done
else
    echo "Error : Please pass the arguments through command-line."  # If command line arguments are not passed give error
fi                                                                  # Close if loop                