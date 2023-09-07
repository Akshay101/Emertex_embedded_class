#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 4th 2023
Description: Display the longest and shortest user-names on the system
Sample execution: 
Test Case 1. 
./largest_username.sh 
The Longest Name is: speech-dispatcher
The Shortest Name is:lp

Documentation

# Main Program Starts from here

data=`cat /etc/passwd | cut -d: -f1`                    # Get all usename
longest=0
shortest=5

for i in $data                                          # Run fo loop for each username
do
    len=${#i}                                           # Get length of username
    if (( len > longest ))                              # Check for longest username 
    then
        longest=$len
        longword=$i
    fi

    if (( len < shortest ))                             # Check for shortest username
    then
        shortest=$len
        shortword=$i
    fi
done  
echo "The Longest Name is: $longword"                   # Print Longest username
echo "The Shortest Name is: $shortword"                 # Print Shortest username