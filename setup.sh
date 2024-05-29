#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -ne "[ ] Installing shwal"
# Ensure the target directory exists and move the shwal script
mkdir -p "$HOME/.local/bin"
mv "$SCRIPT_DIR/shwal/shwal" "$HOME/.local/bin"
if [ $? -eq 0 ]; then
    echo -ne "\r[*] Installing shwal"
else
    echo -e "\r[ ] Installing shwal failed"
    exit 1
fi

echo -ne "[ ] Installing configs"
# Ensure the target directory exists and move the config files
mkdir -p "$HOME/.config/shwal"

mv "$SCRIPT_DIR/.config/shwal/"* "$HOME/.config/shwal"
if [ $? -eq 0 ]; then
    echo -ne "\r[*] Installing configs"
else
    echo -e "\r[ ] Installing configs failed"
    exit 1
fi

echo "[*] Installation success. Make sure \$HOME/.local/bin is in \$PATH."
