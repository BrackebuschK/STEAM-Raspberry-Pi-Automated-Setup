#!/bin/bash

# Update and upgrade system packages
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
#sudo apt install rpi-update

# Perform firmware update
#sudo rpi-update -- took this off because it's a bad idea
#sudo rpi-eeprom-update -- thought about using this but decided not to

# Clean up unnecessary packages
sudo apt autoremove -y
sudo apt clean

# Reboot the system
sudo reboot