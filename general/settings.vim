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

"{{{ Colors
set termguicolors
syntax enable
let g:gruvbox_sign_column='bg0'
let g:gruvbox_vert_split='bg0'
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_italic=1
colorscheme gruvbox 
set fillchars+=vert:▊
hi VertSplit ctermbg=NONE guibg=NONE guifg=#151D28
"{{{ Terminal Colors
let g:terminal_color_0 =      '#2A3C52'
let g:terminal_color_8 =      '#192330'
let g:terminal_color_1 =      '#88517E'
let g:terminal_color_9 =      '#995172' 
let g:terminal_color_2 =      '#4A798C'
let g:terminal_color_10=      '#4A8889'
let g:terminal_color_3 =      '#A79696'
let g:terminal_color_11=      '#B29C8B'
let g:terminal_color_4 =      '#4468A7' 
let g:terminal_color_12=      '#4474A7'
let g:terminal_color_5 =      '#4A498A'
let g:terminal_color_13=      '#434094'
let g:terminal_color_6 =      '#9C7688'
let g:terminal_color_14=      '#AA787A'
let g:terminal_color_7 =      '#5996BB'
let g:terminal_color_15=      '#59A9BB'
"}}}
"}}}
