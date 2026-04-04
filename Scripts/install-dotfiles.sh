#!/bin/bash

echo "Creating symlinks from dotfiles to ~/.config"



ln -s $(pwd)/Thunar/ ~/.config/
ln -s $(pwd)/htop/ ~/.config/
ln -s $(pwd)/hypr/ ~/.config/
ln -s $(pwd)/kitty/ ~/.config/
ln -s $(pwd)/nvim/ ~/.config/
ln -s $(pwd)/tmux/ ~/.config/

echo "Creating symlinks from Scrips to dotfiles/Scripts"

ln -s $(pwd)/Scripts/ ~/

echo "Creating symlink to ~/.bashrc"

ln -s $(pwd)/.bashrc ~/
