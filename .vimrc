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
let g:netrw_chgwin= winnr()
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"  autocmd 
"augroup END
"nmap <silent> <A-Up> :wincmd k<CR>
"nmap <silent> <A-Down> :wincmd j<CR>
"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>
"set mouse=a
