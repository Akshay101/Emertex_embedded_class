#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 1st 2023
Description: Shell script to convert string lower to upper and upper to lower         
Sample execution: 
./upper_lower.sh file.txt
1 – Lower to Upper
2 – Upper to Lower
Please select option : 2

what is os?
what are the different os?
when is os used?
what is partition and its use?
how many partitions can be done?

Documentation

# Main Program Starts from here


if [ $1 ]                                                   # Check for command line argument
then

        if [ -f $1 ]                                        # Check if the argument is file
        then

            if [ -s $1 ]                                    # Check if the file is Empty
            then
                        echo "1 - For Lower to Upper"
                        echo "2 - For Upper to Lower"
                        read -p "Please select option :" no  # Read Input  

                case $no in                                 # Change Case depending upon Input 
                    1) 
                        cat "$1" | tr [:lower:] [:upper:]   # Change case to upper
                        
                    ;;
                    2) 
                        cat "$1" | tr [:upper:] [:lower:]   # Change case to lower
                      
                    ;;
                esac                                        # Close Case statement

            else
                echo "Error: No contents inside the file."  # Print Error if file empty
            fi
        fi
else
            echo "Error : Please pass the file name through command line."  # Print Error if argument is not pass
fi                                                                          # Enf If Loop