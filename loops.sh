#!/bin/bash

filename=testfile
while [ -f ~/bash_scripting/$filename ] # kör så länge det är TRUE
do
    echo "$(date), The file exists."
    sleep 5
done

echo "$(date), The file no longer exists..."