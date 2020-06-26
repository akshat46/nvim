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

let g:which_key_sort_horizontal = 1

set timeoutlen=400

highlight default link WhichKey          diffAdded
highlight default link WhichKeySeperator String
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      diffRemoved

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" initial 
let g:which_key_map['/'] = [ ":'<,'>Commentary",  'comment' ]
let g:which_key_map[','] = [ ":w",                'save file' ]
let g:which_key_map['='] = [ "<C-W>=",                'reset window size' ]
let g:which_key_map[' '] = [ ':Buffers',          'buffers' ]
let g:which_key_map['i'] = [ ':set shiftwidth=4', 'reset indentation' ]
let g:which_key_map['p'] = [ ':p "0p',            'paste without yank' ]
let g:which_key_map['r'] = [ ':edit!',            'reload file' ]

let g:which_key_map.m = {
            \ 'name' : '+miscellaneous',
            \ 'c': [':ColorToggle',               'toggle colorizer'],
            \}

" Align
let g:which_key_map.a = {
            \ 'name' : '+align',
            \ ',' : [":'<,'>EasyAlign,",          'align around ,'],
            \ '.' : [":'<,'>EasyAlign.",          'align around .'],
            \ ':' : [":'<,'>EasyAlign:",          'align around :'],
            \ '=' : [":'<,'>EasyAlign=",          'align around ='],
            \ ' ' : [':EasyAlign\ ',              'align around space'],
            \ 'a' : [':EasyAlign',                'interactive align mode'],
            \}

" Buffers
let g:which_key_map.b = {
      \ 'name' : '+buffer',
      \ 'd' : [':BD',       'delete-buffers']   ,
      \ 'f' : ['bfirst',    'first-buffer']    ,
      \ 'h' : ['Startify',  'home-buffer']     ,
      \ 'l' : ['blast',     'last-buffer']     ,
      \ 'n' : ['bnext',     'next-buffer']     ,
      \ 'p' : ['bprevious', 'previous-buffer'] ,
      \ }

" Git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ '/' : [':!git rev-parse --show-toplevel'                        , 'set git for current directory'],
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" Search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'b' : [':BLines'                , 'lines in current buffer'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }

