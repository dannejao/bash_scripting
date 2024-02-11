#!/bin/bash


name=$1
user=$(whoami)
date=$(date)
whereami=$(pwd)

if [ $# -ne 1 ]
then
    echo "Skicka med ett namn till skriptet."
    exit
fi

if [ "$name" == "Daniel" ]
then
    echo "Det är ju Dannejao!"
    exit
fi

echo "Good morning $name!!"
sleep 1
echo "You're looking good today $name!!"
sleep 1
echo -e "You have the best bear I've ever seen $name!!\n"
sleep 2

echo "You are currently logged in as $user"
echo "you are in the $whereami directory"
echo "and the date is $date"

