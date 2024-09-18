#! /usr/bin/bash

guess=1

while [[ guess -le 3 ]]
do
    printf "Enter the filename you are looking for in $PWD:\n"
    read infile

    # Now test if file exists
    if [[ -e $infile  ]]
    then
        printf "Found file '%s' in the directory\n" "$infile"
        break
    else
        printf "Could not find file %s in the directory\n\n" "'$infile'"
    fi

    # Update guess
    guess=$(( $guess + 1 ))
done

echo "Done."

exit 0