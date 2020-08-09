#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of code editors
# Tested OS:        Ubuntu 20.04


# Install Visual Studio
function install_vs_code {
  # https://code.visualstudio.com/docs/setup/linux
  print_heading "Installing VS Code"
  
  # Manually add PPA
  print_info "Downloading Microsoft GPG key"
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  print_info "Installing Microsoft GPG key"
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

  # Update package cache and install
  print_info "Updating package cache"
  sudo apt-get install apt-transport-https
  sudo apt-get update
  print_info "Installing VS Code"
  sudo apt-get install code # or code-insiders
  
  # Remove microsoft gpg key
  print_info "Removing Microsoft GPG key"
  rm -rf packages.microsoft.gpg

  print_completion
}

# Install Visual Studio Code Extensions
function install_vs_code_extensions {
  print_heading "Installing VS Code Extensions"

  code --install-extension streetsidesoftware.code-spell-checker
  code --install-extension hashicorp.terraform
  code --install-extension ms-python.python

  print_completion
}