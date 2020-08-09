#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of browser applications
# Tested OS:        Ubuntu 20.04

# Install Google Chrome
function install_chrome {
    print_heading "Installing Google Chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    print_completion
}

# Install Chromium
function install_chromium {
    print_heading "Installing Chromium"
    sudo apt install chromium-browser -y
    print_completion
}

# Remove Firefox
function remove_firefox {
    print_heading "Removing Firefox"
    sudo apt purge -y firefox
    print_completion
}
