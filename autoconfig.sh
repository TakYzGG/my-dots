#!/bin/sh
# Script para autoinstalar mis configuraciones

# Guardar ruta actual
ruta=$(pwd)

# Crear carpetas si no existen
mkdir -p ~/.config
mkdir -p ~/.local/share/fonts/

# Crear enlaces simbolicos
ln -s $ruta/configs/dwmblocks ~/.config/dwmblocks
ln -s $ruta/configs/lf ~/.config/lf
ln -s $ruta/configs/nvim ~/.config/nvim
ln -s $ruta/configs/picom ~/.config/picom
ln -s $ruta/configs/themes ~/.config/themes
ln -s $ruta/configs/scripts/dmenu ~/.config/menus
ln -s $ruta/dots/bashrc ~/.bashrc
ln -s $ruta/dots/xinitrc ~/.xinitrc
ln -s $ruta/wallpapers ~/Wallpapers

# Mover las fuentes
cp ~/my-dots/fonts/* ~/.local/share/fonts/
