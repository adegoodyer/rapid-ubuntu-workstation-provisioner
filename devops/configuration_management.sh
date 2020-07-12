#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of configuration management tools
# Tested OS:        Ubuntu 20.04


# Install Ansible
function install_ansible {
  print_heading "Installing Ansible"
  sudo apt update
  sudo apt install software-properties-common -y
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt install ansible -y
  print_completion
}