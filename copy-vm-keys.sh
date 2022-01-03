#!/bin/bash

cd ~/bspwm-install-ma-dte/

mv ~/.config/sxhkd/sxhkdrc sxhkdrc-org
cp ~/bspwm-install-ma-dte/config/sxhkd/sxhkdrc-vm ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/sxhkd/sxhkdrc

sudo reboot