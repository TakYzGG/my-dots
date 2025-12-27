#!/bin/sh

# Obtenemos el porcentaje del volumen con pamixer
volume_percentage=$(pamixer --get-volume)
mute_status=$(pamixer --get-mute)

# Comprobamos si está muteado
if [ "$mute_status" = "true" ]; then
    echo "󰝟 Mute"  # Ícono para volumen muteado
elif [ "$volume_percentage" -ge 70 ]; then
    echo "󰕾 $volume_percentage"  # Ícono para volumen alto
elif [ "$volume_percentage" -ge 30 ]; then
    echo "󰖀 $volume_percentage"  # Ícono para volumen medio
else
    echo "󰕿 $volume_percentage"  # Ícono para volumen bajo
fi
