#!/bin/bash

username=moinul
password=pass123

echo "Enter username: "
read name

echo "Enter password: "
read pass

# Bash treats (( ... )) as arithmetic context.

# If your input strings happen to match exactly, Bash tries to resolve them as variables, 
# and string equality inside (( ... )) with == returns 1 (true) if they match — so the logic accidentally works for some cases.

# Bash internally treats any non-zero result in (( ... )) as true.

# Why it's not reliable or correct:

    # String comparison is undefined in (( ... )). It’s meant only for integers.

    # If the string can’t be interpreted as a number, you’ll get an error

# if (( name == username && pass == password ))

if [[ "$name" = "$username" && "$pass" = "$password" ]]
then 
	echo "Username and password matched. Login Successful🎉"
else
	echo "Login failed!"
fi
