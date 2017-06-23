execute pathogen#infect()
filetype plugin indent on
colo desert
syntax on
hi Comment ctermbg=blue ctermfg=white
set tabstop=2
set expandtab
set smartindent
set cindent
set pastetoggle=<f5>
set shiftwidth=2
set ruler
set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=yellow
imap <Tab> <C-P>
let @d=':!rm "%"'
set clipboard=unnamed
set directory=$HOME/.vim/swapfiles//
