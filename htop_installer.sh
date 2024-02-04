#!/bin/bash

command=htop

if command -v "$command" &>/dev/null
then
	echo "$command is available, lets run it."
else
	echo "$command is NOT available, installing it.."
	sudo apt update && sudo apt install -y $command
fi

$command	# kör htop direkt efter vi installerat det.

