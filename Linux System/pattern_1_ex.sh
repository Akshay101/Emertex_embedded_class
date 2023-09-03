#!/bin/bash
read -p"Give Number of rows to be printed :-" rows  

number=0                                      
                                            
for i in `seq $rows`                                      
do
  number=$((number + 1))  
  for j in `seq $rows`                                     
  do
    echo -en "$number "                                                               
  done                                                                                     
  echo                                            
done                                             