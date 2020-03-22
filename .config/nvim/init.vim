call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim',{'do':'yarn install --frozen-lockfile'}
let g:coc_global_extensions=['coc-json','coc-tsserver','coc-emmet','coc-tslint','coc-prettier']

call plug#end()

syntax on
set guicursor=

