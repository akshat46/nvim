"              __                     _                 
"     ____    / /   ____ _  __  __   (_)   ____    _____
"    / __ \  / /   / __ `/ / / / /  / /   / __ \  / ___/
"   / /_/ / / /   / /_/ / / /_/ /  / /   / / / / (__  ) 
"  / .___/ /_/    \__, /  \__,_/  /_/   /_/ /_/ /____/  
" /_/            /____/   


call plug#begin('~/.config/nvim/plugged')

"------UI------"

" Lightline
Plug 'itchyny/lightline.vim'

" Theme
Plug 'ntk148v/vim-horizon'

" Nerdtree
Plug 'preservim/nerdtree'

" Icons
Plug 'ryanoasis/vim-devicons'

" Start Page
Plug 'mhinz/vim-startify'

" Git Gutter
Plug 'airblade/vim-gitgutter'

"----Editor-----"

" Colorizer
Plug 'chrisbra/Colorizer'

" Commenter
Plug 'preservim/nerdcommenter'

" Detect Indentation
Plug 'tpope/vim-sleuth'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"---Utilities---"

" Git
Plug 'tpope/vim-fugitive'

" Goyo (Zen Mode)
Plug 'junegunn/goyo.vim'

" Display Shortcuts
Plug 'liuchengxu/vim-which-key'

" Easy Movement 
Plug 'justinmk/vim-sneak'

" CtrlP
Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Ctrl-space
" Plug 'vim-ctrlspace/vim-ctrlspace'

call plug#end()
