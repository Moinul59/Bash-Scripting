#!/bin/bash

directory=/notexist

# if [ -d $directory ]
#then 
#	echo "The directory $directory exists."
# else
#	echo "The directory $directory doesn't exists."
# fi

# The exit code will be 0 even if the directory doesn't exist cause even if the directory doesn't exist the else will still run, giving a exit code 0.
# echo "The exit code for this script run is $?"

# Correct way to write the script

if [ -d $directory ]
then
        echo "The directory $directory exists."
	exit 0
else
        echo "The directory $directory doesn't exists."
	exit 1
fi

echo "This exit code for this script run is: $?"
echo "You didn't see that statement."
echo "You didn't see this one either."
