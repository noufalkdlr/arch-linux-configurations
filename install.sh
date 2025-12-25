#!/bin/bash

echo "Setting up dotfiles..."

stow kitty mpv fastfetch

if [ -f "gnome-settings.ini" ]; then
  echo "Loading GNOME settings..."
  dconf load / <gnome-settings.ini
else
  echo "Warning: gnome-settings.ini not found, skipping..."
fi

echo "Done! All configurations are linked."
