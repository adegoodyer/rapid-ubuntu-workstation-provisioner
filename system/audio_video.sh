#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of audio and video components
# Tested OS:        Ubuntu 20.04

# Install vlc media player
function install_vlc {
    print_heading "Installing VLC Player"
    sudo snap install vlc
    print_completion
}

# Install media codecs
function install_media_codecs {
    print_heading "Installing Media Codecs"
    sudo apt install ubuntu-restricted-extras -y
    print_completion
}