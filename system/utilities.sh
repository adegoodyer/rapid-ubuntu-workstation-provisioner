#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage the installation of system utilities
# Tested OS:        Ubuntu 20.04

# Additional archive utilities
function install_archive_utilities {
  print_heading "Installing Archive Utilities (7zip, rar)"
  sudo apt install rar unrar p7zip-full p7zip-rar -y
}

