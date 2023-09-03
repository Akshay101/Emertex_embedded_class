#!/bin/bash

function add()
{
    if [ $# -ge 2 ]
    then
        sum=`expr $1 + $2`
        echo "sum=$sum"
    else
        echo "Pass 2 arguments:-"
    fi 
        echo "Adition succes"
}
 
 add 3 2