#!/usr/bin/env bash

# Wofi Power Menu

# Entries with Icons
# You can change the icons to whatever you like.
# Make sure you have a font that supports them (e.g., Nerd Fonts).
entries="  Shutdown
  Reboot
  Log Out
  Lock Screen"

# Wofi command
# You can customize the wofi command as you like.
# For example, to change the position, width, or style.
wofi_command="wofi --dmenu --prompt 'Power Menu' --insensitive --height 100 --width 100 --location bottom-left"

# Pass the entries to wofi and capture the selection
selected=$(echo -e "$entries" | $wofi_command)

# Execute the command based on the selection
case "$selected" in
    "  Shutdown")
        systemctl poweroff
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "  Log Out")
        hyprctl dispatch exit
        ;;
    "  Lock Screen")
        hyprlock
        ;;
esac
