#!/bin/bash

# Update and install mu-editor
sudo apt update
sudo apt install mu-editor -y
mu-editor

# Update and upgrade system packages
sudo apt-get update
sudo apt-get -y upgrade

# Install Python pip and setuptools
sudo apt-get install python3-pip
sudo apt install --upgrade python3-setuptools

# Enable various Raspberry Pi interfaces
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_serial_hw 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_camera 0
sudo raspi-config nonint disable_raspi_config_at_boot 0

# Install necessary libraries and tools
sudo apt-get install -y i2c-tools libgpiod-dev python3-libgpiod

# Upgrade Python libraries
pip3 install --upgrade RPi.GPIO --break-system-packages
pip3 install --upgrade adafruit-blinka --break-system-packages

# Add dtoverlay to config.txt
echo "dtoverlay=spi1-3cs" | sudo tee -a /boot/config.txt

# Reboot the system
sudo reboot
