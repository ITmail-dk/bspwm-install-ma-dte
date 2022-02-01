#!/usr/bin/env bash

# Terminate already running bar instances
#killall -q polybar
pkill polybar
pkill polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Run Polybar
#polybar -r bspwmbar &
#
#if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
#	polybar external -c $(dirname $0)/config-external &
#fi