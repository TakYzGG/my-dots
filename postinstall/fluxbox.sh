#!/bin/sh

if [ "$(whoami)" = "root" ]; then
	echo "Este script necesita ser ejecutado como usuario"
	exit 1 
fi

read -p "¿Cual es tu nombre de usuario?: " user

mkdir /home/$usr/.config
mkdir /home/$user/Screenshots
mkdir /home/$user/PDFs

rm -rf /home/$user/.fluxbox /home/$user/.config/polybar /home/$user/.config/lxterminal /home/$user/.config/vifm
mkdir 										/home/$user/.fluxbox
cp -r my-dots/fluxbox/* 					/home/$user/.fluxbox
chmod +x									/home/$user/.fluxbox/startup
cp -r my-dots/lxterminal 					/home/$user/.config
cp -r my-dots/fastfetch						/home/$user/.config
cp -r my-dots/vifm							/home/$user/.config
cp -r my-dots/vim/*							/home/$user
cp -r my-dots/Wallpaper/					/home/$user
rm -rf my-dots/

echo "Termino la configuracion de fluxbox"
