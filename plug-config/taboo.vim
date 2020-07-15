  " ______            __                
 " /_  __/  ____ _   / /_   ____   ____ 
  " / /    / __ `/  / __ \ / __ \ / __ \
 " / /    / /_/ /  / /_/ // /_/ // /_/ /
" /_/     \__,_/  /_.___/ \____/ \____/ 

hi TabLineSelAlt cterm=none gui=none ctermbg=234 ctermfg=247 guifg=#5CB8A7 guibg=none
hi TabLineTabAlt cterm=none gui=none ctermbg=0 ctermfg=7 guifg=#151D28 guibg=none
hi TabLineTabMod cterm=none gui=none ctermbg=0 ctermfg=7 guibg=#151D28 guifg=#C94F6D
hi TabLineTabModSel cterm=none gui=none ctermbg=0 ctermfg=7 guibg=#5CB8A7 guifg=#B36479

let g:taboo_tab_active_prefix = '%#TabLineSelAlt#'
let g:taboo_tab_format = " %S%U%m "
let g:taboo_renamed_tab_format = " %l%U%m "
let g:taboo_tab_active_suffix = '%#TabLineSelAlt# '

let g:taboo_tab_prefix = '%#TabLineTabAlt#'
let g:taboo_tab_suffix = '%#TabLineTabAlt# '

" let g:taboo_modified_tab_flag = ' %#TabLineTabMod#'
" let g:taboo_modified_tab_active_flag = ''
