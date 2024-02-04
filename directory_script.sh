#!/bin/bash

# Exitcode bör ligga före echo statements.
# man kan även forca ändra exitcodes: exit 1, exit 0.
# forcar man exit så avslutar scriptet där, allt efteråt kommer ej köras.

directory=/etc/

if [ -d $directory ] # om det är TRUE, kör!
then
    echo "The exit code for this script run is $?"
    echo "The directory: $directory exists."
    exit 0
else
    echo "The exit code for this script run is $?"
    echo "the directory: $directory does not exist."
    exit 1
fi

# dessa kommer aldrig köras, eftersom exit bryter skriptet.
echo "dessa kommer ej med eftersom exit bryter skriptet."
echo "dessa kommer ej med eftersom exit bryter skriptet."
echo "dessa kommer ej med eftersom exit bryter skriptet."
