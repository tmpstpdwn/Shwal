#!/bin/bash

# Get colors from pywal cache
source ~/.cache/shwal/colors.sh

# Set the path to your mpv.conf file
mpv_file="$HOME/.config/mpv/mpv.conf"

# Replace background and foreground values in mpv.conf
sed -i "s/background-color=\"#[0-9A-Fa-f]\{6\}\"/background-color=\"$background\"/g" "$mpv_file"
sed -i "s/osd-back-color=\"#[0-9A-Fa-f]\{6\}\"/osd-back-color=\"$foreground\"/g" "$mpv_file"
