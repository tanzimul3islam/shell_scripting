#!/bin/bash

string1="hello"
string2="world"

if [ $string1 = $string2 ] ; then
    echo "string1 is equal to string2"
else
    echo "string1 is not equal to string2"
fi
