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
" 1. Define the Erlang LS Server
if executable('erlang_ls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'erlang_ls',
        \ 'cmd': {server_info->['erlang_ls', '--transport', 'stdio']},
        \ 'allowlist': ['erlang'],
        \ })
endif

" 2. Advanced Keyboard Shortcuts
nnoremap <buffer> gd :LspDefinition<CR>
nnoremap <buffer> K :LspHover<CR>
nnoremap <buffer> <leader>r :LspRename<CR>
nnoremap <buffer> <leader>f :LspReferences<CR>

" 3. Integrate ALE with LSP (Optional but recommended)
let g:ale_linters = {'erlang': ['erlang_ls', 'syntaxerl']}
let g:ale_fixers = {'erlang': ['remove_trailing_lines', 'trim_whitespace']}

