" set leader to backslash
let mapleader="\\"
map <Leader>t <Plug>TaskList
nmap <F8> :TagbarToggle<CR>
nmap <F4> :NERDTree<CR>

" ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UtiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set guifont=Monospace\ 14

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=0
" autocmd BufReadPre *.py setlocal textwidth=79
set expandtab
set autoindent
set fileformat=unix


" nerdtree config
let NERDTreeIgnore = ['\.pyc$']

"enable folding
set foldmethod=indent
set foldlevel=99

"encoding
set encoding=utf-8

"set line numbers
set nu

"access system clipboard
set clipboard=unnamed

"show the matching part of the pair for [] {} ()
set showmatch

"allow airline in single window
set laststatus=2

"python syntax highlighting
let python_highlight_all = 1

syntax on
set t_Co=256

" Unified color scheme
set background=light
let g:airline_theme='papercolor'
colorscheme snow

let g:pathogen_disabled = ["ale"]
" load plugins
execute pathogen#infect()
