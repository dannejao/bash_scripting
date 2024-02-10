#!/bin/bash


lines=$(ls -lh $1 | wc -l)

# Kollar ifall antalet argument som tas  emot INTE är likamed 1.
# "$#" betyder antal argument.
if [ $# -ne 1 ]
then
    echo "This script requires exactly one directory path passed to it."
    echo "Please try again."
    exit 1
fi

echo "you have $(($lines-1)) objects in this directory."
