#!/bin/sh
# Script para autoinstalar mis configuraciones

# Crear carpetas si no existen
mkdir -p ~/.config
mkdir -p ~/.local/share/fonts/

# Crear enlaces simbolicos
ln -s ~/my-dots/configs/dwmblocks ~/.config/dwmblocks
ln -s ~/my-dots/configs/lf ~/.config/lf
ln -s ~/my-dots/configs/nvim ~/.config/nvim
ln -s ~/my-dots/configs/picom ~/.config/picom
ln -s ~/my-dots/configs/themes ~/.config/themes
ln -s ~/my-dots/configs/scripts/dnemu ~/.config/menus
ln -s ~/my-dots/dots/bashrc ~/.bashrc
ln -s ~/my-dots/dots/xinitrc ~/.xinitrc
ln -s ~/my-dots/wallpapers ~/Wallpapers

# Mover las fuentes
cp ~/my-dots/fonts/* ~/.local/share/fonts/
