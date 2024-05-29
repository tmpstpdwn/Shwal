#!/bin/bash

# Path to Pywal's cache file containing colors
CACHE_FILE="$HOME/.cache/shwal/colors.sh"

# Path to Dunst configuration file
DUNST_CONFIG="$HOME/.config/dunst/dunstrc"

# Read colors from Pywal cache file
source $CACHE_FILE

killall dunst

# Update Dunst configuration with Pywal colors
sed -i "s/background = .*/background = \"$background\"/" $DUNST_CONFIG
sed -i "s/foreground = .*/foreground = \"$foreground\"/" $DUNST_CONFIG
sed -i "s/frame_color = .*/frame_color = \"$color1\"/" $DUNST_CONFIG

dunst&
