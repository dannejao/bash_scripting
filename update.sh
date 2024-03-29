#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
}

if grep -q "Arch" $release_file # -q står för quiet mdoe
then
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    check_exit_status    
fi

# Här letar vi efter Ubuntu/Debian/Kali
if grep -q "Ubuntu\|Debian\|Kali" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
    check_exit_status
fi