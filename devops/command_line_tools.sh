#!/bin.bash

# Author:           Ade Goodyer
# Created:          13/07/2020
# Description:      Collection of functions to manage installation of command line tools
# Tested OS:        Ubuntu 20.04

# Install ShellCheck linter
function install_shellcheck {
    print_heading "Installing ShellCheck"
    sudo apt install shellcheck -y
    print_confirmation
}