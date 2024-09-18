#! /usr/bin/bash

dir=$HOME/bin

# -d of ls is for directories
if [[ -d "$dir" ]] && cd "$dir" ; then
    echo "Directory already exists"
    echo "I am at `pwd`"
else
    echo "Creating directory $dir"
    mkdir $dir && cd "$dir"
    echo "I am at `pwd`"
fi

exit 0;
