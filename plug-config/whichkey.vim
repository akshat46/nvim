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

set timeoutlen=400

highlight default link WhichKey          diffAdded
highlight default link WhichKeySeperator String
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      diffRemoved

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" initial 
let g:which_key_map['/'] = [ ":'<,'>Commentary",                  'comment' ]
let g:which_key_map[','] = [ ":w",                                'save file' ]
let g:which_key_map[' '] = [ ':CtrlPBuffer',                      'buffers' ]
let g:which_key_map['i'] = [ ':set shiftwidth=4',                 'reset indentation' ]
let g:which_key_map['p'] = [ ':p "0p',                            'paste without yank' ]
let g:which_key_map['r'] = [ ':edit!',                            'reload file' ]

let g:which_key_map['m'] = {
            \ 'name' : '+miscellaneous',
            \ 'c': [':ColorToggle',                               'toggle colorizer'],
            \}

" Align
let g:which_key_map['a'] = {
            \ 'name' : '+align',
            \ ',' : [":'<,'>EasyAlign,",                          'align around ,'],
            \ '.' : [":'<,'>EasyAlign.",                          'align around .'],
            \ ':' : [":'<,'>EasyAlign:",                          'align around :'],
            \ '=' : [":'<,'>EasyAlign=",                          'align around ='],
            \ ' ' : [':EasyAlign\ ',                              'align around space'],
            \ 'a' : [':EasyAlign',                                'interactive align mode'],
            \}
