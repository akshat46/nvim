"          __             __         
"  _____  / /_   _____   / /    ____ 
" / ___/ / __/  / ___/  / /    / __ \
"/ /__  / /_   / /     / /    / /_/ /
"\___/  \__/  /_/     /_/    / .___/ 
"                           /_/    

" Starting directory specification
" 'c' - the directory of the current file
" 'r' - the nearest ancestor with vcs
let g:ctrlp_working_path_mode = 'rc'

let g:ctrlp_prompt_mappings = {
    \ 'PrtDeleteEnt()':       ['<c-l>'],
    \ }
