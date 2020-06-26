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
Plug 'norcalli/nvim-colorizer.lua'

" Commenter
" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

" Detect Indentation
Plug 'tpope/vim-sleuth'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Aligning
Plug 'junegunn/vim-easy-align'

"---Utilities---"

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'tpope/vim-fugitive'

" Git Commit viewer
Plug 'junegunn/gv.vim'

" Terminal
Plug 'voldikss/vim-floaterm'

" Goyo (Zen Mode)
Plug 'junegunn/goyo.vim'

" Display Shortcuts
Plug 'liuchengxu/vim-which-key'

" Easy Movement 
Plug 'justinmk/vim-sneak'


call plug#end()
