" BASIC CONFIGURATION --------------------------------------------------------
set nu
"color desert
set t_Co=256


set colorcolumn=101
"set columns=100

set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

autocmd Filetype r setlocal tabstop=2 "expandtab tabstop=2 "shiftwidth=2 softtabstop=2


" PLUGINS -------------------------------------------------------------------
" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Get Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'preservim/nerdtree'
Plug 'jpalardy/vim-slime'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sheerun/vim-polyglot'
" Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'lervag/vimtex'
call plug#end()


" PLUGIN CONFIGURATIONS -----------------------------------------------------
" vim-signify -----
set updatetime=100
let g:signify_realtime = 1


" vim-slime -----
let g:slime_target = "tmux"
let g:slime_python_ipython = 1


" COLOR SCHEME -----
syntax on
colorscheme spacecamp "onedark, jellybeans, minimalist


" Enable CursorLine
set cursorline
highlight clear CursorLine


" Default Colors for CursorLine
highlight  CursorLine cterm=underline


" LIGHTLINE.VIM -----
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" VIM-RAINBOW -----
let g:rainbow_active=1


" VIM-PANDOC -----
let g:pandoc#modules#disabled = ['spell', 'folding']


" VIM-POLYGLOT -----
" fix latex-box conflict for vimtex
let g:polyglot_disabled = ['latex']
