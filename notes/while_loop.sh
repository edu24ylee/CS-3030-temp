#! /usr/bin/bash

num=1
clue=5

# Test while oop
# Syntax: While <condition>
# do
#   while ($num < $clue) {print it; $num++}

while [[ $num -lt $clue ]] ; do
    echo num
    # When variables are numbers, we will use (()) instead of [[]]
    num=$(( num + 1 ))
done

exit 0
