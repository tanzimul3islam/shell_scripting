#!/bin/bash

filename="fruits.csv"

touch $filename

display_fruits(){
    echo "Current fruits:"
    if [[ -s $filename ]] ; then
        cat $filename
    else
        echo "no fruits in the list"
    fi
    echo "Total fruits: $( wc -l < $filename )"
}

create_fruit(){
    declare -A fruit
    echo "Enter the fruit to add"
    read -p "Enter the fruit name : " fruit[name]
    read -p "Enter the fruit id : " fruit[id]
    read -p "Enter the fruit price : " fruit[price]
    echo "${fruit[id]}  ${fruit[name]}    ${fruit[price]}" >> $filename
    echo "$fruit added"
    display_fruits
}

read_fruits(){
    echo "Reading all fruits: "
    display_fruits
}

update_fruit(){
    local p
    read -p "Enter position of the fruit to update: " p


    if [[ $p -ge 1 && $p -le $( wc -l < $filename ) ]] ; then

        declare -A fruit
        echo "Enter the fruit to update"
        read -p "Enter the fruit name : " fruit[name]
        read -p "Enter the fruit id : " fruit[id]
        read -p "Enter the fruit price : " fruit[price]

        sed -i "${p}s/.*/${fruit[id]}  ${fruit[name]}    ${fruit[price]}/" $filename

        echo "Fruits at position $p updated fruit ${fruit[name]}"
        display_fruits
    else
        echo "invalid index! try again."
    
    fi
}

delete_fruit(){
    local p
    read -p "Enter position of the fruit to delete: " p
   

    if [[ $p -ge 1 && $p -le $( wc -l < $filename ) ]] ; then
        sed -i "${p}d" $filename
        echo "Fruits at position $p deleted"
        display_fruits
    else
        echo "invalid index! try again."
    
    fi
}

while true;

do
    echo "-----------------------------------------"
    echo "Choose an operation"
    echo "1. Create (add a fruit)"
    echo "2. Read (display all fruits)"
    echo "3. Update (edit a fruit)"
    echo "4. Delete (remove a fruit)"
    echo "5. Exit"
    echo "-----------------------------------------"

    read choice

    case $choice in
    1) create_fruit ;;
    2) read_fruits ;;
    3) update_fruit ;;
    4) delete_fruit ;;
    5) echo "good bye!"; break;;
    *) echo "invalid choice,please try again.";;
    esac
done



