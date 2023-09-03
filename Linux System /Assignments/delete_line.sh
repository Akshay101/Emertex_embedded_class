#!/bin/bash 

<<Documentation
Name : Akshay  
Date : Aug 26th 2023
Description: Bash Shell Script to delete empty lines in a file.
Sample execution: -
1. ./delete_empty_lines.sh file.txt
Empty lines are deleted
Hello
How
are
you?

Documentation

# actual Program start from here

if [ $1 ]
then
    echo "Empty lines are deleted"
    sed  -n '/^\s*$/!p' $1
else
    echo "Error: Please pass the file name through command line."
    
fi
    