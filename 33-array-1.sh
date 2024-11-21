#!/bin/bash

fruits=("mango" "banana" "pineapple" "apple")

echo "friuts[0] : ${fruits[0]}"
echo "friuts[1] : ${fruits[1]}"
echo "friuts[2] : ${fruits[2]}"
echo "friuts[3] : ${fruits[3]}"
echo "all fruits: ${fruits[@]}"

fruits[1]="jackfruit"
fruits+=("grapes")

echo "all fruit: "
for fruit in ${fruits[@]}
do
    echo "fruit: $fruit"
done





