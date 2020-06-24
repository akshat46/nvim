"           __                    __     _     ____         
"   _____  / /_  ____ _   _____  / /_   (_)   / __/   __  __
"  / ___/ / __/ / __ `/  / ___/ / __/  / /   / /_    / / / /
" (__  ) / /_  / /_/ /  / /    / /_   / /   / __/   / /_/ / 
"/____/  \__/  \__,_/  /_/     \__/  /_/   /_/      \__, /  
"                                                  /____/  

let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   力Sessions']       },
            \ { 'type': 'files',     'header': ['    Recent Files']            },
            \ { 'type': 'dir',       'header': ['    Recent Files from directory '. getcwd()] },
            \ ]

let g:startify_session_dir= '~/.config/nvim/.sessions'
let g:startify_session_persistence = 1

" let NERDTreeHijackNetrw = 0

let g:startify_custom_header =
          \ 'startify#center(startify#fortune#cowsay())'
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:startify_custom_header = startify#center([
            \'    ##############..... ##############  ', 
            \'    ##############......##############  ', 
            \'      ##########..........##########    ', 
            \'      ##########........##########      ', 
            \'      ##########.......##########       ', 
            \'      ##########.....##########..       ', 
            \'      ##########....##########.....     ', 
            \'    ..##########..##########.........   ', 
            \'  ....##########.#########............. ', 
            \'    ..################JJJ............   ', 
            \'      ################.............     ', 
            \'      ##############.JJJ.JJJJJJJJJJ     ', 
            \'      ############...JJ...JJ..JJ  JJ    ', 
            \'      ##########....JJ...JJ..JJ  JJ     ', 
            \'      ########......JJJ..JJJ JJJ JJJ    ', 
            \'      ######    .........               ', 
            \])
