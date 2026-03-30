set nocompatible              
filetype off                  

" Initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" --- Essential Plugins ---
Plugin 'tpope/vim-sensible'      " Better defaults
Plugin 'tpope/vim-surround'      " Tag/quote management
Plugin 'scrooloose/nerdtree'     " File explorer
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'ctrlpvim/ctrlp.vim'      " Fuzzy finder
Plugin 'sheerun/vim-polyglot'    " Language support
Plugin 'dense-analysis/ale'      " Linting/Syntax check

call vundle#end()            
filetype plugin indent on    

" --- Basic UI Settings ---
syntax on
set number
set relativenumber
set cursorline
