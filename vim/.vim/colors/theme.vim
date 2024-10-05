" Nombre del tema: CustomVSC
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom_vsc"

" Colores básicos
hi Normal       guifg=#ffffff guibg=#151515
hi CursorLine   guibg=#232323
hi LineNr       guifg=#474747 guibg=#151515
hi Comment      guifg=#474747
hi Constant     guifg=#2979ff
hi String       guifg=#00e676
hi Identifier   guifg=#00e5ff
hi Function     guifg=#00e5ff
hi Statement    guifg=#ff9100
hi Operator     guifg=#f50057
hi Keyword      guifg=#d500f9
hi PreProc      guifg=#ffea00
hi Type         guifg=#ff1744
hi Special      guifg=#ff9100
hi Underlined   guifg=#00e5ff
hi Todo         guifg=#ffffff guibg=#d500f9

" Colores de diagnóstico
hi Error        guifg=#ff1744 guibg=#151515
hi Warning      guifg=#ffea00 guibg=#151515
hi Info         guifg=#2979ff guibg=#151515
hi Hint         guifg=#00e676 guibg=#151515

" Fondo y texto alternativo
hi Visual       guibg=#232323
hi StatusLine   guifg=#ffffff guibg=#232323
hi StatusLineNC guifg=#474747 guibg=#151515
hi Pmenu        guibg=#232323 guifg=#ffffff
hi PmenuSel     guibg=#2979ff guifg=#ffffff

" Otros colores
hi VertSplit    guifg=#232323
hi TabLine      guibg=#232323 guifg=#474747
hi TabLineSel   guibg=#2979ff guifg=#ffffff
hi TabLineFill  guibg=#151515 guifg=#474747
