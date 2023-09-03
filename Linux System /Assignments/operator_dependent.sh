#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 2nd 2023
Description: Write a script to perform arithmetic operation on digits of a given number
Sample execution: 

Test Case 1:
./operator_dependent.sh 1234+
Sum of digits = 10

Test Case 2:
./operator_dependent.sh
Error : Please pass the arguments through CL.
Usage : ./operator_dependent.sh 2345+

Documentation

# Main Program Starts from here

str=$@

if [ $1 ]
then
    echo ${str[@]: 1}
else
    echo "Error : Please pass the arguments through CL."
    echo "Usage : ./operator_dependent.sh 2345+"
fi