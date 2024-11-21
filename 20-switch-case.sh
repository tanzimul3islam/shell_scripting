#!/bin/bash

read -p "is it morning?yes/no: " isMorning

case $isMorning in
yes) echo "good morning";;
no) echo "good afternoon";;
*) echo "insert correct answer";;
esac