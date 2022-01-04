#!/bin/bash

#APT UPDATE & APT UPGRADE
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT + Alacritty - Building and installing"
echo "     Enter your user password, to continue."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update && sudo apt upgrade -y
sudo apt install -y cmake cargo pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Create folders."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config/alacritty
mkdir ~/make

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     GIT Download."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cd ~/make/
git clone https://github.com/alacritty/alacritty.git
mv alacritty ~/make/
cd ~/make/alacritty

echo "-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Building."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-"

cargo build --release

echo "-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Buil DONE."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-"



echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Add Desktop Entry."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

read -p "Alacritty Install - ALL DONE - Press a key to Exit"


