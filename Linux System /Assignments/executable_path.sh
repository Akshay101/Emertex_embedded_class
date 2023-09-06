#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 6th 2023
Description: Count the number of users with user IDs between given range.

Sample execution: 
1. ./executable_path.sh
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total - 2445


Documentation

# Main Program Starts from here

arr1=(`echo $PATH | tr ":" " "`)                    # Get all directories

for i in ${arr1[*]}                                 # Run loop for every directory
do
    cd $i                                           # change current directory 
    arr2=`ls`                                       # Get all files in the directory

    for j in ${arr2[*]}                             # Run loop for every file in directory
    do
        if [ -x $j ]                                # Check if the file is exicutable
        then
            count=$(($count + 1))                   # increase the counter by one if file is exicutable
        fi
    done
    total=$(($total + $count))                      # add the no of exicutable file  in all directory
    echo "Current dir: $i"                          # Print current directory
    echo "current count: $count"                    # Print the no of Exictable file in the respective directory
done
 echo "Total - $total"                              # Print total exicutable files

