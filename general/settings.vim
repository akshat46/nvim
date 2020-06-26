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
colo horizon

" Split
set splitbelow
set splitright

" Show lightline
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

" Colors

highlight Pmenu ctermbg=black guibg=#192330
highlight PmenuSel ctermbg=grey guibg=#4A9387

highlight StartifyHeader  ctermfg=2 guifg=#59B7BB
highlight StartifySection  ctermfg=1 guifg=#59B7BB
highlight StartifyFile ctermfg=5 guifg=#447CA7
