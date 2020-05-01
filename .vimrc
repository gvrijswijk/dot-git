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
"   0.03 - 2020/05/01 (Added some plugins)
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
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-python/python-syntax'
"Plugin 'w0rp/ale'
Plugin 'jnurmine/Zenburn'
Plugin 'junegunn/fzf'
Plugin 'alok/notational-fzf-vim'

call vundle#end()


" filetype plugins (what does it do?)
filetype plugin on
filetype indent on

filetype on
let g:python_highlight_all = 1
autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>

syntax enable

set number

set background=dark

colorscheme gruvbox

set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ L:\ %l\ \ C:\ %c\ \ %{FugitiveStatusline()}

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

let g:nv_search_paths = ['~/Notes/', '~/.notes.md']

set updatetime=100
let g:gitgutter_terminal_reports_focus=0

