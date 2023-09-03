#!/bin/bash

read -p "Give No :- " var
sum=1
for var in `seq $var`
do  
   sum=$((sum*var))
done
 echo "$sum"