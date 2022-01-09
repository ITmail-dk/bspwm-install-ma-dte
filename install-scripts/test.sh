#!/bin/bash

(pv -n sudo apt update) 2>1 | dialog --gauge "apt update status" 6 80

(pv -n sudo apt upgrade -y) 2>1 | dialog --gauge "apt upgrade status" 6 80

(pv -n sudo apt install -y xorg x11-xserver-utils arandr autorandr dialog bspwm sxhkd sddm picom polybar xautolock i3lock-fancy network-manager kitty psmisc rofi pcmanfm tlp font-manager gvfs-backends nitrogen dunst smbclient emacs lxpolkit xbacklight lxappearance htop mc xarchiver mpv feh sxiv pulseaudio pulsemixer npm curl imagemagick scrot firefox-esr ranger neovim flameshot cmus ncmpcpp notify-osd neofetch flatpak cava obs-studio zsh git wireguard wireguard-tools libreoffice libreoffice-gtk3 libreoffice-style-breeze libreoffice-l10n-da inkscape gimp rawtherapee darktable okular) 2>1 | dialog --gauge "apt install software status" 6 80

. ~/bspwm-install-ma-dte/last-step-setup-menu.sh