#!/bin/bash

read -p "Enter tyhe Value" Var

case $Var in
     2) 
        echo "You entered Interger"
     ;;
     3.2) 
        echo "You entered float"
     ;;
     a) 
        echo "You entered charecter"
     ;;
     +) 
        echo "You entered symbol"
     ;;
esac