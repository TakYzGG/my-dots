let s:colors = {
\ 'bg': '#2E3440',
\ 'fg': '#D8DEE9',
\ 'grey': '#4C566A',
\ 'orange': '#D08770',
\ 'red': '#BF616A',
\ 'cyan': '#5E81AC',
\ 'green': '#A3BE8C',
\ 'yellow': '#EBCB8B',
\ 'darkgrey': '#434C5E'
\ }

function! s:setup_highlight(group, color)
    let l:style = has_key(a:color, 'style') ? 'gui=' . a:color.style : 'gui=NONE'
    let l:fg = has_key(a:color, 'fg') ? 'guifg=' . a:color.fg : 'guifg=NONE'
    let l:bg = has_key(a:color, 'bg') ? 'guibg=' . a:color.bg : 'guibg=NONE'
    execute 'highlight' a:group l:style l:fg l:bg
endfunction

function! SetupColors()
    set background=dark
    syntax on

    call s:setup_highlight('Normal', {'fg': s:colors.fg, 'bg': s:colors.bg})
    call s:setup_highlight('Comment', {'fg': s:colors.grey})
    call s:setup_highlight('Constant', {'fg': s:colors.orange})
    call s:setup_highlight('Identifier', {'fg': s:colors.red})
    call s:setup_highlight('Statement', {'fg': s:colors.cyan})
    call s:setup_highlight('PreProc', {'fg': s:colors.yellow})
    call s:setup_highlight('Type', {'fg': s:colors.green})
    call s:setup_highlight('Special', {'fg': s:colors.yellow})
    call s:setup_highlight('Underlined', {'style': 'underline'})
    call s:setup_highlight('Todo', {'fg': s:colors.bg, 'bg': s:colors.yellow, 'style': 'bold'})
    call s:setup_highlight('CursorLine', {'bg': s:colors.darkgrey})
    call s:setup_highlight('LineNr', {'fg': s:colors.grey})
    call s:setup_highlight('StatusLine', {'fg': s:colors.fg, 'bg': s:colors.darkgrey, 'style': 'bold'})
    call s:setup_highlight('Visual', {'bg': s:colors.darkgrey, 'style': 'reverse'})
    call s:setup_highlight('Search', {'fg': s:colors.bg, 'bg': s:colors.yellow})
endfunction

call SetupColors()
