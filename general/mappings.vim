"                                          _                          
"   ____ ___   ____ _    ____     ____    (_)   ____    ____ _   _____
"  / __ `__ \ / __ `/   / __ \   / __ \  / /   / __ \  / __ `/  / ___/
" / / / / / // /_/ /   / /_/ /  / /_/ / / /   / / / / / /_/ /  (__  ) 
"/_/ /_/ /_/ \__,_/   / .___/  / .___/ /_/   /_/ /_/  \__, /  /____/  
"                    /_/      /_/                    /____/

" Leader
let mapleader=","

" Esc
imap ,. <Esc>

" copy to clipboard
vnoremap <S-y> "+y

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

nnoremap L $
nnoremap H ^
vnoremap L g_
vnoremap H ^

nnoremap <Leader>mx :noh<CR>

inoremap <A-right> <C-o>

nnoremap 9 $

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" blackhold operator
nnoremap x "_x
nnoremap d "_d
nnoremap c "_c
vnoremap d "_d
vnoremap c "_c

nmap <space> <ESC>
vmap <space> <ESC>

" relative line numbers
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
