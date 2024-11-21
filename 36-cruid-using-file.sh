#!/bin/bash

filename="fruits.txt"

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
    local fruit
    read -p "Enter the fruit to add: " fruit
    echo "$fruit" >> $filename
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

        local newFruit
        read -p "Enter new fruit name: " newFruit

        sed -i "${p}s/.*/$newFruit/" $filename

        echo "Fruits at position $p updated fruit $newFruit"
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



