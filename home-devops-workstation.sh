#!/bin/bash
. config/import_all.sh

# Author:           Ade Goodyer
# Created:          14/07/2020
# Description:      A quick installation script for my home DevOps workstation
# OS Version:       Ubuntu 20.04

# Preprep system for installation
system_update
system_upgrade

# Security
# enable_firewall
install_bitwarden
# install_vault

# Setup SSH
generate_new_ssh_id_rsa
backup_ssh_id_rsa

# System basics
install_media_codecs
install_chromium
remove_firefox
install_archive_utilities

# Setup terminal
enable_incremental_search
load_terminal_preferences
install_byobu

# Code editing essentials
install_vs_code
install_git

# DevOps tools
install_shellcheck
install_ansible
install docker
install_terraform

# Clean system before finishing
system_cleanup