# Brillo pantalla
sudo chmod 666 /sys/class/backlight/intel_backlight/brightness

# Aplicaciones de inicio
setxkbmap latam
setxkbmap -option caps:swapescape
dwmblocks &
nm-applet &
picom &
./.fehbg
unclutter &

# Touchpad
TOUCHPAD_NAME="SynPS/2 Synaptics TouchPad"
TOUCHPAD_ID=$(xinput list | grep "$TOUCHPAD_NAME" | awk -F 'id=' '{print $2}' | awk '{print $1}')

if [ -n "$TOUCHPAD_ID" ]; then
    echo "Touchpad encontrado: $TOUCHPAD_NAME (ID: $TOUCHPAD_ID)"
	# Configurar el touchpad
	synclient VertEdgeScroll=1 HorizEdgeScroll=1 TapButton1=1
	xinput set-prop "$TOUCHPAD_ID" "Synaptics Move Speed" 2.0 2.0 0 0
fi

# Verificar si el mouse Logitech USB está conectado
MOUSE_NAME="Logitech USB Optical Mouse"
MOUSE_ID=$(xinput list | grep "$MOUSE_NAME" | awk -F 'id=' '{print $2}' | awk '{print $1}')

if [ -n "$MOUSE_ID" ]; then
    echo "Mouse encontrado: $MOUSE_NAME (ID: $MOUSE_ID)"
    # Configurar el mouse
    xinput set-prop "$MOUSE_ID" "libinput Accel Profile Enabled" 0, 1
	xinput set-prop "$MOUSE_ID" "libinput Accel Speed" -0.1
else
    echo "Mouse $MOUSE_NAME no encontrado. Configuración no aplicada."
fi
