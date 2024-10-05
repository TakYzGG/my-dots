" Nombre del tema: CustomVSC4
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom_vsc4"

" Colores básicos
hi Normal       guifg=#A0A0AB guibg=#18181B
hi CursorLine   guibg=#20212C
hi LineNr       guifg=#5D5E72 guibg=#18181B
hi Comment      guifg=#5D5E72
hi Constant     guifg=#6BA2FF
hi String       guifg=#96F7C8
hi Identifier   guifg=#45FFFF
hi Function     guifg=#45FFFF
hi Statement    guifg=#FFBA63
hi Operator     guifg=#FF6B9D
hi Keyword      guifg=#E66AFC
hi PreProc      guifg=#FFFF39
hi Type         guifg=#FF7575
hi Special      guifg=#FFBA63
hi Underlined   guifg=#45FFFF
hi Todo         guifg=#A0A0AB guibg=#E66AFC

" Colores de diagnóstico
hi Error        guifg=#FF7575 guibg=#18181B
hi Warning      guifg=#FFFF39 guibg=#18181B
hi Info         guifg=#6BA2FF guibg=#18181B
hi Hint         guifg=#96F7C8 guibg=#18181B

" Fondo y texto alternativo
hi Visual       guibg=#20212C
hi StatusLine   guifg=#A0A0AB guibg=#20212C
hi StatusLineNC guifg=#5D5E72 guibg=#18181B
hi Pmenu        guibg=#20212C guifg=#A0A0AB
hi PmenuSel     guibg=#6BA2FF guifg=#A0A0AB

" Colores de fondo adicionales (transparencias)
hi DiffAdd      guibg=#45FFFF
hi DiffChange   guibg=#00000000
hi DiffDelete   guibg=#cc000000
hi DiffText     guibg=#FFBA63

" Sombras
hi VertSplit    guifg=#5D5E72
hi TabLine      guibg=#20212C guifg=#5D5E72
hi TabLineSel   guibg=#6BA2FF guifg=#A0A0AB
hi TabLineFill  guibg=#18181B guifg=#5D5E72
