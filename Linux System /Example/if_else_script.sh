#1/bin/bash

read -p "Enter values :" n
if [ $n -gt 5 ]
then 
    echo "$n is greter then 5"
elif [ $n -lt 5 ]
then    
    echo "$n is less then 5"
elif [ $n -eq 5 ]
then
     echo "$n is equal to 5"
fi