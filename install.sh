#!/bin/bash

set -e  # Detiene el script si hay algún error

echo "🚀 Instalando dependencias necesarias..."
sudo apt update && sudo apt install -y \
    git curl wget unzip ripgrep fd-find \
    zsh fzf figlet lolcat \
    fonts-powerline

echo "🎉 Instalando Oh My Zsh..."
# Instalación no interactiva de Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
fi

echo "✅ Instalación de Zsh y Oh My Zsh completada. Ahora ejecuta 'config.sh' para completar la configuración."
