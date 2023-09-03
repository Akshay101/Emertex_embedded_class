#!/bin/bash

<<Documentation
Name : Akshay  
Date : Aug 30th 2023
Description: Given album name and corresponding directory, 
             this scripts renames the jpg files with new name passed through command line
Sample execution: 
$ ls
DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg

1) ./rename_album.sh day_out
All .jpg files in current directory is renamed as
day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg

2) ./rename_album.sh
Error : Please pass the prefix name through command line.


Documentation

# Main Program Starts from here

arr=`ls *.jpg`                                                          # Store all jpg file in array

if [ $1 ]                                                               # Check for argument form command line
    then
        echo "All .jpg files in current directory is renamed as"            
        
        for i in $arr                                                   # Run for loop for every element in array
        do
            tmp=`echo "$i" | tr -cd [:digit:]`                            # fetch digit from file name
            name=`echo "$1$tmp.jpg"`
            mv "$i" "$name"                                          # Create new name using the fetched digit and argument  
            
        done                                                            # Close for loop

    else                                                                     
        echo "Error : Please pass the prefix name through command line."    # print if argument is not passed
fi                                                                          # close if loop
