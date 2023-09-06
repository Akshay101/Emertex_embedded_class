#!/bin/bash

<<Documentation
Author : Akshay  
Date : Sep 6th 2023
Description: Count the number of users with user IDs between given range.
Sample execution: 
1. ./user_ids.sh
Total count of user ID between 500 to 10000 is: 2

2. ./user_ids.sh 0 100
Total count of user ID between 0 to 100 is : 3

3. ./user_ids.sh 100
Error : Please pass 2 arguments through CL.
Usage : ./user_ids.sh 100 200

4. ./user_ids.sh 200 100
Error : Invalid range. Please enter the valid range through CL.


Documentation

# Main Program Starts from here

data=`cat /etc/passwd | cut -d: -f3`                        # Get all user id's
arr=($@)
count=0                                                     # Variable for counting
min=500                                                     # Min range variable if argumant not passed
max=10000                                                   # Max range variable if argumant not passed

for i in $data                                              # Run loop for each user id
do
    if [ ${#arr[*]} -eq 2 ]                                 # Check if both argument are present
    then
        if [[ $1 -lt $2 ]]                                  # Check for valid range
        then
            if [ $i -gt $1 ] & [ $i -lt $2 ]                # Range check
            then 
                  count=$(($count+1))                       # Count
            fi 
        else
            echo "Error : Invalid range. Please enter the valid range through CL."      # Error if invalid range
            break                                                                       # Break loop
        fi

    elif [ ${#arr[*]} -eq 1 ]                               # Check for one argument                         
    then   
        echo "Error : Please pass 2 arguments through CL."
        echo "Usage : ./user_ids.sh 100 200"
        break                                               # Break loop

    elif [ ${#arr[*]} -eq 0 ]                               # If No arguments are passed
    then 
        if [ $i -gt $min ] & [ $i -lt $max ]                # Default range if no argument passed
        then
            count=$(($count+1))
        fi
    fi 
done

if [ $count -gt 0 ]                                             # Check for output
then
    echo $count                                                 # Print the output
fi