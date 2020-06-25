"                                          _                          
"   ____ ___   ____ _    ____     ____    (_)   ____    ____ _   _____
"  / __ `__ \ / __ `/   / __ \   / __ \  / /   / __ \  / __ `/  / ___/
" / / / / / // /_/ /   / /_/ /  / /_/ / / /   / / / / / /_/ /  (__  ) 
"/_/ /_/ /_/ \__,_/   / .___/  / .___/ /_/   /_/ /_/  \__, /  /____/  
"                    /_/      /_/                    /____/

" Leader
let mapleader=","


" Tabs
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-q> :tabclose<CR>

" Sessions
nnoremap <Leader>s :SSave! 
nnoremap <Leader>o :SLoad 

" Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Window resizing
nnoremap <C-w><Left> <C-w>10<<>
nnoremap <C-w><Right> <C-w>10<>>

" NerdTree
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<cr>

nnoremap <Leader>mx :noh<CR>
