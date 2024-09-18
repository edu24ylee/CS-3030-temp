#! /usr/bin/bash

printf "Here is the home directory, $HOME: "
cd $HOME
ls -l

# Write a script that creates a directory called "bpl" inside of $HOME
# Populate this directory with two subdirectories called: bin and scripts
printf "\nCreating directory bpl inside $HOME . . . "
mkdir bpl
cd bpl
printf " done.\n"

printf "Creating subdirectories, bin and scripts, inside `pwd` . . . "
mkdir bin scripts # Create both subdirectories
printf " done.\n\n"

ls -l

printf "\nDeleting new subdirectories from `pwd` . . . "
rmdir bin scripts # Remove both subdirectories
cd ..
printf " done.\n"

printf "Deleting bpl directory from $HOME . . . "
rmdir bpl
printf " done.\n\n"

ls -l

exit 0