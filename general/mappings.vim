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

" Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NerdTree
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<cr>

nnoremap <Leader>mx :noh<CR>
nnoremap <C-s> <C-u>

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
