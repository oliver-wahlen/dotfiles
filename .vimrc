
" For use of vundle and stuff
" Enables vim func instead of compatible with vi

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'

let g:ale_linters = {
\   'python': ['pylint'],
\   'cpp': ['cpplint'],
\}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " require

" Enable Ale
let g:ale_enabled = 1
" Enable automatic fixing on save
let g:ale_fix_on_save = 1

" syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" line numbers.
set number

" relative linenumbers while current line is still absolute 
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" backspace over anything
set backspace=indent,eol,start

" enables hidden buffers 
set hidden

" Case sensitive only when capital letters are present
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" Unbinds arrowkeys to learn proper vim usage
"nnoremap <Left>  :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up>    :echoe "Use k"<CR>
"nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
"inoremap <Left>  <ESC>:echoe "Use h"<CR>
"inoremap <Right> <ESC>:echoe "Use l"<CR>
"inoremap <Up>    <ESC>:echoe "Use k"<CR>
"inoremap <Down>  <ESC>:echoe "Use j"<CR>

" omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete


