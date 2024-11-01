#!/bin/sh

# Obtenemos la información de la batería
battery_info=$(acpi -b)

# Extraemos el estado de carga y el porcentaje de batería
#battery_status=$(echo "$battery_info" | awk '{print $3}' | tr -d ',')
battery_percentage=$(echo "$battery_info" | awk '{print $4}' | tr -d '%,')

# Mostramos el resultado en el formato deseado
echo "Bat: $battery_percentage%"
