#!/bin/sh

# Comprobamos si estamos conectados a alguna red WiFi
state=$(connmanctl state | grep State | awk '{print $3}')

if [ "$state" = "online" ]; then
    echo "󰤨 Conectado"
elif [ "$state" = "ready" ]; then
    echo "󰈁 Ethernet"
else
    echo "󰤭 Desconectado"
fi
