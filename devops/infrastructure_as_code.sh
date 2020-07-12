#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of Infrastructure as Code based tools
# Tested OS:        Ubuntu 20.04


# Install Terraform
function install_terraform {
  print_heading "Installing Terraform"
  
  # Download binary and decompress
  print_info "Download binary and decompress"
  # "https://www.terraform.io/downloads.html for up-to-date link"
  cd ~/Downloads && wget https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_linux_amd64.zip
  unzip terraform_0.12.28_linux_amd64.zip
  
  # Move binary to PATH
  print_info "Move binary to PATH folder"
  sudo mv ~/Downloads/terraform /usr/local/bin/terraform
  
  # Verify installation
  terraform --version
  print_completion
}