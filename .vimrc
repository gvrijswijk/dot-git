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
set path+=**
set wildmenu
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
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'cocopon/iceberg.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()


" filetype plugins (what does it do?)
filetype plugin on
filetype indent on

filetype on
let g:python_highlight_all = 1
autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>

syntax enable

set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


colorscheme gruvbox
set background=dark

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

" Notational fzf
let g:nv_search_paths = ['~/Notes/', '~/.notes.md']

" Vim-gitgutter
set updatetime=100
let g:gitgutter_terminal_reports_focus=0

command! MakeTags !ctags -R .
