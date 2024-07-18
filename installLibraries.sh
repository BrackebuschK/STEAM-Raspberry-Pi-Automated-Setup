#!/bin/bash

# Install various Python libraries
sudo pip3 install rpi_ws281x adafruit-circuitpython-neopixel --break-system-packages
sudo python3 -m pip install --force-reinstall adafruit-blinka --break-system-packages
sudo pip3 install adafruit-circuitpython-vl53l0x --break-system-packages
sudo pip3 install adafruit-circuitpython-as7341 --break-system-packages
sudo pip3 install adafruit-circuitpython-lsm9ds1 --break-system-packages
sudo pip3 install adafruit-circuitpython-busdevice --break-system-packages
sudo pip3 install adafruit-circuitpython-tca9548a --break-system-packages
sudo pip3 install adafruit-circuitpython-mcp230xx --break-system-packages
sudo pip3 install adafruit-circuitpython-ads7830 --break-system-packages
sudo pip3 install adafruit-circuitpython-mpr121 --break-system-packages
sudo pip install mfrc522-python --break-system-packages

# Install Mosquitto and MQTT libraries
sudo apt-get install mosquitto mosquitto-clients -y
pip3 install paho-mqtt --break-system-packages
