" Vim color file
" theme: andromeda
" maintainer: https://github.com/safv12
" License: The MIT License (MIT)

" Modified by WhiteBlackGoose for neovim

set background=dark
highlight clear


if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "andromeda"

" vim function used to configure the vim highlight.
function! s:SetHighlight(group, fg, bg, attr)
  let l:attr = a:attr
  if empty(l:attr)
    let l:attr = 'none'
  endif
  if !empty(a:fg)
    exec 'hi ' . a:group . ' ctermfg=' . a:fg[1] ' guifg=' . a:fg[0]
  endif
  if !empty(a:bg)
    exec 'hi ' . a:group . ' ctermbg=' . a:bg[1] . ' guibg=' . a:bg[0]
  endif
  if !empty(l:attr)
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun

""" Color palette
let s:bg = ['#23262e', 235]
let s:comments = ['#5f6167', 241]
let s:white = ['#ffffff', 15]
let s:invisibles = ['#333844', 237]
let s:black = ['#1b1d23', 234]
let s:light_bg = ['#333740', 234]
let s:dark_bg = ['#1f2229', 234]
let s:cyan = ['#00e8c6', 44 ]
let s:red = ['#ee5d43', 203]
let s:green = ['#96e072', 113]
let s:dark_green = ['#4B7039', 113]
let s:purple = ['#c74ded', 171]
let s:yellow = ['#ffe66d', 221]
let s:orange = ['#f39c12', 214]
""" End of color palette

""" Vim editor
call s:SetHighlight('Boolean', s:red, '', '')
call s:SetHighlight('Conditional', s:purple, '', '')
call s:SetHighlight('CursorColumn', '', s:bg, '')
call s:SetHighlight('CursorLine', '', s:black, '')
call s:SetHighlight('EndOfBuffer', '', '', '')
call s:SetHighlight('ErrorMsg', s:red, '', 'underline')
call s:SetHighlight('Float', s:red, '', '')
call s:SetHighlight('Folded', '', s:light_bg, '')
call s:SetHighlight('Keyword', s:purple, '', '')
call s:SetHighlight('Label', s:green, '', '')
call s:SetHighlight('LineNr', s:comments, s:bg, '')
call s:SetHighlight('MatchParen', s:orange, '#000', '')
call s:SetHighlight('ModeMsg', '', '', '')
call s:SetHighlight('NonText', s:invisibles, '', '')
call s:SetHighlight('Normal', s:white, '', '')
call s:SetHighlight('Number', s:orange, '', '')
call s:SetHighlight('Pmenu', s:white, s:invisibles, '')
call s:SetHighlight('PmenuSel', s:bg, s:yellow, '')
call s:SetHighlight('PmenuSbar', '', s:invisibles, '')
call s:SetHighlight('PmenuThumb', '', s:comments, '')
call s:SetHighlight('SpecialComment', s:comments, '', '')
call s:SetHighlight('SpecialKey', s:invisibles, s:bg, '')
call s:SetHighlight('StatusLine', s:red, s:comments, '')
call s:SetHighlight('StatusLineNC', s:red, s:comments, '')
call s:SetHighlight('StorageClass', s:purple, '', '')
call s:SetHighlight('TabLine', s:comments, '', '')
call s:SetHighlight('TabLineFill', '', '', '')
call s:SetHighlight('TabLineSel', s:cyan, '', '')
call s:SetHighlight('Tag', s:purple, '', '')
call s:SetHighlight('Terminal', '', '', '')
call s:SetHighlight('Title', s:red, '', '')
call s:SetHighlight('VertSplit', s:black, s:black, '')
call s:SetHighlight('Visual', '', s:invisibles, '')
""" End of vim editor


""" Columns
call s:SetHighlight('FoldColumn', '', '#000', '')
call s:SetHighlight('SignColumn', '', '#000', '')
""" End of columns

