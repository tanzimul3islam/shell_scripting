#!/bin/bash

fruits=()

display_fruits(){
    echo "Current fruits: ${fruits[@]}"
    echo "total fruits: ${#fruits[@]}"
}

create_fruit(){
    local fruit
    read -p "Enter the fruit to add: " fruit
    fruits+=($fruit)
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

    local index=$((p-1))

    if [[ $index -ge 0 && $index -le ${#fruits[@]} ]] ; then

        local newFruit
        read -p "Enter new fruit name: " newFruit
        fruits[$index]=$newFruit
        echo "Fruits at position $p updated fruit $newFruit"
        display_fruits
    else
        echo "invalid index! try again."
    
    fi
}

delete_fruit(){
    local p
    read -p "Enter position of the fruit to delete: " p

    local index=$((p-1))    

    if [[ $index -ge 0 && $index -le ${#fruits[@]} ]] ; then
        unset fruits[$index]
        echo "Fruits at index $index deleted fruit ${fruits[$index]} "
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