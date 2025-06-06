#!/bin/bash
#author: abhirami kannan
# purpose: create user, enable,disable

create_user() {
    username=$1
    if  id "$username" &> /dev/null ; then #no [] because its a command need to return 0 =success
        echo "username exists"
    else
        sudo useradd -m $username
        echo "$username  username created"
    fi
}

enable_user() {
    username=$1
    sudo usermod -U $username
    echo "$username username enabled"

}

disable_user() {
    username=$1
    sudo usermod -L $username
    echo "$username username disabled"
}


echo "user management"
echo "1. create user"
echo "2. enable user"
echo "3. disable user"

read -p "choose an option[1-3]" option
read -p username

case $option in
1) create_user "$username";;
2) enable_user "$username";;
3) disable_user "$username";;
*) echo "invalid option";;
esac


#call functions
# create_user "$username"
