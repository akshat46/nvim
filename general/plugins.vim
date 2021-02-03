"              __                     _                 
"     ____    / /   ____ _  __  __   (_)   ____    _____
"    / __ \  / /   / __ `/ / / / /  / /   / __ \  / ___/
"   / /_/ / / /   / /_/ / / /_/ /  / /   / / / / (__  ) 
"  / .___/ /_/    \__, /  \__,_/  /_/   /_/ /_/ /____/  
" /_/            /____/   


call plug#begin('~/.config/nvim/plugged')

"------UI------"

" Vim Tips
Plug 'michaelb/vim-tips'

" Nerdtree
Plug 'preservim/nerdtree'

" Icons
Plug 'ryanoasis/vim-devicons'

" Start Page
Plug 'mhinz/vim-startify'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Custom Gruvbox
Plug 'akshat46/gruvbox'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

"----Editor-----"

" Selection
Plug 'gcmt/wildfire.vim'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'

" Better f/F(without ,)
Plug 'rhysd/clever-f.vim'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'
Plug 'chrisbra/Colorizer'

" Commenter
" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

" Detect Indentation
Plug 'tpope/vim-sleuth'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Aligning
Plug 'junegunn/vim-easy-align'

" Surround
Plug 'tpope/vim-surround'

" auto-close brackets
Plug 'jiangmiao/auto-pairs'

" Indentation guide
Plug 'Yggdroot/indentLine'

"---Utilities---"

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Snippet
Plug 'honza/vim-snippets'

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
Plug 'kshenoy/vim-signature'

" Tabline helper
Plug 'akshat46/taboo.vim'

" Smooth scroll
Plug 'psliwka/vim-smoothie'

call plug#end()
