#!/bin/bash

# Author:           Ade Goodyer
# Created:          15/07/2020
# Description:      Collection of functions to manage installation of phone related utilities
# Tested OS:        Ubuntu 20.04

# Install GSConnect
# https://www.omgubuntu.co.uk/2018/11/connect-android-ubuntu-gsconnect
function install_gsconnect {
    # Enable universe repository if not enabled
    print_heading "Enabling Universe repository"
    sudo add-apt-repository -u universe -y

    # Install GSConnect
    print_heading "Installing GSConnect"
    sudo apt install gnome-shell-extension-gsconnect -y

    # Enable browser support (Firefox/Chromium)
    # print_heading "Enabling browser support (Firefox/Chromium)"
    # sudo apt install gnome-shell-extension-gsconnect-browsers

    print_completion
    print_info "You now need to install the KDE Connect app on your phone https://play.google.com/store/apps/details?id=org.kde.kdeconnect_tp&hl=en_GB"
    print_user_prompt "Its important this is done first and the connection is instigated from your phone to the PC and not vice-versa"
}