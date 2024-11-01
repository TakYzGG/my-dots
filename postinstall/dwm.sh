#!/bin/sh

if [ "$(whoami)" = "root" ]; then
	echo "Este script necesita ser ejecutado como usuario"
	exit 1 
fi

read -p "¿Cual es tu nombre de usuario?: " user

# Compilar dmenu, dwm, st
mkdir ~/pkg
cp -r my-dots/dmenu 						/home/$user/pkg/
cp -r my-dots/dwm							/home/$user/pkg/
cp -r my-dots/st							/home/$user/pkg/

cd home/$user/pkg/dmenu
make
sudo make install clean

cd home/$user/pkg/dwm
make
sudo make install clean

cd home/$user/pkg/st
make
sudo make install clean

# Mover configuraciones
mkdir /home/$user/.config
mkdir /home/$user/.suckless
mkdir /home/$user/Screenshots

cp -r my-dots/vim/.vim						/home/$user
cp -r my-dots/vim/.vimrc					/home/$user
cp -r my-dots/Wallpaper/					/home/$user
cp my-dots/suckless/*						/home/$user/.suckless

echo "Termino la configuracion de dwm"
