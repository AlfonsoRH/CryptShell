#!/bin/bash

set -e  # Detiene el script si hay algún error

echo "⚙️ Configurando Zsh..."

# Asegurarse de que .zshrc exista
touch ~/.zshrc

# Añadir configuraciones a .zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo "export ZSH=\"$HOME/.oh-my-zsh\"" >> ~/.zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> ~/.zshrc
echo "export SHELL=$(which zsh)" >> ~/.zshrc

echo "🔄 Aplicando configuración..."
# Ejecutar Zsh directamente para aplicar la configuración
zsh -c 'source ~/.zshrc'

echo "🎨 Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo -e "${GREEN}🔹 Configurando Starship...${RESET}"
mkdir -p ~/.config
cp ./starship.toml ~/.config/starship.toml
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo "🐚 Configurando Zsh como shell predeterminado..."
chsh -s $(which zsh)

echo "📦 Instalando LazyVim..."
mkdir -p ~/.config/nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim

echo "📝 Copiando configuración personalizada..."
cp -r ~/CryptShell/nvim ~/.config/

echo "🔄 Instalando plugins de Neovim..."
nvim --headless "+Lazy sync" +qa

echo "✅ Configuración completada. Reinicia la terminal para aplicar cambios."

