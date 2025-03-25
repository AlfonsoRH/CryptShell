# 🚀 Configuración de Neovim con LazyVim

Esta es mi configuración personalizada de **Neovim** utilizando **LazyVim** como gestor de configuraciones. Incluye una serie de plugins esenciales para desarrollo y productividad.

## 📥 Instalación Rápida

Si quieres usar esta configuración en otra máquina, sigue estos pasos:

### 1️⃣ Clonar el repositorio

```bash
git clone https://github.com/AlfonsoRH/CryptShell.git ~/CryptShell
```

### 2️⃣ Ejecutar el script de instalación

```bash
cd ~/CryptShell
chmod +x install.sh
./install.sh
```

Esto instalará **LazyVim**, copiará la configuración a `~/.config/nvim` y sincronizará los plugins.

### 3️⃣ Abrir Neovim

```bash
nvim
```

Al abrirlo por primera vez, LazyVim instalará los plugins necesarios.

---

## 📦 Plugins Incluidos

Esta configuración de **Neovim** incluye los siguientes plugins principales:

- **LazyVim** - Framework de configuración para Neovim
- **Treesitter** - Mejor resaltado de sintaxis
- **Telescope** - Búsqueda avanzada de archivos y contenido
- **Lualine** - Barra de estado personalizada
- **Neo-tree** - Explorador de archivos
- **Catppuccin** - Tema de colores elegante

Puedes modificar la configuración editando los archivos en `~/.config/nvim/`.

---

## 🔧 Personalización

Si quieres agregar nuevos plugins o modificar configuraciones, puedes editar los archivos dentro de:

```bash
~/.config/nvim/lua/custom/
```

Ejemplo de archivo de configuración personalizado (`~/.config/nvim/lua/custom/init.lua`):

```lua
vim.o.number = true -- Activar números de línea
vim.o.relativenumber = true -- Números relativos
```

Para aplicar cambios:

```bash
nvim --headless "+Lazy sync" +qa
```

---

## ❌ Desinstalación

Si deseas eliminar LazyVim y su configuración, ejecuta:

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim ~/.local/state/nvim
```

Esto borrará todas las configuraciones, plugins y cachés de Neovim.

---

## 📌 Notas Finales

- LazyVim usa **Lazy.nvim** como gestor de plugins, lo que permite una carga rápida.
- Puedes personalizarlo agregando módulos en `lua/custom/`.
- Compatible con Neovim 0.9+.

Si tienes dudas o mejoras, crea un issue en el repositorio. 😊


