#!/usr/bin/env bash

set -e

echo "Starting dotfiles install..."

# Paths
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create config dirs
mkdir -p ~/.config
mkdir -p ~/.config/kitty
mkdir -p ~/.config/fastfetch

# Kitty
echo "Installing kitty config..."
ln -sf "$DOTFILES_DIR/kitty/kitty.conf" ~/.config/kitty/kitty.conf

# Fastfetch
echo "Installing fastfetch config..."
ln -sf "$DOTFILES_DIR/fastfetch/config.jsonc" ~/.config/fastfetch/config.jsonc

# Bash config
echo "Installing bash config..."
ln -sf "$DOTFILES_DIR/bashrc" ~/.bashrc

# Optional: icons/themes if you included them
if [ -d "$DOTFILES_DIR/.icons" ]; then
  ln -sf "$DOTFILES_DIR/.icons" ~/.icons
fi

if [ -d "$DOTFILES_DIR/.themes" ]; then
  ln -sf "$DOTFILES_DIR/.themes" ~/.themes
fi

echo "Done. Restart terminal or run: source ~/.bashrc"
