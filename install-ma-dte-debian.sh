#!/bin/bash
cd ~/bspwm-install-ma-dte

# Do, mkdir, copy, copy, echo files.
. ~/bspwm-install-ma-dte/install-scripts/mkdir-cp-git-chmod-echo-files.sh

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."

# Add Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-core-packages.sh

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."

# Add Pulseaudio to system startup as user.
systemctl --user enable pulseaudio

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."

# Last Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-software-last-packages.sh

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."

# Last step setup menu installing.
#. ~/bspwm-install-ma-dte/last-step-setup-menu.sh