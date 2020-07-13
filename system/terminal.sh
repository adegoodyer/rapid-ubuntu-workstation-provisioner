#!/bin.bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage the behaviour of the terminal
# Tested OS:        Ubuntu 20.04

# Enable BASH incremental history search
function enable_incremental_search {
    sudo echo '"\e[A": history-search-backward
    "\e[B": history-search-forward
    "\e[C": forward-char
    "\e[D": backward-char' >> ~/.inputrc
}

# Install Byobu
function install_byobu {
  print_heading "Installing Byobu"
  sudo apt install byobu -y
  print_completion
}

# Backing up, resetting and restoring GNOME Terminal preferences using dconf
# https://askubuntu.com/questions/967517/backup-gnome-terminal

# Backup GNOME terminal settings
function backup_terminal_preferences {
  print_heading "Backing up GNOME Terminal preferences"
  dconf dump /org/gnome/terminal/ > ~/gnome_terminal_settings_backup.txt
  print_info "Backed up to ~/gnome_terminal_settings_backup.txt"
  print_completion
}

