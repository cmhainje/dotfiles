syntax on " Syntax highlighting
set number         " Line numbering
set relativenumber " Relative numbering
set ts=4 " Tabs are 4 spaces
set shiftwidth=4
set autoindent
set expandtab  " Expand tabs into spaces
set showmatch  " Show matching pair for brackets
set encoding=utf8

let python_highlight_all = 1 " Python highlighting features

set wrap " soft wrap at edge of screen
set linebreak " don't wrap in middle of word
set nolist " let linebreak work
set backspace=2 " allow backspacing over line break
set hlsearch " highlight search results

" Disable line numbers in terminal
" autocmd TermOpen * setlocal nonumber norelativenumber

" Install vim-plug if not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'valloric/youcompleteme'
" Plug 'sheerun/vim-polyglot'
Plug 'bfrg/vim-cpp-modern'
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
call plug#end()

" colorscheme Tomorrow-Night-Eighties
colorscheme nord

let g:airline_theme='deus'

" set pythonthreehome=
" set pythonthreedll=
" let g:ycm_python_binary_path = '/home/chainje/.conda/envs/analysis/bin/python'
" let g:ycm_path_to_python_interpreter = '/home/chainje/.conda/envs/analysis/bin/python'
" let g:ycm_max_diagnostics_to_display = 0 " disable limit


" Use ctrl+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Use ctrl+z to toggle Goyo mode
map <C-z> :Goyo<CR>

" ---
" A tab-like interface for managing buffers
" Following https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/" ---

" Set leader to comma
let mapleader = ","
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Allow modified buffers to be hidden
set hidden
" Open a new, empty buffer
nmap <leader>T  :enew<cr>
" Move to the next buffer
nmap <leader>l  :bnext<cr>
" Move to the previous buffer
nmap <leader>h  :bprevious<cr>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
