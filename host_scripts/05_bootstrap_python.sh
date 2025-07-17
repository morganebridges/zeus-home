#!/bin/bash

# SUDO (super user do)
# apt update will update the package list 
# With apt, you can pass many arguments to the command for ease of operating on multiple packages
# apt install will install the package
# apt upgrade will upgrade all installed packages
# python3 is the Python 3 interpreter
# python3-pip is the package installer for Python 3
sudo apt update && sudo apt install -y python3 python3-pip && sudo apt upgrade -y