" =============================================================================
" Filename: autoload/lightline/colorscheme/one.vim
" Author: Zoltan Dalmadi
" License: MIT License
" Last Change: 2019/09/09 22:42:48.
" =============================================================================

" Common colors
let s:blue   = [ '#2979ff', 75 ]
let s:green  = [ '#00e676', 76 ]
let s:purple = [ '#d500f9', 176 ]
let s:red1   = [ '#ff1744', 168 ]
let s:red2   = [ '#ff1744', 168 ]
let s:yellow = [ '#ffea00', 180 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Light variant
  let s:fg    = [ '#232323', 238 ]
  let s:bg    = [ '#ffffff', 255 ]
  let s:gray1 = [ '#232323', 238 ]
  let s:gray2 = [ '#ffffff', 255 ]
  let s:gray3 = [ '#d0d0d0', 250 ]
else
  " Dark variant
  let s:fg    = [ '#ffffff', 15 ]
  let s:bg    = [ '#232323', 235 ]
  let s:gray1 = [ '#5c6370', 240 ]
  let s:gray2 = [ '#232323', 235 ]
  let s:gray3 = [ '#151515', 240 ]

  let s:p.inactive.left   = [ [ s:gray1, s:bg ], [ s:gray1, s:bg ] ]
  let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:gray1, s:bg ] ]
endif

" Common
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
