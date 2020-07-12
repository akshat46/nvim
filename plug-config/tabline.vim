  " ______            __      __     _               
 " /_  __/  ____ _   / /_    / /    (_)   ____   ___ 
  " / /    / __ `/  / __ \  / /    / /   / __ \ / _ \
 " / /    / /_/ /  / /_/ / / /___ / /   / / / //  __/
" /_/     \__,_/  /_.___/ /_____//_/   /_/ /_/ \___/ 

set tabline=%!CustomTabLine()

hi TabLineSelAlt cterm=NONE gui=NONE ctermbg=234 ctermfg=247 guifg=#5CB8A7 guibg=NONE
" hi TabLineSelN cterm=NONE gui=NONE ctermbg=234 ctermfg=247 guifg=#192330 guibg=NONE
" hi TabLineSelNAlt cterm=NONE gui=NONE ctermbg=234 ctermfg=247 guifg=#5CB8A7 guibg=NONE
hi TabLineTab cterm=none gui=none ctermbg=0 ctermfg=7 guibg=#151D28 guifg=#2A3C52
hi TabLineTabAlt cterm=none gui=none ctermbg=0 ctermfg=7 guifg=#151D28 guibg=NONE

function CustomTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSelAlt#'
            let s .= '%#TabLineSel#%{tabpagewinnr('.(i+1).')}'
            let s .= '%#TabLineSelAlt# '
        else
            let s .= '%#TabLineTabAlt#'
            let s .= '%#TabLineTab#%{tabpagewinnr('.(i+1).')} %{MyTabLabel(' . (i + 1) . ')}'
            let s .= '%#TabLineTabAlt# '
        endif
    endfor
    let s .= '%#TabLineFill#%T'
    return s
endfunction

function MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    return bufname(buflist[winnr - 1])
endfunction

