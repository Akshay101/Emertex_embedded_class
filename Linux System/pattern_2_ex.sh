
#!/bin/bash
read -p"Give Number of rows to be printed :-" rows  

number=1                                      
                                             
for i in `seq $rows`                                      
do
  for j in `seq $rows`                                     
  do
    echo -en "$number "                                  
    number=$((number + 1))                               
  done                                             
  number=1                                          
  echo                                            
done                                             