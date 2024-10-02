#!/bin/sh

if [ "$(whoami)" = "root" ]; then
	echo "Este script necesita ser ejecutado como usuario"
	exit 1 
fi

read -p "¿Cual es tu nombre de usuario?: " user

mkdir /home/$user/.config
mkdir /home/$user/Screenshots
mkdir /home/$user/PDFs

rm -rf /home/$user/.config/bspwm /home/$user/.config/polybar /home/$user/.config/lxterminal /home/$user/.config/vifm
cp -r my-dots/bspwm 						/home/$user/.config
chmod +x 									/home/$user/.config/bspwm/*
chmod +x 									/home/$user/.config/bspwm/themes/*
cp -r my-dots/bspwm/sxhkd					/home/$user/.config
cp -r my-dots/polybar 						/home/$user/.config 
cp -r my-dots/lxterminal 					/home/$user/.config
cp -r my-dots/fastfetch						/home/$user/.config
cp -r my-dots/vifm							/home/$user/.config
cp -r my-dots/vim/.vim						/home/$user
cp -r my-dots/vim/.vimrc					/home/$user
cp -r my-dots/Wallpaper/					/home/$user

echo "Termino la configuracion de bspwm"
