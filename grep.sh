#!/bin/bash

# -E(extend)
# -o(only matching): without this option grep prints whole line instead of just match 

echo "Phone Numbers:"
grep -Eo '(\+?[0-9]{1,2}[- ]?)?\(?[0-9]{3}\)?[- ]?[0-9]{3}[- ]?[0-9]{4}' sample.txt

echo "-------------------------"

echo "Emails:"
grep -Eo '[a-zA-Z0-9_.%+-]+\@[a-zA-Z0-9.-]+[.]\w+' sample.txt

echo "-------------------------"

echo "Urls:"
grep -E '\b((https|http)?:\/\/|www\.)[a-zA-Z0-9._-]+\.[a-zA-Z]+(\/[a-zA-Z0-9_-]*)?\b' sample.txt