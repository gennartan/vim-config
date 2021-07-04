set number
syntax on
set autoindent
" set columns=80

autocmd BufWritePre * %s/\s\+$//e

" vim-simple-complete
set complete-=t
set complete-=i

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'mhinz/vim-startify'
call plug#end()

