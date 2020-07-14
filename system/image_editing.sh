#!/bin/bash

# Author:           Ade Goodyer
# Created:          14/07/2020
# Description:      Collection of functions to manage installation of image editing applications
# Tested OS:        Ubuntu 20.04

# Install GIMP Image Editor
function install_gimp {
    print_heading "Installing GIMP Image Editor"
    sudo apt install gimp
    print_completion
}