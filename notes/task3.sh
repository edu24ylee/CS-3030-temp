#! /usr/bin/bash

printf "Enter your name:\n"
read name

if [[ -z $name ]] ; then
    echo "No name was entered" >&2
    # the >&2 is semantics, it prints to &2 (stderr) rather than stdout
    exit 1;
fi

printf "Hello, %s. \nLet's play a game. \n" $name

# Ask for two numbers neither of which is less than 10 or greater than 20
printf "Enter a number between 10 and 20: "
read number # captures the input

# Two bash commands have to be separated by semi-colons
if (( $number > 20 )); then 
    # integers in printf use %d
    printf "The number %d is too high\n" "$number" >&2
    exit 1;
elif (( $number < 10 )); then
    printf "The number %d is too low\n" "$number" >&2
    exit 1;
else
    printf "You entered the number %d which is valid.\n" "$number"
fi

exit 0;
