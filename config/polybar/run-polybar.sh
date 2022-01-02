#!/usr/bin/env bash

# Terminate already running bar instances
#killall -q polybar
pkill polybar
pkill polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar -r bspwmbar

echo "Polybar Starter..."
