#!/bin/bash

package=htop

sudo dnf install -y $package

echo "The exit code for the package install is: $?"
