#!/bin/bash

password="abc"

read -p "Enter Your Password: " userPassword

while [ $userPassword != $password ]

do
    echo "password incorrect"
    read -p "Enter Your Password: " userPassword
done
echo "password  is correct"