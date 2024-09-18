#! /usr/bin/bash

# Print multiplication tables from 1 to 12
for (( i=1; i<=12; i++ ))
do
    for (( j=1; j<=12; j++ ))
    do
        num=$(( i*j ))
        echo -ne "$num \t"
    done
    echo
done

exit 0
