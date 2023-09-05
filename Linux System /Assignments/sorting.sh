#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 4th 2023
Description: Write a script to sort a given number in ascending or descending order
Sample execution: 
Test Case 1: 
./sorting.sh -a 5 4 6 2 3 8 9 7 1
Ascending order of array is 1 2 3 4 5 6 7 8 9
Test Case 2: 
./sorting.sh -d 5 4 6 2 3 8 9 7 1
Descending order of array is 9 8 6 5 4 3 2 1

Documentation

# Main Program Starts from here

numbers=($@)                                                    # get all command line arguments
option=${numbers[0]}                                            # get the option wether to sort ascending or dcending


function sorting_arr()                                          
{                                                             # Create a function to sort Numbers
    case $option in                                           # Check for aascending or dcending
      -d)                                                     # Exicute if options is -d i.e dcending
          for (( i=1 ; i < ${#numbers[@]}; i++ )) 
          do
              for (( j=1 ; j < ${#numbers[@]}; j++ )) 
              do
                if [[ ${numbers[$j]} -lt  ${numbers[$i]} ]]
                then
                  tmp=${numbers[$i]}
                  numbers[$i]=${numbers[$j]}
                  numbers[$j]=${tmp}
                fi
              done
          done
          arr=(${numbers[@]:1})
          echo "Descending  order of array is"  ${arr[@]}
        
        ;;
      -a)                                                     # Exicute if options is -a i.e ascending
          for (( i=1 ; i < ${#numbers[@]}; i++ )) 
          do
              for (( j=1 ; j < ${#numbers[@]}; j++ )) 
              do
                if [[ ${numbers[$j]} -gt  ${numbers[$i]} ]]
                then
                  tmp=${numbers[$i]}
                  numbers[$i]=${numbers[$j]}
                  numbers[$j]=${tmp}
                fi
              done
          done
          arr=(${numbers[@]:1})
          echo "Ascending order of array is" ${arr[@]}
        ;;
        *)
          echo "Error : Please pass the choice."                                  # Print Error if option is missing
          echo "Usage : ./sorting -a/-d 4 23 5 6 3"
        ;;
    esac
}

if [ $1 ]                                                                         # Check for arguments
then
    sorting_arr
else
    echo "Error : Please pass the argument through command line."                 # Print Error if arguments are missing
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
fi 
