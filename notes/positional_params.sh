#! /usr/bin/bash

# Print all positional parameters ($@)
echo "You are running with $@"

# Print total number of parameters ($#)
# If it doesn't count the porgram itself ($0)
echo "$0 fname lname"

if [[ $# -eq 2 ]]
then
    fname=$1
    lname=$2
else
    # echo "You entered an incorrect number of arguments. You supplied $# argument(s). This program takes in 2."
    # echo "Usage: $0 fname lname"
    # exit 1

    # Prompt user to enter parameters
    echo "Enter your first name:"
    read fname
    if [[ -z "$fname" ]]
    then 
        echo "No first name was entered"
        exit 1
    fi

    echo "Enter your last name:"
    read lname
    if [[ -z "$lname" ]]
    then 
        echo "No last name was entered"
        exit 1
    fi
fi

# Print values with ($)
echo "Hi, $fname $lname."

exit 0
