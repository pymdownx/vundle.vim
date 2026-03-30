" --- VUNDLE BOILERPLATE ---
set nocompatible              " Required
filetype off                  " Required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" --- ESSENTIAL PLUGINS ---
Plugin 'tpope/vim-sensible'          " Better default settings
Plugin 'tpope/vim-surround'          " Edit tags/quotes/brackets
Plugin 'tpope/vim-commentary'        " Easy commenting (gcc)
Plugin 'scrooloose/nerdtree'         " File explorer sidebar
Plugin 'vim-airline/vim-airline'     " Status bar styling
Plugin 'ctrlpvim/ctrlp.vim'          " Fuzzy file finder
Plugin 'airblade/vim-gitgutter'      " Shows git diff in the gutter

" --- SYNTAX & LANGUAGES ---
Plugin 'sheerun/vim-polyglot'        " Support for 100+ languages
Plugin 'dense-analysis/ale'          " Linter / Syntax checking

" --- WRAP IT UP ---
call vundle#end()            " Required
filetype plugin indent on    " Required

" --- OPTIONAL SETTINGS ---
syntax on                    " Enable syntax highlighting
set number                   " Show line numbers
let g:NERDTreeShowHidden=1   " Show hidden files in NERDTree
