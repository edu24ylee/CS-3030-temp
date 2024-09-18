#! /usr/bin/bash

##################################################
#   Help                                         #
##################################################

function Help
{
    echo "**************************************************"
    echo "* Welcome to the Help screen                     *"
    echo "* In this script you are able to choose between  *"
    echo "* 3 choices. The program runs 3 times unless a   *"
    echo "* valid option is selected.                      *"
    echo "* 0. Exit the program early.                     *"
    echo "* 1. Check what the USER name is.                *"
    echo "* 2. Check what the current working directory is.*"
    echo "* This is the end of the Help screen             *"
    echo "**************************************************"

}

##################################################
#   Task 1                                       #
##################################################
# if --help is passed in as a parameter
if [[ $1 == "--help" ]]
then
    # Call the help function
    Help
    exit 0
fi

number=3
guess=0


while [ "$guess" -ne $number ]
do
    # Display menu options
    echo
    echo "Choose an option below:"
    echo "0: Exit"
    echo "1: Check username"
    echo "2: Check working directory"
    read choice

    if [[ $choice == "0" ]]
    then
        echo
        echo "You are exiting the program."
        break
    elif [[ $choice == "1" ]]
    then
        echo
        echo "The current user name is '$USER'."
        break
    elif  [[ $choice == "2" ]]
    then
        echo
        echo "The current working directory is '$PWD'."
        break
    else
        echo
        echo "You did not enter a valid input."
        echo "Your input was: $choice."

        # Update guess
        guess=$((guess+1))
        echo
        echo "You were on attempt $guess. Please select a valid option."
    fi

done

echo
echo "Done."

exit 0