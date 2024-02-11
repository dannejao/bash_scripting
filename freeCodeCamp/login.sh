#!/bin/bash


case ${1,,} in
	daniel | administrator)
		echo "Hello, you are the boss here!"
		;;
	help)
		echo "You need to enter your username"
		;;
	*)
		echo "Hello there you are not the boss of me"

esac
