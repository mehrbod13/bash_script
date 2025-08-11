#!/bin/bash

array=(1 2 3 4 5 6 7 8 9)

# array variable is a pointer to first item
# [@] returns all items
for number in ${array[@]}
do 
    echo ${number}
done

# ranges like in python
# both start and end includes
for number in {1..9}
do 
    echo ${number}
done

# echo can print ranges
echo {1..9} # 1 2 3 4 5 6 7 8 9

# reverse counter
counter=9
while [[ $counter -gt 0 ]]
do 
    echo ${counter}
    ((counter--))
done

# use while loop to insure non-empty input
read -p "Your name? " name

while [[ -z $name ]]
do 
    read -p "Your name? " name
done

echo "Hi there, $name"

# until loop
# until loop is kinda opposite of while 
# loop runs in false condition and stops when condition becomes trues
counter=9
until [[ $counter -le 0 ]] # -le means lower or equal than
do
    echo ${counter}
    ((counter--))
done