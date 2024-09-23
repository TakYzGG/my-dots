#!/bin/sh
# Script post-install para void linux

# Comprobar que el script se esta ejecutando como root
if [ "$(whoami)" != "root" ]; then
	echo "Este script necesita permisos de root"
	exit 1 
fi

# Variables
kernelversion=$(uname -r | awk -F. '{print $1"."$2}')
zramp=https://raw.githubusercontent.com/TakYzGG/Void-Linux/main/Utilidades/zram
zshrc=
bashrc=
xinitrc=

# Inicio del script
echo "Hola! Bienvenido al script post-install para void linux"
echo "Responde las siguientes preguntas: "

# Preguntas al usuario
read -p "¿Cual es tu nombre de usuario?: " user
read -p "¿Quieres añadir los repocitorios non-free? (s/n): " nonfree
echo "¿Que tipo de instalacion quieres hacer?\n[1] Minima\n[2] Completa"
read -p "¿Cual quieres usar?: " install 
echo "Elige un gestor de sesion:\n[1] Xinit\n[2] Lxdm"
read -p "¿Cual quieres usar?: " init
echo "Elige un Windows Manager:\n[1] I3wm\n[2] Bspwm\n[3] Fluxbox\n[4] Openbox\n[5] Ninguno"
read -p "¿Cual quieres usar?: " wm
echo "Elige un navegador web:\n[1] Firefox\n[2] Chromium\n[3] Midori\n[4] Ninguno"
read -p "¿Cual quieres usar?: " nav
read -p "¿Quieres instalar controladores para bluetooth?  (s/n): " bluetooth
read -p "¿Quieres instalar controladores para bateria y brillo? (s/n): " portatil
read -p "¿Quieres instalar controladores para wifi? (s/n): " wifi
read -p "¿Quieres instalar libreoffice? (s/n): " libreoffice
read -p "¿Quieres instalar ufw (firewall)? (s/n): " ufw
read -p "¿Quieres instalar zsh? (s/n): " zsh
echo "Elige una version del kernel linux:\n[1] Kernel default\n[2] Kernel 5.15.x\n[3] Kernel 5.10.x\n[4] Kernel 5.4.x\n[5] Kernel 4.19.x\n[6] Kernel lts"
read -p "¿Cual quieres usar?: " kernel

# Hacer minusculas todas las respuestas
nonfree=$(echo "$nonfree" | tr '[:upper:]' '[:lower:]')
wifi=$(echo "$wifi" | tr '[:upper:]' '[:lower:]')
bluetooth=$(echo "$bluetooth" | tr '[:upper:]' '[:lower:]')
portatil=$(echo "$portatil" | tr '[:upper:]' '[:lower:]')
ufw=$(echo "$ufw" | tr '[:upper:]' '[:lower:]')
libreoffice=$(echo "$libreoffice" | tr '[:upper:]' '[:lower:]')
zsh=$(echo "$zsh" | tr '[:upper:]' '[:lower:]')

# Actualizar sistema
xbps-install -Suy

# Añadir repocitorio multilib
xbps-install -y void-repo-multilib

# Descargar paquetes
xbps-install -y xorg git wget xclip vim-x11 python3 alsa-utils pulseaudio pulseaudio-utils arc-theme papirus-icon-theme gcc make pkg-config binutils glibc-devel libX11-devel libXft-devel libXrender-devel libXinerama-devel xz zip unzip p7zip exfat-utils
if [ "$install" -eq 2 ]; then
	xbps-install -y ssr btop galculator mupdf mirage arandr leafpad gparted xarchiver Thunar thunar-volman thunar-archive-plugin pavucontrol mpv audacious lxappearance
fi

# Instalar xinit / lxdm
case $init in
	1) xbps-install -y xinit ;;
	2) xbps-install -y lxdm ;;
	*) echo "Respuesta no valida" ;;
esac

