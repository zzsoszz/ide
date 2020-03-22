call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-system-copy'

let g:coc_global_extensions  = ['coc-json','coc-tsserver','coc-emmet','coc-tslint','coc-prettier']

call plug#end()

syntax on

set guicursor=


" let mapleader = ";"
" let g:mapleader = ";"
" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p


let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'
