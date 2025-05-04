#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
     if [ $? -ne 0 ]
     then
	 echo "An error occurred, please check the $errorlog file."
     fi
}

# if [ -d /etc/pacman.d ]
if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    check_exit_status
fi

# if [ -d /etc/apt ]
if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu,
    # Run the apt update command
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status
    sudo apt-dist upgrade 1>>$logfile 2>>$errorlog
    check_exit_status
fi

# if [ -d /etc/dnf ]
if grep -q "Rocky" $release_file
then
    # The host is based on RHEL
    # Run the dnf update command
    sudo dnf check-update 1>>$logfile 2>>$errorlog
    check_exit_status
    sudo dnf -y upgrade --refresh 1>>$logfile 2>>$errorlog
    check_exit_status
fi
