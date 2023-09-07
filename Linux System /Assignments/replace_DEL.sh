#!/bin/sh


<<Documentation
Author : Akshay  
Date : Sep 7th 2023
Description: Write a script to replace 20% lines in a C file randomly and replace it with the pattern
Sample execution: 

1. ./replace_DEL.sh main.c
Before replacing
#incude <stdio.h>
int main()
{
         printf(“Hello world\n”);
}
After replacing
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
2. ./replace_DEL.sh main1.c
Error : No such a file.
3. ./replace_DEL.sh main2.c
Error : main2.c is empty file. So can't replace the string.
4. ./replace_DEL.sh
Error : Please pass the file name through command line.

Documentation

# Main Program Starts from here
 

if [ $1 ]                                       # Check for command line arguments
then
    if [  -f $1 ]                               # Check if its a file 
    then
        len=`cat $1 | wc -l`                    # get the length of file
        var=$(($len / 5))                       # get 20% of lines
            if [ $len -gt 0 ]                   # check if the file has enough lines
            then 
                for i in `seq 0 $var`           # Run for loop fo 20% of line
                do
                    arr=`shuf -i 1-$len -n1`    # Genrate a random number below the length of file  
                    sed -i "$arr s/.*/<-------DELETE------>/" $1    # replace the line of file
                done
                cat $1                          # print the file
            else
                echo "Error : $1 is empty file. So can't replace the string."   # print Error
            fi
    else
        echo "Error : No such a file."          # Print the error
    fi
else
    echo "Error : Please pass the file name through command line."          # Print the error
fi
