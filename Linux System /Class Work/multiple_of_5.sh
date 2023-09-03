#!/bin/bash

<<Documentaion
Name : Akshay  
Date : Aug 18th 2023
Description: To check Wether the number entered is multiple of 5
Sample Input: 15
Sample Output: Number is multiple of 5
Documentaion

read -p "Enter 1st Number :- " num

check=$((num%5))

if [ $check -eq 0 ]
then
    echo "Number is multiple of 5"
else
    echo "Number is Not multiple of 5"
fi