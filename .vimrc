set number
syntax on
" set columns=80
" set colorcolumn=80
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set expandtab
set foldenable
" set foldmethod=indent
autocmd BufWritePre * :%s/\s\+$//e

set path=.,,**

let g:netrw_browse_split = 3

" VIM-GO
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
setlocal omnifunc=go#Complete

execute pathogen#infect()
filetype plugin indent on

" Vim tag
nmap <F12> :TagbarToggle<CR>

" Vim airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Vim syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:workspace_session_directory = $HOME . '/.vim/sessions/'

runtime ftplugin/man.vim

abbreviate atrace LOG4CXX_TRACE(logger,
abbreviate adebug LOG4CXX_DEBUG(logger,
abbreviate ainfo LOG4CXX_INFO(logger,
abbreviate awarn LOG4CXX_WARN(logger,
abbreviate aerr LOG4CXX_ERROR(logger,

abbreviate apdebug app_logger->log(apticomLogger::log_level::DEBUG,
abbreviate apinfo app_logger->log(apticomLogger::log_level::INFO,
abbreviate apwarn app_logger->log(apticomLogger::log_level::WARN,
abbreviate aperr app_logger->log(apticomLogger::log_level::ERR,

call plug#begin()
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go'
Plug 'editorconfig/editorconfig-vim'
Plug 'szw/vim-tags'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'hesselbom/vim-hsftp'
Plug 'vim-syntastic/syntastic'
Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
call plug#end()

