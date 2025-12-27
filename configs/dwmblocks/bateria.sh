#!/bin/sh

# Obtenemos la información de la batería
battery_info=$(acpi -b)

# Extraemos el estado de carga y el porcentaje de batería
battery_status=$(echo "$battery_info" | awk '{print $3}' | tr -d ',')
battery_percentage=$(echo "$battery_info" | awk '{print $4}' | tr -d '%,') 

# Comprobamos el estado de la batería y mostramos el ícono correspondiente
if [[ "$battery_status" == "Charging" ]]; then
    if [ "$battery_percentage" -ge 70 ]; then
        echo "󱊣 $battery_percentage"  # Ícono para carga completa
    elif [ "$battery_percentage" -ge 30 ]; then
        echo "󱊢 $battery_percentage"  # Ícono para carga media
    else
        echo "󱊡 $battery_percentage"  # Ícono para carga baja
    fi
elif [[ "$battery_status" == "Discharging" ]]; then
    if [ "$battery_percentage" -ge 70 ]; then
        echo "󱊦 $battery_percentage"  # Ícono para carga completa
    elif [ "$battery_percentage" -ge 30 ]; then
        echo "󱊥 $battery_percentage"  # Ícono para carga media
    else
        echo "󱊤 $battery_percentage"  # Ícono para carga baja
    fi
else
    echo "󰸞 $battery_percentage"  # Ícono para otros estados (por ejemplo, completamente cargada)
fi
