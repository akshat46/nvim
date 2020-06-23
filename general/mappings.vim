"                                          _                          
"   ____ ___   ____ _    ____     ____    (_)   ____    ____ _   _____
"  / __ `__ \ / __ `/   / __ \   / __ \  / /   / __ \  / __ `/  / ___/
" / / / / / // /_/ /   / /_/ /  / /_/ / / /   / / / / / /_/ /  (__  ) 
"/_/ /_/ /_/ \__,_/   / .___/  / .___/ /_/   /_/ /_/  \__, /  /____/  
"                    /_/      /_/                    /____/

" Leader
let mapleader=","


" Clear Search
nnoremap <Leader>/ :noh<CR>

" Reload File
nnoremap <Leader>r :edit!<CR>

" Tabs
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-q> :tabclose<CR>

" Sessions
nnoremap <Leader>s :NERDTreeClose \| :mks! ~/.config/nvim/.sessions/
nnoremap <Leader>o :source ~/.config/nvim/.sessions/

" Paste  w/o yanking
xnoremap <Leader>p "0p
nnoremap <Leader>p "0p

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

" Colorizer
nnoremap <C-c><C-c> :ColorToggle <CR>

" Ctrl-P
nnoremap <Leader><space> :CtrlPBuffer<CR>
