#!/bin/bash
read -p "Enter the array length- " n

i=0
while [ $i -lt $n ]
do  
    read -p "Enter the Value for $i index - " arr[$i]
    i=$((i+1))
done
echo ${arr[@]}