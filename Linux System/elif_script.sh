#1/bin/bash

read -p "Enter values :" n
if [ $n -gt 5 & $n -lt 10 ]
then 
    echo "$n is between 5 and 10"
else 
    echo "$n is not between 5 and 10"
fi