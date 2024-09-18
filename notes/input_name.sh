#! /usr/bin/bash

# Read and check input
echo "What is your name?"
# Read user input
read name

# Test if input is not "null"
if [[ -z "$name" ]] 
then
    echo "No name was entered."
    exit 1 # Fail Code
else
    echo "Your name is $name"
fi

exit 0 # Success code
