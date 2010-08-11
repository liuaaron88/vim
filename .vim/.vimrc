"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码
set fenc=utf-8
set enc=utf-8
set fileencodings=utf-8,gb18030,ucs-bom,gb2312,cp936,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8,gb18030,ucs-bom,gb2312,cp936,big5,euc-jp,euc-kr,latin1
let &termencoding=&encoding


syntax on " 语法高亮

set nocompatible   " 不要使用vi的键盘模式，而是vim自己的

set history=300   " history文件中需要记录的行数

set confirm   " 在处理未保存或只读文件的时候，弹出确认

set clipboard+=unnamed   " 与windows共享剪贴板
set nu " 显示行号

set viminfo+=!    " 保存全局变量

set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割

set hid "在没有保存的时候可以切换buffer

:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white " 高亮字符，让其不受100列限制
:match OverLength '\%101v.*'

highlight StatusLine guifg=SlateBlue guibg=Yellow   " 状态行颜色
highlight StatusLineNC guifg=Gray guibg=White

" xterm 设置
set term=xterm-256color
colorscheme bensday
"if &term=="xterm"
"    set t_Co=8
"    set t_Sb=^[[4%dm
"    set t_Sf=^[[3%dm
"endi

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup   " 不要备份文件（根据自己需要取舍）

"setlocal noswapfile   " 不要生成swap文件，当buffer被丢弃的时候隐藏它
"set bufhidden=hide
set dir=~/.vim/tmp

set linespace=0   " 字符间插入的像素行数目

set wildmenu   " 增强模式中的命令行自动完成操作

set ruler   " 在状态行上显示光标所在位置的行号和列号
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

set cmdheight=3   " 命令行（在状态行下）的高度，默认为1，这里是2

set backspace=2   " 使回格键（backspace）正常处理indent, eol, start等

"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"set shortmess=atI   " 启动的时候不显示那个援助索马里儿童的提示

set report=0   " 通过使用: commands命令，告诉我们文件的哪一行被改变过

set noerrorbells   " 不让vim发出讨厌的滴滴声

if has('autocmd')
    autocmd GUIEnter * set vb t_vb=
endif


set fillchars=vert:\ ,stl:\ ,stlnc:\   " 在被分割的窗口间显示空白，便于阅读

set showcmd   "在屏幕最后一行显示 (部分的) 命令

set guitablabel=%{tabpagenr()}.%t\ %m   "在每个tab上显示编号

set autoread                " 自动重新加载外部修改内容
set autochdir               " 自动切换当前目录为当前文件所在的目录

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch   " 高亮显示匹配的括号

set matchtime=5   " 匹配括号高亮的时间（单位是十分之一秒）

"set ignorecase   " 在搜索的时候忽略大小写

set nohlsearch   " 不要高亮被搜索的句子（phrases）

set incsearch   " 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）

set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$   " 输入:set list命令是应该显示些啥？

set scrolloff=3   " 光标移动到buffer的顶部和底部时保持3行距离

set novisualbell   " 不要闪烁

set formatoptions=tcrqn   " 自动格式化

set autoindent   " 继承前一行的缩进方式，特别适用于多行注释

set smartindent   " 为C程序提供自动缩进

set cindent   " 使用C样式的缩进

set tabstop=4   " 制表符为4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

set expandtab   " 要用空格代替制表符

"set smarttab   " 在行和段开始处使用制表符

"set nowrap   " 不要换行

set foldmethod=manual "手动折叠

set laststatus=2   " 总是显示状态行

" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}].[%{&ff}].ASCII=[\%3.3b\].HEX=[\%3.3b\].[line:%l/%L,Column:%c][%p%%]


"set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"缩进相关

" ambiwidth 默认值为 single。在其值为 single 时，
" 若 encoding 为 utf-8，gvim 显示全角符号时就会
" 出问题，会当作半角显示。
set ambiwidth=double

filetype on   " 侦测文件类型

filetype plugin on   " 载入文件类型插件

filetype indent on   " 为特定文件类型载入相关缩进文件





"au FileType c,cpp call GnuIndent()
au FileType diff  setlocal shiftwidth=4 tabstop=4
au FileType html  setlocal autoindent indentexpr=
au FileType changelog setlocal textwidth=76

