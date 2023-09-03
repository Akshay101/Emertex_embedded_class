#!/bin/sh


<<Documentation
Name : Akshay  
Date : Aug 24th 2023
Description: Bash Shell Script to do arithmetic calculations
Sample execution: 
    bash arithmatic_calc.sh 10 / 2
    Ans = 5
    bash arithmatic_calc.sh 10 X 2
    Ans = 20
    bash arithmatic_calc.sh 10 + 2
    Ans = 12
    bash arithmatic_calc.sh 10 - 2
    Ans = 8
    bash arithmatic_calc.sh 
    Error : Please pass the arguments through command line.
    bash arithmatic_calc.sh 10  2
    Please pass 3 arguments through command line.


Documentation

# Main Program Starts from here


if [ $1 ]
then
    case "$2" in                                                                                   # Case statement                
            x)                                                                                     # For Multiplication
               
                mul=`echo " scale=2; "$1*$3" " | bc`  
                echo "$1 $2 $3 = $mul"                                                             # Print the Output
            ;;  
            +)                                                                                     # Condition For Addition
                
                sum=`echo "scale=2; "$1+$3" " | bc`
                echo "$1 $2 $3 = $sum"                                                             # Print the Output
            ;;
            /)                                                                                     # Condition For Subtraction 
               div=`echo "scale=2;"$1/$3" " | bc`
               echo "$1 $2 $3 = "$div" "                                                           # Print the Output   
            ;;
            -)                                                                                     # Condition  For Division
                sub=`echo " scale=2; "$1-$3" " | bc`
                echo "$1 $2 $3 = $sub"                                                             # Print the Output  
            ;;
            *)
                 echo "Please pass 3 arguments."                                                   # Default Condition
                 echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
            ;;
    esac                                                                                           # End The Loop
else
   echo "Error : Please pass the arguments through command line."                                  # Error Message
   echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi