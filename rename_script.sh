#!/bin/bash

for file in /usr/local/bin/*.sh
do
        mv "$file" "${file%.sh}"
done
