#!/bin/bash

echo "Setting up dotfiles..."

# Link configurations
stow kitty mpv fastfetch

# Install packages
if [ -f "pkglist.txt" ]; then
  echo "Installing packages from list... 📦"
  sudo pacman -S --needed - <"pkglist.txt"
else
  echo "Error: pkglist.txt not found! ❌"
fi

# Restore GNOME settings
if [ -f "gnome-settings.ini" ]; then
  echo "Loading GNOME settings..."
  dconf load / <gnome-settings.ini
else
  echo "Warning: gnome-settings.ini not found, skipping..."
fi

echo "Done! All configurations are linked."
