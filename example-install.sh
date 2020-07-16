#!/bin/bash
source config/import_all.sh

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      A quick example installation script
# OS Version:       Ubuntu 20.04

# Step 1 - Prep
system_update
system_upgrade

# Step 2 - Basic Applications
install_chrome
remove_firefox

# Step 3 - Development Tools
install_vs_code

# Step 4 - Teardown
system_cleanup

# Additional Manual Steps
# https://www.tecmint.com/things-to-do-after-installing-ubuntu-20-04/

# Enable LivePatch
# Launch Chrome and login to sync bookmarks and passwords
# Sign in Snaps store
# Connect to online accounts (Settings > Online Accounts)
    # Ubuntu SSO
    # Google
# Set default applications (Settings > Default Applications)
# Enable additional drivers
# Add favourite apps to dock
    # Chrome
    # BitWarden
    # VS Code