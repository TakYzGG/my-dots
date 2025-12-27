" =============================================================================
" Filename: autoload/lightline/colorscheme/nord.vim
" Author: arcticicestudio
" License: MIT
" Last Change: 2017/11/12 20:27:51
" =============================================================================

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:nord0 = ["#2E3440", "NONE"]  " Fondo principal
let s:nord1 = ["#3B4252", 0]       " Fondo secundario
let s:nord2 = ["#4C566A", 8]       " Fondo alternativo
let s:nord3 = ["#D8DEE9", "NONE"]  " Primer plano principal
let s:nord4 = ["#E5E9F0", 7]       " Primer plano secundario
let s:nord5 = ["#ECEFF4", 15]      " Color blanco
let s:nord6 = ["#88C0D0", 6]       " Color cian
let s:nord7 = ["#81A1C1", 4]       " Color azul
let s:nord8 = ["#5E81AC", 12]      " Color azul oscuro
let s:nord9 = ["#BF616A", 1]       " Color rojo
let s:nord10 = ["#A3BE8C", 2]      " Color verde
let s:nord11 = ["#EBCB8B", 3]      " Color amarillo
let s:nord12 = ["#B48EAD", 5]      " Color púrpura

let s:p.normal.left = [ [ s:nord1, s:nord7 ], [ s:nord4, s:nord1 ] ]
let s:p.normal.middle = [ [ s:nord4, s:nord2 ] ]
let s:p.normal.right = [ [ s:nord4, s:nord1 ], [ s:nord4, s:nord1 ] ]
let s:p.normal.warning = [ [ s:nord1, s:nord11 ] ]
let s:p.normal.error = [ [ s:nord1, s:nord9 ] ]

let s:p.inactive.left =  [ [ s:nord1, s:nord7 ], [ s:nord4, s:nord1 ] ]
let s:p.inactive.middle = [ [ s:nord4, s:nord1 ] ]
let s:p.inactive.right = [ [ s:nord4, s:nord1 ], [ s:nord4, s:nord1 ] ]

let s:p.insert.left = [ [ s:nord1, s:nord5 ], [ s:nord4, s:nord1 ] ]
let s:p.replace.left = [ [ s:nord1, s:nord11 ], [ s:nord4, s:nord1 ] ]
let s:p.visual.left = [ [ s:nord1, s:nord6 ], [ s:nord4, s:nord1 ] ]

let s:p.tabline.left = [ [ s:nord4, s:nord2 ] ]
let s:p.tabline.middle = [ [ s:nord4, s:nord2 ] ]
let s:p.tabline.right = [ [ s:nord4, s:nord2 ] ]
let s:p.tabline.tabsel = [ [ s:nord1, s:nord7 ] ]

let g:lightline#colorscheme#theme#palette = lightline#colorscheme#flatten(s:p)
