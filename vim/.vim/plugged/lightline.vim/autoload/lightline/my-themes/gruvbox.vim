" =============================================================================
" Filename: autoload/lightline/colorscheme/gruvbox.vim
" =============================================================================

" Colores comunes
let s:red1    = [ '#cc241d', 168 ]
let s:red2    = [ '#fb4934', 168 ]
let s:green   = [ '#98971a', 76 ]
let s:yellow  = [ '#d79921', 180 ]
let s:blue    = [ '#458588', 75 ]
let s:purple  = [ '#b16286', 176 ]
let s:aqua    = [ '#689d6a', 74 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Variante clara
  let s:fg    = [ '#3c3836', 238 ]
  let s:bg    = [ '#fbf1c7', 255 ]
  let s:gray1 = [ '#3c3836', 238 ]
  let s:gray2 = [ '#ebdbb2', 255 ]
else
  " Variante oscura
  let s:fg    = [ '#ebdbb2', 223 ]
  let s:bg    = [ '#282828', 235 ]  " Fondo gris oscuro de Gruvbox
  let s:gray1 = [ '#928374', 243 ]
  let s:gray2 = [ '#3c3836', 235 ]
  let s:gray3 = [ '#282828', 235 ]

  let s:p.inactive.left   = [ [ s:gray1, s:bg ], [ s:gray1, s:bg ] ]
  let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:gray1, s:bg ] ]
endif

" Configuración de la barra
let s:p.normal.left    = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.middle  = [ [ s:fg, s:gray2 ] ]
let s:p.normal.right   = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.error   = [ [ s:red2, s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.insert.left    = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.right  = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.left   = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.right   = [ [ s:bg, s:purple, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.left    = [ [ s:bg, s:purple, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.tabline.left   = [ [ s:fg, s:gray3 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#theme#palette = lightline#colorscheme#flatten(s:p)
