#!/bin/bash

release_file=/etc/os-release

# if [ -d /etc/pacman.d ]
if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

# if [ -d /etc/apt ]
if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu,
    # Run the apt update command
    sudo apt update
    sudo apt-dist upgrade
fi

# if [ -d /etc/dnf ]
if grep -q "Rocky" $release_file
then
    # The host is based on RHEL
    # Run the dnf update command
    sudo dnf check-update
    sudo dnf upgrade --refresh
fi
