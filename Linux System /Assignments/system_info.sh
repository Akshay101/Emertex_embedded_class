#!/bin/sh


<<Documentation
Author : Akshay  
Date : Sep 5th 2023
Description: Write a script to print system information using commands

Sample execution: -
./system_info.sh
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process.
Enter the choice : 2
Your shell directory is /bin/bash
Do you want to continue (y/n) ? y

Documentation

# Main Program Starts from here

function options()                                              
{                                                           # Print all availabel options
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home directory"
    echo "4. OS name & version"
    echo "5. Current working directory" 
    echo "6. Number of users logged in" 
    echo "7. Show all available shells in your system"
    echo "8. Hard disk information"
    echo "9. CPU information."
    echo "10. Memory Informations"
    echo "11. File system information."
    echo "12. Currently running process."

    read -p "Enter the choice : " choice                     # Get Options
    out $choice
}
function out()                  
{                                                           # Depending on options print the data
    case $choice in
        1)
            whoami
        ;;
        2)
            dire=`pwd`
            echo "Your shell directory is $dire"
        ;;
        3)
            user=`whoami`
            eval echo ~$user  
        ;;
        4)
            grep -E '^(VERSION|NAME)=' /etc/os-release
        ;;
        5)
            dire=`pwd`
        ;;
        6)
            Num_usr=`users`
            echo ${#Num_usr[@]}
        ;;
        7)
             cat /etc/shells
        ;;
        8)
            df -h /dev/sda2
        ;;
        9)
            cat /proc/cpuinfo | grep 'vendor' | uniq
            cat /proc/cpuinfo | grep 'model name' | uniq  
        ;;
        10)
            cat /proc/meminfo | grep 'MemTotal' | uniq
            cat /proc/meminfo | grep 'MemFree' | uniq
            cat /proc/meminfo | grep 'MemAvailable' | uniq
        ;;
        11)
            df
        ;;
        12)
            ps
        ;;
        *)
            echo "Error : Invalid option, please enter valid option"        # print error if option is no valid
        ;;
    esac
}

options                                                     # call the function

for ((;;))                                                  # Get infinite loop
do
    read -p "Do you want to continue (y/n) ? " var          # Ask if user wants to continue
    case $var in                                            # If yes i.e y
        y)
            options
            out
        ;;
        n)                                                  # If No i.e n break loop
            echo "Closing..."
            break
        ;;
    esac
done