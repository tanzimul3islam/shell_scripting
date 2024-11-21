#!/bin/bash

myArray=()
read -p "enter fruits: " -a myArray

echo "fruits are: ${myArray[@]}"