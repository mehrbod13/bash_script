#!/bin/bash

echo "File name is $0"

arr=(1 2 3 4 5 6 7 8)

echo "First item in array is ${arr[0]}"
echo "Last item in array is ${arr[-1]}"
echo "arr size is ${#arr[@]}"
echo "arr[${#arr[@]}] = ${arr[@]}"

# array slice start:length
echo "arr[1:3] = ${arr[@]:1:2}"

# exclude first item
echo "arr[1:] = ${arr[@]:1}"

# slice 3 item from first
echo "arr[:3] = ${arr[@]::3}"

# slice 3 item from last 
# !!! (with space) means start 3 from the end.
echo "arr[-3:] = ${arr[@]: -3}"


# String Slicing
# start:length
string="ABCDEFG"

# exclude first item
echo "string[1:] = ${string:1}"

# if length exceeds returns maximum length
echo "string[:10] = ${string::10}"

