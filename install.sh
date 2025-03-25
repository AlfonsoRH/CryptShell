#!/bin/bash

set -e  # Detiene el script si hay algún error

echo "🚀 Instalando dependencias necesarias..."
sudo apt update && sudo apt install -y \
    git curl wget unzip ripgrep fd-find \
    build-essential gcc g++ make \
    python3 python3-pip python3-venv \
    neovim zsh fzf

echo "🎨 Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "🐚 Configurando Zsh como shell predeterminado..."
chsh -s $(which zsh)

echo "📦 Instalando LazyVim..."
mkdir -p ~/.config/nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim

echo "📝 Copiando configuración personalizada..."
cp -r ~/CryptShell/nvim ~/.config/

echo "🔄 Instalando plugins de Neovim..."
nvim --headless "+Lazy sync" +qa

echo "✅ Instalación completada. Reinicia la terminal para aplicar cambios."

