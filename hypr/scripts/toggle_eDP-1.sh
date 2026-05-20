#!/bin/bash

MONITOR="eDP-1"

if hyprctl monitors -j | jq -e \
  --arg name "$MONITOR" \
  '.[] | select(.name == $name and .disabled == false)' >/dev/null; then

  hyprctl eval "hl.monitor({ output = '$MONITOR', disabled = true })"
  notify-send "eDP-1 disabled!"
  echo "eDP-1 disabled!"
else
  hyprctl reload
  notify-send "eDP-1 enabled via 'hyprctl reload'"
  echo "eDP-1 enabled via 'hyprctl reload'"
fi
