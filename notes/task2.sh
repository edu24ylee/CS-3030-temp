#! /usr/bin/bash

# ts=`date +%Y-%m-%d`
ts=`date +%Y-%m-%d`

log='names_'$ts'.log'

printf "What is your name?\n"
# Take in user input
read name

# printf "Hello %s.\n" $name >> $log # This prints the two names separately, that's not what we want
echo "Today is $ts" >> $log

./input_name.sh >> $log

exit 0