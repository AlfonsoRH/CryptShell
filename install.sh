#!/bin/bash

set -e  # Detiene el script si hay algún error

echo "🚀 Instalando dependencias necesarias..."
sudo apt update && sudo apt install -y \
    git curl wget unzip ripgrep fd-find \
    neovim zsh fzf figlet lolcat \
    fonts-powerline

echo "🎉 Instalando Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "⚙️ Configurando Zsh..."
touch ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo "export ZSH=\"$HOME/.oh-my-zsh\"" >> ~/.zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> ~/.zshrc
echo "export SHELL=$(which zsh)" >> ~/.zshrc

echo "🔄 Aplicando configuración..."
source ~/.zshrc

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

echo "✅ Instalación completada. Reinicia la terminal para aplicar cambios."
