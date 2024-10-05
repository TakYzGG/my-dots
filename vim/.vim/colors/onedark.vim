" Nombre del tema: CustomVSC5
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom_vsc5"

" Colores básicos
hi Normal       guifg=#abb2bf guibg=#282c34
hi CursorLine   guibg=#4b5263
hi LineNr       guifg=#5c6370 guibg=#282c34
hi Comment      guifg=#5c6370
hi Constant     guifg=#61afef
hi String       guifg=#98c379
hi Identifier   guifg=#61afef
hi Function     guifg=#61afef
hi Statement    guifg=#ffb86c
hi Operator     guifg=#c678dd
hi Keyword      guifg=#c678dd
hi PreProc      guifg=#e5c07b
hi Type         guifg=#e06c75
hi Special      guifg=#ffb86c
hi Underlined   guifg=#61afef
hi Todo         guifg=#abb2bf guibg=#c678dd

" Colores de diagnóstico
hi Error        guifg=#e06c75 guibg=#282c34
hi Warning      guifg=#e5c07b guibg=#282c34
hi Info         guifg=#61afef guibg=#282c34
hi Hint         guifg=#98c379 guibg=#282c34

" Fondo y texto alternativo
hi Visual       guibg=#4b5263
hi StatusLine   guifg=#abb2bf guibg=#4b5263
hi StatusLineNC guifg=#5c6370 guibg=#282c34
hi Pmenu        guibg=#4b5263 guifg=#abb2bf
hi PmenuSel     guibg=#61afef guifg=#abb2bf

" Colores adicionales (alternativos)
hi DiffAdd      guibg=#31383a
hi DiffChange   guibg=#2d3643
hi DiffDelete   guibg=#373039
hi DiffText     guibg=#37373a

" Sombras
hi VertSplit    guifg=#5c6370
hi TabLine      guibg=#4b5263 guifg=#5c6370
hi TabLineSel   guibg=#61afef guifg=#abb2bf
hi TabLineFill  guibg=#282c34 guifg=#5c6370
