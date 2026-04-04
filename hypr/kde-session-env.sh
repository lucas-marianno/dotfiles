#!/bin/bash

# This script sources environment variables from a KDE session to make Hyprland compatible

export QT_QPA_PLATFORMTHEME="qt6ct"
export XDG_CURRENT_DESKTOP="KDE"
export XDG_SESSION_TYPE="wayland"
export XDG_SESSION_DESKTOP="KDE"
export XDG_SESSION_CLASS="user"
export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gnome-keyring/ssh

# KWallet related variables
export KWALLET_DAEMON_TIMEOUT=120
export KWALLET_DAEMON_BUSNAME=org.kde.KWallet

# Plasma 6-specific
export XDG_MENU_PREFIX=plasma-

# Ensure SSH socket is available
if [ -n "$SSH_AUTH_SOCK" ]; then
  export SSH_AUTH_SOCK
fi

