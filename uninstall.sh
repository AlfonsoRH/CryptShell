#!/bin/bash

set -e  # Detiene el script si hay algún error

echo "🚀 Desinstalando dependencias y configuraciones..."

# Eliminar paquetes instalados
sudo apt remove --purge -y \
    git curl wget unzip ripgrep fd-find \
    neovim zsh fzf figlet lolcat \
    fonts-powerline python3 python3-pip python3-venv \
    build-essential gcc g++ make

# Eliminar configuraciones de Zsh y Oh My Zsh
echo "⚙️ Eliminando configuraciones de Zsh y Oh My Zsh..."
rm -rf ~/.zshrc
rm -rf ~/.oh-my-zsh
rm -rf ~/.config/starship.toml
rm -rf ~/.config/nvim
rm -rf ~/CryptShell/nvim

# Eliminar configuración de Starship
echo "🎨 Eliminando configuración de Starship..."
rm -rf ~/.config/starship.toml

# Eliminar Zsh como shell predeterminado
echo "🐚 Restaurando shell predeterminado..."
chsh -s $(which bash)

# Eliminar LazyVim
echo "📦 Eliminando LazyVim..."
rm -rf ~/.config/nvim

# Eliminar paquetes de pip (si se instalaron)
echo "📦 Eliminando paquetes de Python..."
sudo pip3 freeze | xargs sudo pip3 uninstall -y

echo "✅ Desinstalación completada."

