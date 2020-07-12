#!/bin/bash
. config/import_all.sh

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