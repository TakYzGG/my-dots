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
zshrc=https://raw.githubusercontent.com/TakYzGG/my-dots/main/.zshrc
bashrc=https://raw.githubusercontent.com/TakYzGG/my-dots/main/.bashrc
xinitrc=https://raw.githubusercontent.com/TakYzGG/my-dots/main/.xinitrc

# Inicio del script
echo "Hola! Bienvenido al script post-install para void linux"
echo "Responde las siguientes preguntas: "

# Preguntas al usuario
read -p "¿Cual es tu nombre de usuario?: " user
read -p "¿Quieres añadir los repocitorios non-free? (s/n): " nonfree
echo "¿Que tipo de instalacion quieres hacer?\n[1] Minima\n[2] Completa"
read -p "¿Cual quieres usar?: " install 
echo "¿Que editor de codigo quieres usar?\n[1] Default (Vim)\n[2] Emacs\n[3] VS code"
read -p "¿Cual quieres usar?: " editor
read -p "¿Quieres descargar temas gtk? (s/n): " temas
echo "Elige un gestor de sesion:\n[1] Xinit\n[2] Lxdm"
read -p "¿Cual quieres usar?: " init
echo "Elige un Windows Manager:\n[1] Bspwm\n[2] Dwm\n[3] I3wm\n[4] Fluxbox\n[5] Openbox\n[6] Ninguno"
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
compilacion=$(echo "$compilacion" | tr '[:upper:]' '[:lower:]')
editor=$(echo "$editor" | tr '[:upper:]' '[:lower:]')
temas=$(echo "$temas" | tr '[:upper:]' '[:lower:]')
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
xbps-install -y xorg git wget xclip vim-x11 python3 net-tools alsa-utils pulseaudio pulseaudio-utils pamixer xz zip unzip p7zip exfat-utils gcc make pkg-config binutils glibc-devel libX11-devel libXft-devel libXrender-devel libXinerama-devel 
if [ "$install" -eq 2 ]; then
	xbps-install -y ssr btop galculator mirage leafpad xarchiver Thunar thunar-volman thunar-archive-plugin pavucontrol mpv audaciousce
fi

# Instalar editor de codigo
case $init in
	1) echo "Editor: Vim" ;;
	2) xbps-install -y emacs ;;
	3) xbps-install -y vscode ;;
	*) echo "Respuesta no valida" ;;
esac

# Temas
if [ "$temas" = "s" ]; then
	xbps-install -y arc-theme papirus-icon-theme
fi

# Instalar xinit / lxdm
case $init in
	1) xbps-install -y xinit ;;
	2) xbps-install -y lxdm ;;
	*) echo "Respuesta no valida" ;;
esac

# Instalar wm
case $wm in
	1) xbps-install -y bspwm sxhkd lxterminal polybar fastfetch feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/bspwm/*					/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/bspwm.sh					../.. ;;
	2) xbps-install -y fastfetch feh mpv rofi fzf cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/menus-dmenu/						/home/$user/.config
	   chmod +x 										/home/$user/.config/menus-dmenu/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/dwm.sh					../.. ;;
	3) xbps-install -y i3 i3-gaps lxterminal polybar fastfetch feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance 
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/i3/*					/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts 
	   mv my-dots/postinstall/i3wm.sh					../.. ;;
	4) xbps-install -y fluxbox lxterminal polybar fastfetch feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/fluxbox/*				/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/fluxbox.sh				../.. ;;
	5) xbps-install -y openbox obconf lxterminal polybar fastfetch feh mpv rofi vifm cmus scrot mupdf arandr gparted lxappearance
	   git clone https://github.com/TakYzGG/my-dots
	   cp -r my-dots/rofi/* 							/usr/share/rofi/themes
	   cp -r my-dots/menus-rofi/openbox/*				/usr/local/bin
	   chmod +x 										/usr/local/bin/*
	   cp -r my-dots/fonts/*							/usr/share/fonts
	   mv my-dots/postinstall/openbox.sh				../.. ;;
	6) echo "No se eligio ningun windows manager" ;;
	*) echo "Respuesta no valida" ;;
esac

# Instalar nav
case $nav in
	1) xbps-install -y firefox ;;
	2) xbps-install -y chromium ;;
	3) xbps-install -y midori ;;
	4) echo "No se eligio ningun navegador" ;;
	*) echo "Respuesta no valida"
esac

# Instalar controladores de bluetooth
if [ "$bluetooth" = "s" ]; then
	xbps-install -y blueman
fi

# Instalar controladores de bateria y brillo
if [ "$portatil" = "s" ]; then
	xbps-install -y light acpi
fi

# Instalar controladores de wifi
if [ "$wifi" = "s" ]; then
	xbps-install -y connman
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
	1) echo "Se usara el kernel $kernelversion.x" ;;
	2) xbps-install -y linux5.15 linux-firmware
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	3) xbps-install -y linux5.10 linux-firmware
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	4) xbps-install -y linux5.4 linux-firmware
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	5) xbps-install -y linux4.19 linux-firmware
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	6) xbps-install -y linux-lts linux-firmware
	   xbps-remove -RFfy linux$kernelversion && vkpurge rm all ;;
	*) echo "Respuesta no valida" ;;
esac

# Configurar bash / zsh
if [ "$zsh" = "s" ]; then
	rm /home/$user/.zshrc
	wget $zshrc
	cp .zshrc /home/$user
	cp .zshrc /root
else
	rm -rf /home/$user/.bashrc
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
	ln -s /etc/sv/bluetoothd			/var/service
	sv enable bluetoothd
fi
# Acpi
if [ "$portatil" = "s" ]; then
	ln -s /etc/sv/acpid					/var/service
fi
# Connman
if [ "$wifi" = "s" ]; then
	ln -s /etc/sv/connmand				/var/service
	sv enable connmand
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
