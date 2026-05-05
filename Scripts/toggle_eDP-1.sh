#!/bin/bash

MONITOR="eDP-1"

if hyprctl monitors -j | jq -e \
  --arg name "$MONITOR" \
  '.[] | select(.name == $name and .disabled == false)' >/dev/null; then
  hyprctl keyword monitor "$MONITOR,disable"
else
  hyprctl keyword monitor "$MONITOR,1366x768@60,auto-left,1"
fi
