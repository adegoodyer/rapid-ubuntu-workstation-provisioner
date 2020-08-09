#!/bin.bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of security related applications
# Tested OS:        Ubuntu 20.04

# Install BitWarden
function install_bitwarden {
    print_heading "Installing BitWarden"
    sudo snap install bitwarden
    print_completion
}

# Install HashiCorp Vault
function install_vault {
  print_heading "Installing HasiCorp Vault"
  # Download binary and decompress
  cd ~/Downloads
  wget https://releases.hashicorp.com/vault/1.4.3/vault_1.4.3_linux_amd64.zip
  unzip vault_1.4.3_linux_amd64.zip
  # Move binary to PATH
  sudo mv ~/Downloads/vault /usr/local/bin/vault
  # Verify installation
  vault --version
  print_completion
}

# Enable firewall
function enable_firewall {
  print_heading "Enabling Firewall"
  sudo ufw enable
  print_completion
}