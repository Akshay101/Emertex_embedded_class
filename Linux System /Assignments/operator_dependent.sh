#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 2nd 2023
Description: Write a script to perform arithmetic operation on digits of a given number
Sample execution: 

Test Case 1:
./operator_dependent.sh 1234+
Sum of digits = 10

Test Case 2:
./operator_dependent.sh
Error : Please pass the arguments through CL.
Usage : ./operator_dependent.sh 2345+

Documentation

# Main Program Starts from here

str=$@
opr=`echo ${str: -1}`
len=`expr ${#str} - 2`
tmp=`echo ${str:0:1}`

if [ $1 ]
then
    case $opr in
        +)
            for i in `seq 1 $len`
            do 
                digit=`echo ${str:$i:1}`
                tmp=`expr $tmp + $digit`
            done
            echo "Sum of digits = $tmp"
        ;;
        -)
            for i in `seq 1 $len`
            do 
                digit=`echo ${str:$i:1}`
                tmp=`expr $tmp - $digit`
            done
            echo "Subtraction of digits = $tmp"
        ;;
        /)
            for i in `seq 1 $len`
            do 
                digit=`echo ${str:$i:1}`
                tmp=`echo "scale=2;"$tmp/$digit" " | bc`
            done
            echo "Division of digits = $tmp"
        ;;
        x)
            for i in `seq 1 $len`
            do 
                digit=`echo ${str:$i:1}`
                tmp=$(($tmp*$digit)) 
            done
            echo "Multiplication  of digits = $tmp"
        ;;
        *)
            echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
        ;;

    esac
else
    echo "Error : Please pass the arguments through CL."
    echo "Usage : ./operator_dependent.sh 2345+"
fi
