"                 __    __     _                          
"   _____  ___   / /_  / /_   (_)   ____    ____ _   _____
"  / ___/ / _ \ / __/ / __/  / /   / __ \  / __ `/  / ___/
" (__  ) /  __// /_  / /_   / /   / / / / / /_/ /  (__  ) 
"/____/  \___/ \__/  \__/  /_/   /_/ /_/  \__, /  /____/  
"                                        /____/ 

" Set line number
set number

" Autocomment new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set encoding for icons
set encoding=UTF-8

" Colors
set termguicolors
syntax enable
let g:gruvbox_sign_column='bg0'
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_italic=1
colorscheme gruvbox 

" Split
set splitbelow
set splitright

set laststatus=2
" Hide mode
set noshowmode

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

" Sessions
" autocmd VimLeave * NERDTreeClose
" autocmd VimLeave * mks! ~/.config/nvim/.sessions/last.vim

" Settings for ctrl-space
set nocompatible
set hidden

" Keep 3 lines below and above the cursor
set scrolloff=3 

" Colors
highlight StartifyHeader  ctermfg=2 guifg=#59B7BB
highlight StartifySection  ctermfg=1 guifg=#59B7BB
highlight StartifyFile ctermfg=5 guifg=#447CA7

set shortmess-=S