" Recognize standard C++ headers
au BufEnter /usr/include/c++/*    setf cpp
au BufEnter /usr/include/g++-3/*  setf cpp
"au BufEnter ~/Source/cpp_src/*  setf cpp
"au BufEnter ~/Source/cpp_src/stl/* setf cpp
" Setting for files following the GNU coding standard
au BufEnter /usr/*                call GnuIndent()

au BufEnter *.cpp setf cpp
au BufEnter *.cxx setf cpp
au BufEnter *.hpp setf cpp
au BufEnter *.c++ setf cpp
au BufEnter *.cc setf cpp
au BufEnter *.h setf cpp
au BufEnter *.c setf c
au BufEnter *.tex setf tex


function! RemoveTrailingSpace()
    if $VIM_HATE_SPACE_ERRORS != '0' &&
                \(&filetype == 'c' || &filetype == 'cpp' || &filetype == 'vim')
        normal m`
        silent! :%s/\s\+$//e
        normal ``
    endif
endfunction
" Remove trailing spaces for C/C++ and Vim files
au BufWritePre *                  call RemoveTrailingSpace()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"AutoCommand
"新建.c,.h.cpp,.sh,.java,.php,.py文件自动打开Taglist
autocmd BufNewFile *.[ch],*.cpp,*.sh,*.java,*.php,*.py exec ":call SetTitle()"
"读入.c,.h.cpp,.sh,.java,.php,.py文件自动打开Taglist
"autocmd BufRead *.[ch],*.cpp,*.sh,*.java,*.php,*.py exec ":Tlist"
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
"如果是新建的php文件，则自动定位到最后第二行
autocmd BufNewFile *.php normal k



" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示

if has("autocmd")
	let php_folding = 0
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
"autocmd FileType php set omnifunc=phpcomplete#Complete
"autocmd FileType php set omnifunc=htmlcomplete#Complete
autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
"autocmd FileType c,cpp,cs source ~/.vim/cpp/project.vim
autocmd BufEnter *.tex source ~/.vim/tex/project.vim
"autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
autocmd Filetype html,xml,xsl source ~/.vim/plugin/closetag.vim
"设置javascriptlint

"autocmd FileType javascript set makeprg=/home/vincent/bin/javascript/jsl\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -conf\ '/home/xp/bin/js/jsl.conf'\ -process\ %
autocmd FileType javascript inoremap <silent> <F9> <C-O>:make<CR>
autocmd FileType javascript map <silent> <F9> :make<CR>
" 打开javascript折叠
 let b:javascript_fold=1
 " 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
 "设置字典 ~/.vim/dict/javascript.dict是字典文件的路径
 autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
 autocmd FileType html set dictionary=~/.vim/dict/html.dict
 autocmd FileType php set dictionary=~/.vim/dict/php.dict
 autocmd FileType c set dictionary=~/.vim/dict/word.dict


autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif " has("autocmd")

" 能够漂亮地显示.NFO文件
function! SetFileEncodings(encodings)
    let b:myfileencodingsbak=&fileencodings
    let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
    let &fileencodings=b:myfileencodingsbak
    unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
"au BufEnter *.txt setlocal ft=txt


"Gui action mapping
nnoremap <F7> :set guioptions+=m<CR>
nnoremap <C-F7> :set guioptions-=m<CR>

"字典完成
"set dictionary-=~/.vim/dic/words dictionary+=~/.vim/dic/words

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Keybinding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 双反斜杠\\即可打开bufexplorer
map <leader><leader> \be

nnoremap <silent> <F4> :tabprevious<CR>

:set cscopequickfix=s-,c-,d-,i-,t-,e-
nnoremap <silent> <F3> :Grep<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {  }<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" mapping
" 如果下拉菜单弹出，回车映射为接受当前所选项目，否则，仍映射为回车；
"
" 如果下拉菜单弹出，CTRL-J映射为在下拉菜单中向下翻页。否则映射为CTRL-X CTRL-O；
"
" 如果下拉菜单弹出，CTRL-K映射为在下拉菜单中向上翻页，否则仍映射为CTRL-K；
"
" 如果下拉菜单弹出，CTRL-U映射为CTRL-E，即停止补全，否则，仍映射为CTRL-U；
"inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
:inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
:inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
"
:inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"a

"在有弹出菜单的情况下
:inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
:inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
:inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

"加上日期 对应F2
:map <F2> <ESC>gg:read !date<CR>

"选中一段文字并全文搜索这段文字
:vnoremap <silent> ,/ y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
:vnoremap <silent> ,? y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
"查找选中文本
"vnoremap <c-s> "zy/<c-r>=substitute(escape(@z,'[]*.\\/'),'\n', '\\n', 'g')<cr><cr><cr>

"Super paste
inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

let g:bufExplorerSortBy = "name"
"""""""""""""""""""""""""""""""""""""""""
"TextMate-Like
"""""""""""""""""""""""""""""""""""""""""
"set runtimepath+=~/.vim/textmateOnly/
"set runtimepath+=~/.vim/textmateOnly/after/

"字典
"set keywordprg=~/Apps/dicty
:inoremap <C-f> <esc>:!~/.vim/Apps/dicty <cWORD><cr>a
"""""""""""""""""""""""""""""""""""""""""

""使用模板, 新建或打开空文件时自动调用模板
"autocmd FileType perl
"         \ if 1 == line('$') && empty(getline(1)) |
"         \   if has('gui_running')      |
"         \      0r D:/xxxxx/templates\pl.pl |
"         \   else            |
"         \      0r /xxxxx/templates/pl.pl |
"         \   endif   |
"         \   normal G |
"         \ endif
"
autocmd BufEnter *.tex
         \ if 1 == line('$') && empty(getline(1)) |
         \   if has('gui_running')      |
         \      0r ~/.vim/tex/xetex.template |
         \   else            |
         \      0r ~/.vim/tex/xetex.template |
         \   endif   |
         \   normal G |
         \ endif

autocmd BufEnter resume.tex
         \ if 1 == line('$') && empty(getline(1)) |
         \   if has('gui_running')      |
         \      0r ~/.vim/tex/resume.tex |
         \   else            |
         \      0r ~/.vim/tex/resume.tex |
         \   endif   |
         \   normal G |
         \ endif

"查找包含符合特定模式的字符串的行数
function! MyCountMatchLine(MyRegMatch) range
   let matchCount = 0
   for LineNum in range(a:firstline,a:lastline)
      let LineContent = getline(LineNum)
      if LineContent =~ a:MyRegMatch
         let matchCount += 1
      endif
   endfor
   echo matchCount
endfunction

"查找符合特定模式的字符串的个数
function! MyCountPattern(MyRegMatch) range
   let matchCount = 0
   for LineNum in range(a:firstline,a:lastline)
      let LineContent = getline(LineNum)
      let MyLineTmp = substitute(LineContent, a:MyRegMatch, '', 'g')
      let matchCount -= strlen(substitute(MyLineTmp, "[^@]", '', 'g'))
      let MyLineTmp = substitute(LineContent, a:MyRegMatch, '@', 'g')
      let matchCount += strlen(substitute(MyLineTmp, "[^@]", '', 'g'))
   endfor
   echomsg matchCount
endfunction

" nerd tree
nmap    <leader>e   :NERDTreeToggle<CR>

" paste
set pastetoggle=<leader>p


"定义函数SetTitle，自动插入文件头
func! SetTitle()
        "如果文件类型为.sh文件
        if &filetype == 'sh' || &filetype == 'python'
                call setline(1, "\#------------------------------------------------------------------------")
                call append(line("."), "\# Author: Aaron.Liu")
                call append(line(".")+1, "\#Email: lmguy@163.com")
                call append(line(".")+2, "\# File Name: ".expand("%"))
                call append(line(".")+3, "\# Description: ")
                call append(line(".")+4, "\#   ")
                call append(line(".")+5, "\# Edit History: ")
                call append(line(".")+6, "\#   ".strftime("%Y-%m-%d")."    File created.")
                call append(line(".")+7, "\#------------------------------------------------------------------------")
                call append(line(".")+8, "")
                "其它程序文件
"        else
"                call setline(1, "/**")
"                call append(line("."), "-------------------------------------------------------------------------")
"                call append(line(".")+1, " Author: Aaron.Liu")
"                call append(line(".")+2, " Email: lmguy@163.com")
"                call append(line(".")+3, " File Name: ".expand("%"))
"                call append(line(".")+5, "   ")
"                call append(line(".")+7, "   ".strftime("%Y-%m-%d")."    File created.")
"                call append(line(".")+8, "-------------------------------------------------------------------------")
"                call append(line(".")+9, "**/")
"                call append(line(".")+10, "")
        endif
        "如果为php文件，添加相应头和尾
        if &filetype == 'php'
                call append(0, "<?php")
                call append(line("$"), "?>")
        endif
        "如果为sh文件，添加相应的头
        if &filetype == 'sh'
                call append(0, "\#!/bin/bash")
                "如果为python文件，添加相应的头和编码设定
        elseif &filetype == 'python'
                call append(0, "\#!/usr/bin/python")
                call append(1, "\# -*- coding: utf-8 -*-")
        endif
