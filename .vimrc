"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Maintained
"   Gerben van Rijswijk
"   https://gerbenvanrijswijk.nl
"   gvrijswijk@gmail.com
"
" Version
"   0.01 - 2017/11/24
"   0.02 - 2019/06/01 (Added Vundle, colorschemes)
" 
" Sources
"   https://github.com/amix
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle specific
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'morhetz/gruvbox'

call vundle#end()


" filetype plugins (what does it do?)
filetype plugin on
filetype indent on

syntax enable

set number

set background=dark

"colorscheme koehler
colorscheme gruvbox
"colorscheme solarized

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
