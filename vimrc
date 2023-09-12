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
set cursorline


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

" color schemes
syntax on
set t_Co=256
"let g:airline_theme='papercolor'
"colorscheme onehalfdark
colorscheme solarized8
"colorscheme seoul256
set background=light
let g:airline_theme='onedark'
"colorscheme onehalflight
"set background=dark
"colorscheme solarized

" ale
" only run linter on file save and opening
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1


" load plugins
execute pathogen#infect()

fu! CycleThemes()
    if &background ==# "dark"
        colorscheme seoul256
        set background=light
    else
        colorscheme gruvbox
        set background=dark
    endif
endfunction

map <Leader>+ :call CycleThemes()<CR>
map <Leader>= :colorscheme solarized8<CR> :set background=light<CR>

" set rtp+=/opt/homebrew/opt/fzf
