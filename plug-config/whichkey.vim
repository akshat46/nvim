"              __      _            __      __                 
" _      __   / /_    (_)  _____   / /_    / /__  ___    __  __
"| | /| / /  / __ \  / /  / ___/  / __ \  / //_/ / _ \  / / / /
"| |/ |/ /  / / / / / /  / /__   / / / / / ,<   /  __/ / /_/ / 
"|__/|__/  /_/ /_/ /_/   \___/  /_/ /_/ /_/|_|  \___/  \__, /  
"                                                     /____/   

call which_key#register(',', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

let g:which_key_map =  {}

let g:which_key_use_floating_win = 0

let g:which_key_sep = '→'

highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_map['/'] = [ ':Commentary'  , 'comment' ]
let g:which_key_map['b'] = [ ':CtrlPBuffer'  , 'buffers' ]
let g:which_key_map['o'] = [ ':SLoad ~/.config/nvim/.sessions/' , 'save session' ]
let g:which_key_map['p'] = [ ':p "0p'  , 'paste without yank' ]
let g:which_key_map['q'] = [ ':noh'  , 'remove search highlight' ]
let g:which_key_map['r'] = [ ':edit!'  , 'reload file' ]
let g:which_key_map['s'] = [ ':SSave! ~/.config/nvim/.sessions/' , 'save session' ]