# Instalar wm
case $wm in
	1) xbps-install -y i3 i3-gaps lxterminal polybar feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance 
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/i3/*					/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts 
	   mv my-dots/postinstall/i3wm.sh					../.. ;;
	2) xbps-install -y bspwm sxhkd lxterminal polybar feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/bspwm/*					/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/bspwm.sh					../.. ;;
	3) xbps-install -y fluxbox lxterminal polybar feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/fluxbox/*				/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/fluxbox.sh				../.. ;;
	4) xbps-install -y openbox obconf lxterminal polybar feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/openbox/*				/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/openbox.sh				../.. ;;
	5) echo "No se eligio ningun windows manager" ;;
	*) echo "Respuesta no valida" ;;
esac

# Instalar nav
case $nav in
	1) xbps-install -y firefox ;;
	2) xbps-install -y chromium ;;
	3) xbps-install -y midori ;;
	4) echo "No se eligio ningun navegador" ;;
	*) echo "Respuesta no valida"

# Instalar controladores de bluetooth
if [ "$bluetooth" = "s" ]; then
	xbps-install -y blueman
fi

# Instalar controladores de bateria y brillo
if [ "$portatil" = "s" ]; then
	xbps-install -y brightnessctl acpi
fi

# Instalar controladores de wifi
if [ "$wifi" = "s" ]; then
	xbps-install -y NetworkManager
fi

# Instalar libreoffice
if [ "$libreoffice" = "s" ]; then
	xbps-install -y libreoffice
fi

# Instalar ufw
if [ "$ufw" = "s" ]; then
	xbps-install -y ufw
	ufw allow http
	ufw allow https
	ufw default deny incoming
	ufw default allow outgoing
	ufw enable
fi

# Instalar zram
wget $zramp
mv zram /usr/local/bin
chmod +x /usr/local/bin/zram
echo "/usr/local/bin/zram start" >> /etc/rc.local

# Instalar zsh
if [ "$zsh" = "s" ]; then
	xbps-install -y zsh
	chsh -s /bin/zsh
	chsh -s /bin/zsh $usuario
fi

# Instalar verion del kernel y eliminar la por defecto
case $kernel in
	0) echo "Se usara el kernel $kernelversion.x" ;;
	1) xbps-install -y linux5.15
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	2) xbps-install -y linux5.10
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	3) xbps-install -y linux5.4
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	4) xbps-install -y linux4.19
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	5) xbps-install -y linux-lts
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	*) echo "Respuesta no valida" ;;
esac

# Configurar bash / zsh
if [ "$zsh" = "s" ]; then
	wget $zshrc
	cp .zshrc /home/$user
	cp .zshrc /root
else
	rm -rf /home/$usuario/.bashrc
	rm -rf /root/.bashrc
	wget $bashrc
	cp .bashrc /home/$user
	cp .bashrc /root
fi

# Configurar xinitrc
if [ "$init" -eq 1 ]; then
	rm /home/$user/.xinitrc
	gwet $xinitrc
	cp .xinitrc /home/$user
fi

# Servicios
ln -s /etc/sv/dbus						/var/service
ln -s /etc/sv/alsa						/var/service
# Bluetooth
if [ "$bluetooth" = "s" ]; then
	ln -s /etc/sv/bluemand				/var/service
fi
# Acpi
if [ "$portatil" = "s" ]; then
	ln -s /etc/sv/acpid					/var/service
fi
# Network Manager
if [ "$wifi" = "s" ]; then
	ln -s /etc/sv/NetworkManager		/var/service
	sv enable NetworkManager
fi
# Lxdm
if [ "$init" -eq 1 ]; then
	ln -s /etc/sv/lxdm					/var/service
fi
# Eliminar ttys de los servicios
rm -rf /var/service/agetty-tty3
rm -rf /var/service/agetty-tty4 
rm -rf /var/service/agetty-tty5
rm -rf /var/service/agetty-tty6

# Mensaje final
echo "La instalacion termino\n ejecuta el archivo nuevo que tienes en esta carpeta para terminar de configurar el wm que hayas elegido y descomenta en el archivo .xinitrc el wm que elegiste"
