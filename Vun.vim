set nocompatible              " Required for Vundle
filetype off                  " Required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'          
Plugin 'prabirshrestha/vim-lsp'        " LSP Client
Plugin 'mattn/vim-lsp-settings'       " Auto-config for LSP
Plugin 'vim-erlang/vim-erlang-runtime' " Best Erlang syntax/indent
Plugin 'dense-analysis/ale'           " Linting & fixing

call vundle#end()
filetype plugin indent on
syntax on

" --- Erlang Server (LSP) Config ---
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
