#!/bin/bash

<<Documentaion
Name : Akshay  
Date : Aug 19th 2023
Description: To check Wether the triangle is right angle triangle
Sample Input: 3 4 5
Sample Output: Its a Right angle Triangel
Documentaion

read -p "Give 1st side of Triangle:-" a
read -p "Give 2nd side of Triangle:-" b
read -p "Give Hypotenus of Triangle:-" c

a=$((a*a))
b=$((b*b))
c=$((c*c))

if [ $((a+b)) -eq $c ]
then
    echo "Its a Right angle Triangel $a + $b = $c"
elif [ $((a+c)) -eq $b ]
then
     echo "Its a Right angle Triangel $a + $c = $b"
elif [ $((b+c)) -eq $a ]
then
     echo "Its a Right angle Triangel $b + $c = $a"
else
     echo "Its a Not a Right angle Triangel"
fi
