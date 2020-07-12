#!/bin/bash

# Author:           Ade Goodyer
# Created:          12/07/2020
# Description:      Collection of functions to manage installation of container related applications
# Tested OS:        Ubuntu 20.04


# Install Docker
function install_docker {
  print_heading "Installing Docker"
  ## Remove old installs
  sudo apt-get remove docker docker-engine docker.io containerd runc
  sudo apt-get update

  ## Repository setup
  sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  # Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
  sudo apt-key fingerprint 0EBFCD88
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

  ## Install Docker Engine
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io -y

  ## Verify Installation
  sudo docker run hello-world
  print_completion
}