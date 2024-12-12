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

# Mouse / Trackpad
synclient VertEdgeScroll=1 HorizEdgeScroll=1 TapButton1=1
xinput set-prop 11 "Synaptics Move Speed" 5.0 5.0 0 0
