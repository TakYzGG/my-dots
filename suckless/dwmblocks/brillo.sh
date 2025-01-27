#!/bin/sh

# Script para mostrar el brillo actual de la pantalla usando light

# Obtener el brillo actual y redondear a un número entero
brillo=$(printf "%.0f" "$(light -G)")

# Mostrar el brillo actual
if [ $brillo -ge 70 ]; then
	echo "󰃠 $brillo%"
elif [ $brillo -ge 30 ]; then
	echo "󰃟 $brillo%"
else
	echo "󰃞 $brillo%"
fi
