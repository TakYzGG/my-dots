#!/bin/sh

# Obtiene el volumen actual
volumen=$(pamixer --get-volume)

# Verifica si el volumen está silenciado
silenciado=$(pamixer --get-mute)

# Si está silenciado, muestra "Silenciado", de lo contrario muestra el volumen
if [ "$silenciado" = "true" ]; then
    echo "Mute"
else
    echo "Vol: $volumen%"
fi
