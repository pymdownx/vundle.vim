set nocompatible              " Required for Vundle
filetype off                  " Required for Vundle

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 1. Let Vundle manage Vundle (Required)
Plugin 'VundleVim/Vundle.vim'

" 2. Add your plugins here (Examples below)
" GitHub repository:
Plugin 'tpope/vim-surround'
" Plugin from http://vim-scripts.org:
Plugin 'L9'
" Git repository (non-GitHub):
Plugin 'git://://git.wincent.com'

" 3. Finish the initialization
call vundle#end()            " Required
filetype plugin indent on    " Required
