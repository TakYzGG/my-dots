" Nombre del tema: CustomVSC3
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom_vsc3"

" Colores básicos
hi Normal       guifg=#fbf1c7 guibg=#282828
hi CursorLine   guibg=#3c3836
hi LineNr       guifg=#d3869b guibg=#282828
hi Comment      guifg=#83a598
hi Constant     guifg=#8ec07c
hi String       guifg=#b8bb26
hi Identifier   guifg=#8ec07c
hi Function     guifg=#8ec07c
hi Statement    guifg=#fe8019
hi Operator     guifg=#d3869b
hi Keyword      guifg=#d3869b
hi PreProc      guifg=#fabd2f
hi Type         guifg=#fb4934
hi Special      guifg=#fe8019
hi Underlined   guifg=#8ec07c
hi Todo         guifg=#fbf1c7 guibg=#d3869b

" Colores de diagnóstico
hi Error        guifg=#fb4934 guibg=#282828
hi Warning      guifg=#fabd2f guibg=#282828
hi Info         guifg=#83a598 guibg=#282828
hi Hint         guifg=#b8bb26 guibg=#282828

" Fondo y texto alternativo
hi Visual       guibg=#3c3836
hi StatusLine   guifg=#fbf1c7 guibg=#3c3836
hi StatusLineNC guifg=#d3869b guibg=#282828
hi Pmenu        guibg=#3c3836 guifg=#fbf1c7
hi PmenuSel     guibg=#83a598 guifg=#fbf1c7

" Colores de fondo adicionales
hi DiffAdd      guibg=#689d6a
hi DiffChange   guibg=#458588
hi DiffDelete   guibg=#cc241d
hi DiffText     guibg=#d79921

" Otros colores
hi VertSplit    guifg=#3c3836
hi TabLine      guibg=#3c3836 guifg=#83a598
hi TabLineSel   guibg=#83a598 guifg=#fbf1c7
hi TabLineFill  guibg=#282828 guifg=#83a598
