#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Add reference to additional installation scripts here to be able to access them globally

# Variables
. config/variables.sh

# Aliases
. config/aliases.sh

# Software Development
. dev/code_editors.sh
. dev/version_control.sh

# DevOps
. devops/command_line_tools.sh
. devops/configuration_management.sh
. devops/containers.sh
. devops/infrastructure_as_code.sh

# Helpers
. helpers/apt_shortcuts.sh
. helpers/essential_functions.sh
. helpers/terminal_outputs.sh

# System
. system/audio_video.sh
. system/browser.sh
. system/image_editing.sh
. system/phone.sh
. system/security.sh
. system/terminal.sh
. system/utilities.sh
. system/ssh.sh