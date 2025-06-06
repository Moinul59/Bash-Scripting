#!/bin/bash

package=notexist

sudo dnf install -y $package >> package_install_results.log

if [ $? -eq 0 ]
then
	echo "The installation of $package was successful."
	echo "The new command is available here:"
	which $package
else
	echo "$package failed to install." >> package_install_failure.log
fi
