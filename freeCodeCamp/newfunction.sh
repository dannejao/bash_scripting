#!/bin/bash

showname(){
	
	echo hello $1

	# om argumentet är daniel så blir exit code 0. Annars sätter vi exit code till 1. 
	if [ ${1,,} = daniel ]; then
		return 0
	else
		return 1
	fi
}

# skriptet tar emot ett argument.
showname $1

# om exit code är 1, skrivs detta ut:
if [ $? = 1 ]; then
	echo "Someone unknow called the function!"
fi

