#!/bin/bash

# Update package repositories
sudo pacman -Syu

# Install VirtualBox
sudo pacman -S virtualbox

# Install VirtualBox Host Modules
sudo pacman -S linux$(uname -r | grep -o -E '[0-9]+' | head -n 2 | sed 'N;s/\n//')-virtualbox-host-modules

# Load Kernel Modules
sudo modprobe vboxdrv

# Add User to the vboxusers Group
sudo usermod -aG vboxusers $USER

# Restart the system or log out and log back in

# Start and Enable the vboxservice Service
sudo systemctl enable --now vboxservice.service

# Install VirtualBox Extension Pack (Optional)
# Download from https://www.virtualbox.org/wiki/Downloads
# Replace <version> with the downloaded version number
# sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-<version>.vbox-extpack

echo "VirtualBox installation completed. Please restart your system or log out and log back in for the changes to take effect."
