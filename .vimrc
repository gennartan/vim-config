set number
syntax on
set autoindent
" set columns=80

autocmd BufWritePre * %s/\s\+$//e

" vim-simple-complete
set complete-=t
set complete-=i

" Vim airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'hesselbom/vim-hsftp'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

