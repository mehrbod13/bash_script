#!/bin/bash

read -p "Your name? " name

# ${variable,,} => lowercase string variable 
case ${name,,} in
    mehrbod) 
        echo "$name is ADMIN"
        ;;
    *)
        echo "$name is USER"
        ;;
esac