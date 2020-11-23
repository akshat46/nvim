"     _             _    __ 
"    (_)   ____    (_)  / /_
"   / /   / __ \  / /  / __/
"  / /   / / / / / /  / /_  
" /_/   /_/ /_/ /_/   \__/ 


" Init Sources
source $HOME/.config/nvim/general/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

" Themes
" source $HOME/.config/nvim/colors/coral.vim

" Plugin Configs
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/whichkey.vim
source $HOME/.config/nvim/plug-config/statusline.vim
source $HOME/.config/nvim/plug-config/taboo.vim
source $HOME/.config/nvim/plug-config/smoothie.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/indentguides.vim
source $HOME/.config/nvim/plug-config/clever-f.vim

lua require'colorizer'.setup()