""" Search
call s:SetHighlight('Search', s:bg, s:orange, '')
call s:SetHighlight('IncSearch', s:bg, s:orange, '')
call s:SetHighlight('CurSearch', s:bg, s:green, '')
"""

""" Bar (sorted as they're in :hi)
call s:SetHighlight('BufferInactive',      '', s:black, '')
call s:SetHighlight('BufferInactiveMod',   '', s:black, '')
call s:SetHighlight('BufferInactiveSign',  '', s:black, '')
call s:SetHighlight('BufferInactiveIndex', '', s:black, '')
call s:SetHighlight('BufferTabpages', '', s:black, '')
call s:SetHighlight('BufferTabpageFill', '', s:black, '')
call s:SetHighlight('BufferInactiveIcon', '', s:black, '')
call s:SetHighlight('BufferOffset', '', s:black, '')
"""

""" Diff
call s:SetHighlight('DiffAdd', s:green, '#000', '')
call s:SetHighlight('DiffChange', s:yellow, '#000', '')
call s:SetHighlight('DiffDelete', s:red, '#000', '')
call s:SetHighlight('DiffText', '#000', s:dark_green, '')
""" End of diff

""" windows
call s:SetHighlight('VertSplit', s:black, s:bg, '')
"""


""" NvimTree
call s:SetHighlight('Directory', s:comments, '#000', '')
call s:SetHighlight('NvimTreeNormal', '', s:black, '')
"""


""" Syntax
call s:SetHighlight('Comment', s:comments, '', '')
call s:SetHighlight('Todo', s:comments, '', '')
call s:SetHighlight('String', s:green, '', '')
call s:SetHighlight('Statement', s:purple, '', '')
call s:SetHighlight('Operator', s:purple, '', '')
call s:SetHighlight('WarningMsg', s:orange, '', '')
call s:SetHighlight('PreProc', s:purple, '', '')
call s:SetHighlight('Define', s:purple, '', '')
call s:SetHighlight('Special', s:red, '', '')
call s:SetHighlight('Conceal', s:orange, s:bg, '')
call s:SetHighlight('Character', s:green, '', '')
call s:SetHighlight('Include', s:cyan, '', '')
call s:SetHighlight('Macro', s:purple, '', '')
call s:SetHighlight('Structure', s:cyan, '', '')
call s:SetHighlight('Underlined', '', '', '')
call s:SetHighlight('Error', s:red, s:bg, 'underline')
""" End of Syntax

""" Identifiers
call s:SetHighlight('Constant', s:yellow, '', '')
call s:SetHighlight('Identifier', s:cyan, '', '')
call s:SetHighlight('@variable', s:yellow, '', '')
call s:SetHighlight('@constant.builtin', s:yellow, '', '')
"""

""" Types
call s:SetHighlight('Type', s:cyan, '', '')
"""

""" Functions
call s:SetHighlight('Function', s:yellow, '', '')
call s:SetHighlight('Method', s:yellow, '', '')
call s:SetHighlight('@constructor', s:yellow, '', '')
call s:SetHighlight('@method', s:yellow, '', '')
call s:SetHighlight('@function', s:yellow, '', '')
"""

""" Javascript
call s:SetHighlight('jsArrowFuncArgs', s:cyan, '', '')
call s:SetHighlight('jsBracket', s:orange, '', '')
call s:SetHighlight('jsEnvComment', s:comments, '', '')
call s:SetHighlight('jsFuncBlock', s:cyan, '', '')
call s:SetHighlight('jsGlobalNodeObjects', s:yellow, '', '')
call s:SetHighlight('jsIfElseBlock', s:orange, '', '')
call s:SetHighlight('jsNumber', s:orange, '', '')
call s:SetHighlight('jsObjectProp', s:cyan, '', '')
call s:SetHighlight('jsOperator', s:red, '', '')
call s:SetHighlight('jsParenIfElse', s:cyan, '', '')
call s:SetHighlight('jsVariableDef', s:cyan, '', '')
""" End of Javascript

"""
