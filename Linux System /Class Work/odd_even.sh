#!/bin/bash

<<Documentaion
Name : Akshay  
Date : Aug 18th 2023
Description: To check Wether product of 2 number is even or odd
Sample Input: 
Sample Output: 
Documentaion

read -p "Enter 1st Number :- " num1
read -p "Enter 2nd Number :- " num2

product=$((num1*num2))
check=$((product%2))

if [ $check -eq 0 ]
then
    echo "Product is Even"
else
    echo "Product is Odd"
fi