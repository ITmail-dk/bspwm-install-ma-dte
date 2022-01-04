#!/bin/bash

# APT UPDATE & APT UPGRADE
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Hugo Extended v0.91.2 - Install"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update && sudo apt upgrade -y

# Install Hugo Extended v0.91.2

cd  /tmp/
wget https://github.com/gohugoio/hugo/releases/download/v0.91.2/hugo_extended_0.91.2_Linux-64bit.deb

echo "Enter your user password, to continue."
sudo apt install -y /tmp/hugo_extended_0.91.2_Linux-64bit.deb


read -p "Hugo Extended v0.91.2 Install - ALL DONE - Press a key to Exit"