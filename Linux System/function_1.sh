#!/bin/bash

function display()
{
    echo $1
    echo $3
    echo $@
    echo $*
    echo $#

}

display 4 6 3 9
display $1 $2 $3
display 9 a hi hello