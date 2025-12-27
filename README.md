# Mis archivos de configuracion

## Estructura del repo
- configs -> archivos que van a .config
- dots -> archivos que comienzan por . y van en la carpeta de usuario
- fonts -> fuentes del sistema
- scripts -> scripts que uso
- scripts/dmenu -> scripts para dmenu
- wallpapers -> mis wallpapers

## Como usar autoconfig.sh
- este repo (my-dots) debe estar en la carpeta de usuario
- darle permisos de ejecucion a autoconfig.sh 'chmod +x autoconfig.sh'
- ejecutarlo como usuario normal (no root) './autoconfig.sh'

## Neo vim
- las configuraciones de neovim estan en 'configs/nvim/lua'
- init.lua -> carga todos los archivos de configuracion
- autoclose.lua -> cierra automaticamente parentesis y comillas
- keymap.lua -> atajos personalizados
- lazyvim-plugins.lua -> mis plugins para lazivim
- theme.lua -> el tema que se esta usando actualmente en neovim
- themes -> guarda los temas para neovim y lualine
- themes/lualine/theme.lua -> el tema que se esta usando actualmente en lualine
