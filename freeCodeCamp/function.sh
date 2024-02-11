#!/bin/bash


# Skapa en funktion vi kallar showuptime.

showuptime(){
	local up=$(uptime -p | cut -c4-)
	local since=$(uptime -s)
	cat << EOF
-----------
This machine has been up for ${up}
It has been running since: ${since}
-----------
EOF
}
# anropa funktionen
showuptime

