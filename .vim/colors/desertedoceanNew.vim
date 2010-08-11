" 本配色方案由 gui2term.py 程序增加彩色终端支持。
" Vim color file
" desertedocean v0.5
" Maintainer:	Shawn Axsom <axs221@gmail.com>
"               [axs221.1l.com]

" desertedocean, a colorscheme using the desert colorscheme as a template, based loosely off of desert, oceandeep, and zenburn.
"
" With thanks to Panos Laganakos

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
		syntax reset
    endif
endif

let g:colors_name="desertedocean"

hi Normal	guifg=#FFE0FA guibg=#122130 ctermfg=225 ctermbg=17 cterm=none

" syntax highlighting
hi Comment	  guifg=#6Aa0e0 ctermfg=68 ctermbg=17 cterm=none
hi Title	guifg=#00aBdF ctermfg=38 ctermbg=17 cterm=none
hi Underlined guifg=#20b0eF gui=none ctermfg=39 ctermbg=17 cterm=none
hi Statement  guifg=#eF7a7a ctermfg=210 ctermbg=17 cterm=none
hi Type		  guifg=#dAa0b0 ctermfg=175 ctermbg=17 cterm=none
hi PreProc    guifg=#FF7A9a ctermfg=211 ctermbg=17 cterm=none
hi Constant	  guifg=#EE8aB5 " or #FF707A ctermfg=211 ctermbg=17 cterm=none
hi Identifier guifg=#FFe0bd ctermfg=223 ctermbg=17 cterm=none
hi Special	  guifg=#8cf0ff ctermfg=123 ctermbg=17 cterm=none
hi Ignore	guifg=grey40 ctermfg=241 ctermbg=17 cterm=none
hi Todo		guifg=orangered guibg=yellow2 ctermfg=202 ctermbg=226 cterm=none
"hi Error
"end syntax highlighting

" highlight groups
hi Cursor	guibg=#007799 guifg=#00D0D0 ctermfg=44 ctermbg=24 cterm=none
"hi CursorIM
hi Directory guifg=#bbd0df ctermfg=152 ctermbg=17 cterm=none
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none ctermfg=244 ctermbg=187 cterm=none
hi Folded	guibg=#337799 guifg=#BBDDCC ctermfg=152 ctermbg=67 cterm=none
hi FoldColumn	guibg=#337799 guifg=#00CCFF ctermfg=45 ctermbg=67 cterm=none
hi LineNr   guifg=#CCF0FF guibg=#006688 ctermfg=195 ctermbg=24 cterm=none
hi ModeMsg	guifg=#00AACC ctermfg=38 ctermbg=17 cterm=none
hi MoreMsg	guifg=SeaGreen ctermfg=72 ctermbg=17 cterm=none
hi NonText  guifg=#285960 guibg=#2A374A ctermfg=66 ctermbg=60 cterm=none
hi Question	guifg=#AABBCC ctermfg=146 ctermbg=17 cterm=none
hi Search	guibg=slategrey guifg=#FFDABB ctermfg=223 ctermbg=60 cterm=none
hi IncSearch	guifg=slategrey guibg=#FFDFB0 ctermfg=60 ctermbg=223 cterm=none
hi SpecialKey	guifg=#00CCBB " blue green ctermfg=44 ctermbg=17 cterm=none
hi StatusLine	guibg=#00A5EA guifg=#050709 gui=none ctermfg=60 ctermbg=32 cterm=none
hi StatusLineNC	guibg=#1079B0 guifg=#272334 gui=none ctermfg=60 ctermbg=25 cterm=none
hi Visual   guifg=#008FBF guibg=#33DFEF ctermfg=31 ctermbg=87 cterm=none
"hi VisualNOS
hi WarningMsg	guifg=salmon ctermfg=210 ctermbg=17 cterm=none
"hi WildMenu
"hi Menu
"hi Scrollbar  guibg=grey30 guifg=tan
"hi Tooltip

hi Pmenu	guifg=#6Aa0e0 guibg=#222f3d ctermfg=68 ctermbg=60 cterm=none
hi PmenuSel	guifg=#FFFFFF guibg=#0088bb ctermfg=231 ctermbg=31 cterm=none



"vim: sw=4
