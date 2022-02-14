#!/bin/bash

#cd ~/bspwm-install-ma-dte

# Do, mkdir, copy, copy, echo files.
. $HOME/bspwm-install-ma-dte/install-scripts/mkdir-cp-git-chmod-echo-files.sh

# Add Software & Packages.
. $HOME/bspwm-install-ma-dte/install-scripts/apt-install-core-packages.sh

# Add Pulseaudio to system startup as user.
systemctl --user enable pulseaudio

# Last Software & Packages.
. $HOME/bspwm-install-ma-dte/install-scripts/apt-install-software-last-packages.sh

# Last step setup menu installing.
#. $HOME/bspwm-install-ma-dte/last-step-setup-menu.sh
