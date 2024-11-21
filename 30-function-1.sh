#!/bin/bash

square(){
    local num=$1
    local res=$((num*num))
    echo "square is: $res"
}

square 10