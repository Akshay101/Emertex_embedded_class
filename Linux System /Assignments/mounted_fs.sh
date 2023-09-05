#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 5th 2023
Description: Write a script to determine whether a given file system or mount point is mounted
Sample execution: 

1. ./mounted_fs.sh /dev/sda2
File-system /dev/sda2 is mounted on / and it is having 98%
used space with 3298220 KB free.
2. ./mounted_fs.sh /dev
/dev is not mounted.
3. ./mounted_fs.sh
Error : Please pass the name of the file-system through command line.

Documentation

# Main Program Starts from here


loc=`df|tail -1|tr -s ' '|cut -d ' ' -f6`               # get Mount location
file=`df|tail -1|tr -s ' '|cut -d ' ' -f1`              # get Name of file system
spc=`df|tail -1|tr -s ' '|cut -d ' ' -f5`               # get free space 
free_spc=`df|tail -1|tr -s ' '|cut -d ' ' -f4`          # Free space in KB    
  
if $(df | grep -q $1);                                  # Check if file system is mounted 
then
    if [ $1 ]                                           # Check for argument
    then
        echo "File-system $file is mounted on $loc and it is having $spc space with $free_spc KB free."
    else
        echo "Error : Please pass the name of the file-system through command line."    # Print error no arguments
    fi
else
    echo "$1 is not a mountpoint"                       # Print Error if file system is not mounted 
fi


        

