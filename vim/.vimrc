"" <-Configuracion de Vim->

"" Opciones Basicas
set number
set tabstop=4
set shiftwidth=4
set smartindent
set nowrap
set clipboard=unnamedplus
set linespace=0
set laststatus=2

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
set termguicolors
colorscheme theme

"" Plugins

"" Plugin lightline.vim
call plug#begin('~/.vim/plugged')  " Define el directorio donde se guardarán los plugins
	Plug 'itchyny/lightline.vim'       " Especifica el plugin a instalar
call plug#end()                    " Finaliza la lista de plugins
"" Config lightline.vim
let g:lightline = { 'colorscheme': 'theme' }
