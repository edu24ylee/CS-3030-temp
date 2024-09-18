#! /usr/bin/bash

# Ask for two numbers neither of which is less than 10 or greater than 20
printf "Enter a number between 10 and 20: "
read number # captures the input

# Two bash commands have to be separated by semi-colons
if [[ "$number" -gt 20 ]]; then 
    # integers in printf use %d
    printf "The number %d is too high\n" "$number"
    exit 1;
elif [[ "$number" -lt 10 ]]; then
    printf "The number %d is too low\n" "$number"
    exit 1;
else
    printf "You entered the number %d which is valid.\n" "$number"
fi

exit 0;
