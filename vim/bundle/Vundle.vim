set nocompatible
filetype off

" Initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'          " Vundle manages itself

" --- Advanced Erlang & LSP Plugins ---
Plugin 'prabirshrestha/vim-lsp'        " The LSP client
Plugin 'mattn/vim-lsp-settings'       " Auto-configs for servers
Plugin 'vim-erlang/vim-erlang-runtime' " Best-in-class syntax
Plugin 'dense-analysis/ale'           " Async Lint Engine

" --- General IDE Features ---
Plugin 'scrooloose/nerdtree'           " File explorer
Plugin 'vim-airline/vim-airline'       " Advanced status bar
Plugin 'ctrlpvim/ctrlp.vim'            " Fuzzy finder

call vundle#end()
filetype plugin indent on
syntax on

" --- Erlang Server (LSP) Definition ---
if executable('erlang_ls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'erlang_ls',
        \ 'cmd': {server_info->['erlang_ls', '--transport', 'stdio']},
        \ 'allowlist': ['erlang'],
        \ })
endif

" --- Advanced Shortcuts ---
nnoremap gd :LspDefinition<CR>
nnoremap K :LspHover<CR>
let g:ale_linters = {'erlang': ['erlang_ls']}
