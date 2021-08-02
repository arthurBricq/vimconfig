""" Vundle setup

set nocompatible      " be iMproved, required
filetype off          " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PLUGINS list
"Plugin 'davidhalter/jedi-vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'python-mode/python-mode'
Plugin 'jupyter-vim/jupyter-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



""" Personal setups

" Setting for YMC with c code
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_c-c++_conf.py"
"let g:ycm_global_ycm_extre_conf = '~/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Set vim autocompletion for normal mode
set wildmenu
set wildmode=longest,list,full
let g:ycm_autoclose_preview_window_after_completion=1

" Map to run a selection of code (in visual mode) or run full code in normal
" mode
noremap <leader>p :w !python<cr>

" Enable seeing the command while typing
set showcmd

" Highlight while searching
set incsearch

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
" let python_highlight_all = 1
" let python_highlight_space_errors = 0
" let python_space_error_highlight = 0

" map ctrl+d to open a terminal to the right
noremap <C-d> :vertical :botright :terminal<CR>

" setups for jupyter kernel
nnoremap <C-r> :JupyterRunFile<CR>
nnoremap <C-x> :JupyterSendCell<CR>
nnoremap <C-e> :JupyterSendRange<CR>


" folding methods
" za = fold current indentation
" zR = unfold everything
" zM = folds everything
set foldmethod=indent
set foldlevelstart=20


" indicate switching to insert ode with cursor line option 
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" a line for Tagbar open with F8
nmap <F8> :TagbarToggle<CR>

" remove search highlight when pressing escape, until next search is triggered
" nnoremap <esc> :noh<return><esc>
nnoremap <esc><esc> :noh<return>
set hlsearch

