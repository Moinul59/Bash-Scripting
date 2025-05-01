#!/bin/bash
# Script to print all the files inside a directory

read -p "Enter directory: " dir

if [ -d $dir ]; then
   echo "Files in $dir:"
   for file in $dir/*; do
       if [ -f $file ]; then
	  echo $file
       fi
   done
fi   
