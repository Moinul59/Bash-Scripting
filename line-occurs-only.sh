#! /usr/bin/bash

# Prints all lines that from filename.txt that occur only once.

awk '
{
    count[$0]++
}
END {
    for (line in count) {
        if (count[line] == 1) {
            print line
        }
    }
}' filename.txt

