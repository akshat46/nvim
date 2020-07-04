"     _             _    __ 
"    (_)   ____    (_)  / /_
"   / /   / __ \  / /  / __/
"  / /   / / / / / /  / /_  
" /_/   /_/ /_/ /_/   \__/ 


" Init Sources
source $HOME/.config/nvim/general/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

" Plugin Configs
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/whichkey.vim


lua require'colorizer'.setup()
