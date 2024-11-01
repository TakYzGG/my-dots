#!/bin/sh

# Script para mostrar el brillo actual de la pantalla usando light

# Obtener el brillo actual y redondear a un número entero
current_brightness=$(printf "%.0f" "$(light -G)")

# Mostrar el brillo actual
echo "Brillo: $current_brightness%"
