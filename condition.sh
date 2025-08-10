#!/bin/bash

read -p "Search for file: " file

# -z return true if string is empty
if [[ -z ${file} ]]; then
    echo "filename cant be empty"
    exit 1
fi

# -r returns true if file is readable
# -s return true if file size is greater than zero
if [[ -r ${file} ]] && [[ -s ${file} ]]; then 
    echo "$file exists"
    cat $file
else
    echo "$file dont exists"
fi

# arithmetic operators
read -p "number 1: " num1
read -p "number 2: " num2

# -gt means grater than
# -eq means equal
if [[ $num1 -gt $num2 ]]; then 
    echo "$num1 is bigger than $num2"
elif [[ $num1 -eq $num2 ]]; then
    echo "$num2 is equal to $num1"
else
    echo "$num2 is bigger than $num1"
fi