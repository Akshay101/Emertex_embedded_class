#!/bin/bash

<<Documentation
Name : Akshay  
Date : Aug 30th 2023
Description: Write script called say_hello, which will print greetings based on time          
Sample execution: 

1. When we start shell (whenever you opening new tab or terminal)

Good Morning user, Have nice day!
This is Thursday 08 in June of 2017 (10:44:10 AM)

Documentation

# Main Program Starts from here

hour=$(echo `date` | cut -d ' ' -f5 | cut -d ":" -f1)    # Get Hour from Date command
day=$(echo `date` | cut -d ' ' -f1)                      # Get day from Date command
month=$(echo `date` | cut -d ' ' -f3)                    # Get Month from Date command
date=$(echo `date` | cut -d ' ' -f2)                     # Get date from Date command
year=$(echo `date` | cut -d ' ' -f4)                     # Get year from Date command
time1=$(echo `date` | cut -d ' ' -f5)                    # Get current time from Date command
meridian=$(echo `date` | cut -d ' ' -f6)                 # Get AM - PM from Date command
user=`whoami`                                            # Get User Name


if [ $hour -gt 5 ] & [ $hour -lt 12 ];                   # Condition for 5 AM – 12 PM
then
    echo "Good Morning $user, Have nice day!"            # Print Greeting
elif [ $hour -gt 12 ] & [ $hour -lt 13 ];                # Condition for 12PM – 1PM
then
    echo "Good Noon $user, Have nice day!"               # Print Greeting
elif [ $hour -gt 13 ] & [ $hour -lt 17 ];                # Condition for 1PM – 5PM
then
    echo "Good afterNoon $user, Have nice day!"          # Print Greeting
elif [ $hour -gt 17 ] & [ $hour -lt 21 ];                # Condition for 5PM – 9PM
then 
    echo "Good evening $user, Have nice day!"            # Print Greeting
elif [ $hour -gt 21 ] & [ $hour -lt 5 ];                 # Condition for 9PM – 5AM
then
    echo "Good Night $user, Have nice day!"              # Print Greeting
fi      
echo "This is $day in $month of $year ($time1 $meridian)" # Print the Statement