endfunc
" change linux  to linux automoticlly
:iabbr  linxu  linux
:iabbr  mitake mistake
set fileformats=unix,dos
"解决菜单乱码
source /usr/share/vim/vim72/delmenu.vim
source /usr/share/vim/vim72/menu.vim
language message zh_CN.UTF-8
"set cursorline      "增加鼠标水平线
"set cursorcolumn

"-------------------------------------------------------------------------
"Taglist: Tlist
"-------------------------------------------------------------------------
let Tlist_Show_One_File=1
let Tlist_exit_OnlyWindow=1
let Tlist_Use_Right_Window=1



"-------------------------------------------------------------------------
"WinManager:WMToggle
"-------------------------------------------------------------------------

let g:winManagerWindowLayout='FileExplorer|Taglist'
let g:winManagerWidth=25
"let g:defaultExplorer=0
nmap wm : WMToggle<cr>

"-------------------------------------------------------------------------
"netrw文件浏览器
"-------------------------------------------------------------------------
let g:netrw_winsize = 25 "浏览器宽度
set clipboard+=unnamed

"判断是终端还是gvim
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

"在gvim中高亮当前行
"if (g:isGUI)
"    set cursorline
   " hl cursorline guibg=#333333
   " hl cursorcolumn guibg=#333333
"    set guifont=Conolas\ 11
"    set guifontwide=Conolas\ 11
"endif

"Vim UI {
set cursorline " highlight the current line
"set cursorcolumn " highlight the current column
"}



function! CurDir()
    let curdir = substitute(getcwd(),$HOME,"~","g")
    return curdir
endfunction



function! GnuIndent()
    setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal tabstop=8
endfunction

" make it easy to update/reload my .vimrc, <Leader> is \ by default
:nmap <Leader>s :source ~/.vimrc
:nmap <Leader>v :e ~/.vimrc

