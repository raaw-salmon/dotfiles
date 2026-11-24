# In dein Dotfiles-Verzeichnis wechseln
cd ~/dotfiles

# 1. Zielordner erstellen (falls noch nicht vorhanden)
mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim

# 2. Stow ausführen (-R = Restow/Aktualisieren, -v = verbose)
stow -d ~/dotfiles -t ~/.config/fish -R fish
stow -d ~/dotfiles -t ~/.config/nvim -R nvim
