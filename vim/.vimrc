"" <-Configuracion de Vim->

"" Opciones Basicas
set number
set tabstop=4
set shiftwidth=4
set smartindent
set nowrap
set clipboard=unnamedplus

"" No crear archivos de respaldo
set nobackup
set nowritebackup
set noswapfile

"" Optimizaciones
set lazyredraw
set ttyfast
set timeoutlen=300
set updatetime=300
set history=100

"" Cerrar (, [, {, ', "  automaticamente
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"" Personalizacion
syntax on
colorscheme nord
