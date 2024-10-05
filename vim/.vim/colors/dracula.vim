" Nombre del tema: CustomVSC2
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom_vsc2"

" Colores básicos
hi Normal       guifg=#f8f8f2 guibg=#282a36
hi CursorLine   guibg=#44475a
hi LineNr       guifg=#bd93f9 guibg=#282a36
hi Comment      guifg=#6272a4
hi Constant     guifg=#8be9fd
hi String       guifg=#50fa7b
hi Identifier   guifg=#8be9fd
hi Function     guifg=#8be9fd
hi Statement    guifg=#ffb86c
hi Operator     guifg=#ff79c6
hi Keyword      guifg=#bd93f9
hi PreProc      guifg=#f1fa8c
hi Type         guifg=#ff5555
hi Special      guifg=#ffb86c
hi Underlined   guifg=#8be9fd
hi Todo         guifg=#f8f8f2 guibg=#bd93f9

" Colores de diagnóstico
hi Error        guifg=#ff5555 guibg=#282a36
hi Warning      guifg=#f1fa8c guibg=#282a36
hi Info         guifg=#6272a4 guibg=#282a36
hi Hint         guifg=#50fa7b guibg=#282a36

" Fondo y texto alternativo
hi Visual       guibg=#44475a
hi StatusLine   guifg=#f8f8f2 guibg=#44475a
hi StatusLineNC guifg=#bd93f9 guibg=#282a36
hi Pmenu        guibg=#44475a guifg=#f8f8f2
hi PmenuSel     guibg=#6272a4 guifg=#f8f8f2

" Otros colores
hi VertSplit    guifg=#44475a
hi TabLine      guibg=#44475a guifg=#6272a4
hi TabLineSel   guibg=#6272a4 guifg=#f8f8f2
hi TabLineFill  guibg=#282a36 guifg=#6272a4
