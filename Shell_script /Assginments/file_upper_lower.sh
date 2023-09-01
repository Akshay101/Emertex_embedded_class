#!/bin/bash

<<Documentation
Name : Akshay  
Date : Aug 30th 2023
Description: Write a script to rename a file/directory replaced by lower/upper case letters          
Sample execution: 

$ ./file_upper_lower.sh
Files are rename in lowercase and directories are renamed in upper case

Documentation

# Main Program Starts from here

arr=`ls`                                                    # Store all file and directories in array

for i in ${arr[@]}                                            # Run for loop for every element in array
do
   
    if [ -d $i ]                                             # check if the element is a directory
    then
         name=`echo "$i" | tr [:lower:] [:upper:]`          # genrate name from lower to upper
    elif [ -f $i ]                                          # Check if the element is a file
    then
        name=`echo "$i" | tr [:upper:] [:lower:]`           # genrate name from upper to lower
    fi
    mv "$i" "$name"                                         # change name
    echo "Files are rename in lowercase and directories are renamed in upper case" # Print the output
done