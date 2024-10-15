#!/bin/sh
# Creador: TakYzGG
# Script para automatizar la instalacion de paquetes en linux mint

# Comprobar que el script se esta ejecutando como root
if [ "$(whoami)" != "root" ]; then
	echo "Este script necesita permisos de root"
	exit 1 
fi

read -p "¿Quieres desactivar el swap? (s/n): " swap
read -p "¿Quieres activar zram? (s/n): " zram

# Actualizar el sistema
apt update -y
apt upgrade -y

# Instalar paquetes
apt install -y vim-gtk3 htop btop cmus wget mupdf rofi scroot

# Instalar librewolf
apt update && sudo apt install extrepo -y
extrepo enable librewolf
apt update && sudo apt install librewolf -y

# Eliminar firefox
apt remove -y firefox

# Configurar bash
wget https://raw.githubusercontent.com/TakYzGG/my-dots/main/.bashrc

# Desactivar swap
if [ "$swap" = "s" ]; then
	swapoff -v /swapfile
	rm -f /swapfile
	echo "Edita el archivo /etc/fstab para terminar de eliminar el swap"
fi
