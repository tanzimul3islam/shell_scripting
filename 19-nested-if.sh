#!/bin/bash

num1=15
num2=20
num3=25

if [ $num1 -ge $num2 ]; then 
    if [$num1 -ge $num3]; then
        echo "num1 $num1 is largest number"
    else 
        echo "num3 $num3 is largest number"
    fi
else
    if [ $num2 -ge $num3 ]; then
        echo "num2 $num2 is largest number"
    else
        echo "num3 $num3 is largest number"
    fi
fi