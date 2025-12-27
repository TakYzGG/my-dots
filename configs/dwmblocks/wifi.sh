#!/bin/sh

# Comprobamos si estamos conectados a alguna red WiFi
connected_ssid=$(nmcli -t -f ACTIVE,SSID dev wifi | grep "sí:" | cut -d: -f2)

if [ -n "$connected_ssid" ]; then
    echo "󰤨 Conectado"
else
    echo "󰤭 Desconectado"
fi
