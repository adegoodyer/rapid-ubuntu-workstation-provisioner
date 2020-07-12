#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of code editors
# Tested OS:        Ubuntu 20.04


# Install Visual Studio
function install_vs_code {
  print_heading "Installing VS Code"
  # sudo snap install --classic code
  
  # ERROR: Installs okay but crashes when opening folders or saving
  prompt_user "Snap install has issues so download .deb file and install manually - https://code.visualstudio.com/docs/setup/linux"
  
  print_error
}