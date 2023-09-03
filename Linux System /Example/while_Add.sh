#!/bin/bash

read -p "Enter Value" n
i=1
sum=0
while [ $i -le $n ] 
do
    
    sum=$((sum+i))
    i=$((i+1))
done

echo "Hello Everyone $sum"