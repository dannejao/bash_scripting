#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file # -q står för quiet mdoe
then
    sudo pacman -Syu
fi

# Här letar vi efter Ubuntu/Debian/Kali
if grep -q "Ubuntu\|Debian\|Kali" $release_file
then
    sudo apt update # uppdatera packet index
    sudo apt dist-upgrade -y
    echo -e "#########################\n"
    
    echo "uppdaterad och klar, exit code: $?"
fi