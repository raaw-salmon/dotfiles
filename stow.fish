#!/usr/bin/env fish
set DOTFILES (cd (dirname (status -f)); and pwd)

echo "==> Wende GNU Stow an..."

# Zielverzeichnisse sicherstellen
mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim

# Pakete stowed
stow -d "$DOTFILES" -t ~/.config/fish -R fish
stow -d "$DOTFILES" -t ~/.config/nvim -R nvim

echo "==> Fertig! Alle Symlinks wurden aktualisiert."
