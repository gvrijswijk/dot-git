""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintained
"   Gerben van Rijswijk
"   https://gerbenvanrijswijk.nl
"   gvrijswijk@gmail.com
"
" Version
"   0.01 - 2017/11/24
" 
" Sources
"   https://github.com/amix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" filetype plugins (what does it do?)
filetype plugin on
filetype indent on

syntax enable

set number

colorscheme koehler

set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si
set wrap
