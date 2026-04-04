#!/bin/bash

echo "Creating symlinks from dotfiles to ~/.config"

ln -s ../Thunar/ ~/.config/
ln -s ../htop/ ~/.config/
ln -s ../hypr/ ~/.config/
ln -s ../kitty/ ~/.config/
ln -s ../nvim/ ~/.config/
ln -s ../tmux/ ~/.config/

echo "Creating symlinks from Scrips to dotfiles/Scripts"

ln -s ../Scripts/ ~
