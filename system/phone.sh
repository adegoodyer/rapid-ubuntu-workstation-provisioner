#!/bin/bash

# Author:           Ade Goodyer
# Created:          15/07/2020
# Description:      Collection of functions to manage installation of phone related utilities
# Tested OS:        Ubuntu 20.04

# Install GSConnect
function install_gsconnect {
    print_heading "Installing GSConnect"
    sudo apt install gnome-shell-extension-gsconnect -y
    print_completion
}