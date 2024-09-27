#!/bin/sh

if [ "$(whoami)" = "root" ]; then
	echo "Este script necesita ser ejecutado como usuario"
	exit 1 
fi

read -p "¿Cual es tu nombre de usuario?: " user

mkdir /home/$user/.config
mkdir /home/$user/Screenshots
mkdir /home/$user/PDFs

rm -rf /home/$user/.config/openbox /home/$user/.config/polybar /home/$user/.config/lxterminal /home/$user/.config/vifm
mkdir										/home/$user/.themes
cp -r my-dots/openbox 						/home/$user/.config
cp -r my-dots/openbox/temasopenbox 			/home/$user/.themes
cp -r my-dots/polybar 						/home/$user/.config 
cp -r my-dots/lxterminal 					/home/$user/.config
cp -r my-dotsfastfetch						/home/$user/.config
cp -r my-dots/vifm							/home/$user/.config
cp -r my-dots/vim/*							/home/$user
cp -r my-dots/Wallpaper/					/home/$user
rm -rf my-dots/

mkdir /home/$user/.config
mkdir /home/$user/Screenshots
mkdir /home/$user/PDFs

echo "Termino la configuracion de openbox"
