#!/bin/bash

MONITOR="eDP-1"

if hyprctl monitors -j | jq -e \
  --arg name "$MONITOR" \
  '.[] | select(.name == $name and .disabled == false)' >/dev/null; then
  notify-send "eDP-1 disabled!"
  hyprctl eval "hl.monitor({ output = '$MONITOR', disabled = true })"
else
  notify-send "eDP-1 enabled via 'hyprctl reload'"
  hyprctl reload
  # hyprctl eval "hl.monitor({ output = '$MONITOR', mode = '1366x768@60', position = 'auto-left', scale = 1, disabled = false})"
fi
