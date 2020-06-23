"    __    _              __     __     __    _               
"   / /   (_)   ____ _   / /_   / /_   / /   (_)   ____   ___ 
"  / /   / /   / __ `/  / __ \ / __/  / /   / /   / __ \ / _ \
" / /   / /   / /_/ /  / / / // /_   / /   / /   / / / //  __/
"/_/   /_/    \__, /  /_/ /_/ \__/  /_/   /_/   /_/ /_/ \___/ 
"            /____/ 

" Set theme
let g:lightline = {
      \ 'colorscheme': 'horizon',
      \ 'active': {
      \   'left': [ [ 'mi', 'paste' ],
      \             [ 'gbi', 'readonly', 'filename', 'mdi' ] ],
      \   'right': [ [ 'fi' ],
      \              [ 'sw' ],
      \              [ 'lineinfototal'] ]
      \ },
      \ 'component': {
      \   'lineinfototal': ' %l/%L',
      \ },
      \ 'component_function': {
      \   'gbi': 'GitBranchIcon',
      \   'sw': 'LightlineShiftwidth',
      \   'fi': 'FiletypeIcon',
      \   'mi': 'ModeIcon',
      \   'mdi': 'ModifiedIcon',
      \ },
      \ }

function ModeIcon()
  if lightline#mode() == "NORMAL"
    return ' 煮'
  elseif lightline#mode() == "INSERT"
    return '  '
  elseif lightline#mode() == "COMMAND"
    return '  '
  elseif lightline#mode() == "V-BLOCK" 
    return ' ﯠ  '
  elseif lightline#mode() == "V-LINE" 
    return ' ﯠ  '
  elseif lightline#mode() == "VISUAL" 
    return ' ﯠ '
  elseif lightline#mode() == "REPLACE" 
    return ' גּ '
  elseif lightline#mode() == "INACTIVE" 
    return '  '
  endif
endfunction

function ModifiedIcon()
  return &modified ? '' : ''
endfunction

function GitBranchIcon()
  return strlen(FugitiveHead())>0 ? ' '.FugitiveHead() : ''
endfunction

function! FiletypeIcon()
   return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightlineNoexpandtab()
  let fname = expand('%:t')
  if winwidth(0) < 90
        \ || &expandtab
        \ || fname == 'ControlP'
    return ''
  endif
  if &shiftwidth == &tabstop
    return '↹ '.&tabstop.' e̶t̶'
  elseif &shiftwidth == 0
    return '↹ '.&tabstop.' e̶t̶'
  else
    return '⇆ '.&shiftwidth.' ↹ '.&tabstop.' e̶t̶'
  endif
endfunction
function! LightlineShiftwidth()
  let fname = expand('%:t')
  if winwidth(0) < 90
        \ || ! &expandtab
        \ || fname == 'ControlP'
    return ''
  endif
  if &shiftwidth == 0
    return '⇆ '.&tabstop
  else
    return '⇆ '.&shiftwidth
  endif
endfunction

