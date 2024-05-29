#!/bin/bash

# Get colors from pywal cache
source ~/.cache/shwal/colors.sh

# Set the path to your xmonad.hs file
xmonad_file="$HOME/.config/xmonad/xmonad.hs"

# Replace normalBorderColor and focusedBorderColor values in xmonad.hs
sed -i "s/myNormalBorderColor = \"#[0-9A-Fa-f]\{6\}\"/myNormalBorderColor = \"$color2\"/g" "$xmonad_file"
sed -i "s/myFocusedBorderColor = \"#[0-9A-Fa-f]\{6\}\"/myFocusedBorderColor = \"$foreground\"/g" "$xmonad_file"

xmonad --recompile
xmonad --restart
