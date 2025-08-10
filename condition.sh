#!/bin/bash

read -p "Search for file: " file

if [[ -a ${file} ]]; then 
    echo "$file exists"
    cat $file
else
    echo "$file dont exists"
fi
