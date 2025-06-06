#!/bin/bash

package=htop

sudo dnf install -y $package

if [ $? -eq 0 ]
then
	echo "The installation of $package was successful."
	echo "The new command is available here."
	which $package
else
	echo "$package failed to install."
fi
