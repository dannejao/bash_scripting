#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
    echo -e "\nWhat is your favorit Linux distro?"

    echo "1 - Arch"
    echo "2 - CentOS"
    echo "3 - Debian"
    echo "4 - Mint"
    echo "5 - Ubuntu"
    echo "6 - Something else.."
    echo -e "7 - Exit the script.\n"

    read distro;

    case $distro in
        1) echo "Arch is a rolling relase.";;
        2) echo "CentOS is popular in servers";;
        3) echo "Debian is a community distro";;
        4) echo "Mint is popular on desktops and laptops";;
        5) echo "Ubuntu is popular on both servers and computers";;
        6) echo "There are many distributions out there.";;
        7) finished=1 ;;
        *) echo "you didnt enter an appropriate choice."
    esac
done

echo "Thank you for using this script."
