#!/bin/bash                 

<<Documentation
Author: Akshay L
Date : Aug 21th 2023
Description: Bash Shell Script to add all elements of an array
Sample Input : 
                Enter Size of array:- 5 
                Enter Numbers:- 10 20 30 40 50
Sample Output: 150

Documentation

# actual Program start from here

read -p"Enter Size of array:- " N        # Read the Size of array
 
i=1                                      # Variable for while loop
sum=0                                    # variable for addition   

while [ $i -le $N ]                      # while loop will run for N of time       
do
  read -p"Enter Numbers:- " num          # Read elements of Array   
  sum=$((sum + num))                     # Add elements of array one by one
  i=$((i + 1))                           # Increment the value of i by 1
done                                     # close Wile loop

echo "Sum = $sum"                        # print the Addition