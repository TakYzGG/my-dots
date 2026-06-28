#!/bin/sh
# Script para autoinstalar mis configuraciones

# Instalar configuracion basica
basicconf() {
    ln -sfv $RUTA/configs/lf ~/.config/lf
    ln -sfv $RUTA/configs/nvim ~/.config/nvim
    ln -sfv $RUTA/configs/picom ~/.config/picom
    ln -sfv $RUTA/configs/tmux/tmux.conf ~/.tmux.conf
    ln -sfv $RUTA/scripts/dmenu ~/.config/menus
    ln -sfv $RUTA/dots/bashrc ~/.bashrc
    ln -sfv $RUTA/dots/xinitrc ~/.xinitrc
    ln -sfv $RUTA/wallpapers ~/Wallpapers

    cp $RUTA/my-dots/fonts/* ~/.local/share/fonts
}

# Instalar configuracion de dwm
dwmconf() {
    basicconf
    ln -sfv $RUTA/configs/dwmblocks ~/.config/dwmblocks
}

# Instalar configuracion de openbox
openboxconf() {
    basicconf
    ln -sfv $RUTA/configs/openbox ~/.config/openbox
    ln -sfv $RUTA/configs/openbox/TakYzTheme ~/.themes
    ln -sfv $RUTA/configs/polybar ~/.config/polybar
}

# Guardar ruta actual
RUTA=$(pwd)

# Crear carpetas si no existen
mkdir -p ~/.config
mkdir -p ~/.local/share/fonts
mkdir -p ~/.themes

# Menu
OPT=-1

while [ $OPT -ne 0 ]
do
    clear
    echo "-- Menu de instalacion --"
    echo "[1] Basico"
    echo "[2] Dwm"
    echo "[3] Openbox"
    echo "[*] Salir"
    echo -n ">>> "
    read OPT

    # basico
    if [ $OPT -eq 1 ]
    then
        echo "\nInstalando configuracion basica...\n"
        basicconf
    fi

    # dwm
    if [ $OPT -eq 2 ]
    then
        echo "\nInstalando configuracion de dwm...\n"
        dwmconf
    fi

    # openbox
    if [ $OPT -eq 3 ]
    then
        echo "\nInstalando configuracion de openbox...\n"
        openboxconf
    fi

    # mostrar enter al teminar (menos cuando se elige salir)
    if [ $OPT -ne 0 ]
    then
        echo
        echo -n "Enter para continuar"
        read ENTER
    fi

done
