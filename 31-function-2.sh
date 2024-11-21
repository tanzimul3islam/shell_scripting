#!/bin/bash

sum(){
    local num1=$1
    local num2=$2
    local res=$((num1+num2))
    echo $res
}

res=$(sum 5 10)
echo "Sum is : $res"