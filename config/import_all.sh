#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Add reference to additional installation scripts here to be able to access them globally

# Variables
source config/variables.sh

# Helpers
source helpers/apt_shortcuts.sh
source helpers/essential_functions.sh
source helpers/terminal_outputs.sh

# Aliases
source config/aliases.sh

# Software Development
source dev/code_editors.sh
source dev/version_control.sh

# DevOps
source devops/command_line_tools.sh
source devops/configuration_management.sh
source devops/containers.sh
source devops/infrastructure_as_code.sh

# System
source system/audio_video.sh
source system/browser.sh
source system/image_editing.sh
source system/phone.sh
source system/security.sh
source system/terminal.sh
source system/utilities.sh
source system/ssh.sh