#!/bin/bash 

<<Documentation
Name : Akshay  
Date : Aug 20th 2023
Description: Bash Shell Script to print half pyramid using numbers
Sample Input: 5
Sample Output: 
1 
2 3 
4 5 6 
7 8 9 10 
11 12 13 14 15 

Documentation

# actual Program start from here

read -p"Enter the number :" rows                    # Get Number of Rows to be printed

number=1                                            # Variable for Number to print
i=1                                                 # Variable used in 1st for loop 
j=1                                                 # Variable used in 2nnd for loop

for i in `seq $rows`                                # 1st for loop will run for depending on Input           
do
  for j in `seq $i`                                 # 1st for loop will incriment each time             
  do
    echo -n "$number"                              # Print the given Number            
    number=$((number + 1))                          # Incriment the number by 1            
  done                                              # End 1st for loop
   
  echo                                              # Print new line
done                                                # End 2nd for loop