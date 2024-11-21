#!/bin/bash

read -p "is it morning?yes/no: " isMorning

case $isMorning in
yes| YES | y | Y ) echo "good morning";;
no | NO | n | N ) echo "good afternoon";;
*) echo "insert correct answer";;
esac