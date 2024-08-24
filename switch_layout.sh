#!/bin/bash

# This script automatically cycles through US, Croatian, and German keyboard layouts

# Get the current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Switch to the next layout based on the current layout
if [ "$current_layout" == "us" ]; then
    setxkbmap hr
    notify-send "Switched to Croatian (hr) layout."
elif [ "$current_layout" == "hr" ]; then
    setxkbmap de
    notify-send "Switched to German (de) layout."
elif [ "$current_layout" == "de" ]; then
    setxkbmap us
    notify-send "Switched to US (us) layout."
else
    setxkbmap us
    notify-send "Unknown layout. Defaulting to US (us) layout."
fi
