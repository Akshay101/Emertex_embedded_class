#1/bin/bash

read -p "Enter values :" n
if [ $n -gt 5 ]
then 
    echo "$n is greter then 5"
else
    echo "$n is less then 5"
fi