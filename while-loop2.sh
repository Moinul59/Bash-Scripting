#!/bin/bash

while [ -f ~/bash-scripting/testfile ]
do
	echo "As of $(date), the test file exists."
	sleep 5
done

echo "As of $(date), he file no longer exists. Exiting."
