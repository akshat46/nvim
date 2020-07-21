   " _____   __            __                     __     _               
  " / ___/  / /_  ____ _  / /_  __  __   _____   / /    (_)   ____   ___ 
  " \__ \  / __/ / __ `/ / __/ / / / /  / ___/  / /    / /   / __ \ / _ \
 " ___/ / / /_  / /_/ / / /_  / /_/ /  (__  )  / /___ / /   / / / //  __/
" /____/  \__/  \__,_/  \__/  \__,_/  /____/  /_____//_/   /_/ /_/ \___/

set noshowmode
set laststatus=2

function! RedrawModeColors(mode) " {{{
    " Normal mode
    if a:mode == 'n'
        hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=6   guibg=none    guifg=#B4796F
        hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=6    ctermfg=0   guibg=#B4796F guifg=#192330
        hi CustomStatuslineFilename   cterm=none gui=none ctermbg=0    ctermfg=251 guibg=#2A3C52 guifg=#B4796F
        " Insert mode
    elseif a:mode == 'i'
        hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=2   guibg=none    guifg=#4A9387
        hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=2    ctermfg=0   guibg=#4A9387 guifg=#192330
        hi CustomStatuslineFilename   cterm=none gui=none ctermbg=0    ctermfg=251 guibg=#2A3C52 guifg=#4A9387
        " Replace mode
    elseif a:mode == 'R'
        hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=1   guibg=none    guifg=#A65169
        hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=1    ctermfg=0   guibg=#A65169 guifg=#192330
        hi CustomStatuslineFilename   cterm=none gui=none ctermbg=0    ctermfg=251 guibg=#2A3C52 guifg=#A65169
        " Visual mode
    elseif a:mode == 'v' || a:mode == 'V' || a:mode == "\<C-V>"
        hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=7   guibg=none    guifg=#59B7BB
        hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=7    ctermfg=0   guibg=#59B7BB guifg=#192330
        hi CustomStatuslineFilename   cterm=none gui=none ctermbg=0    ctermfg=251 guibg=#2A3C52 guifg=#59B7BB
        " Command mode
    elseif a:mode == 'c'
        hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=6   guibg=none    guifg=#B4796F
        hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=6    ctermfg=0   guibg=#B4796F guifg=#192330
        hi CustomStatuslineFilename   cterm=none gui=none ctermbg=0    ctermfg=251 guibg=#2A3C52 guifg=#B4796F
        " Terminal mode
    elseif a:mode == 't'
        hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=3   guibg=none    guifg=#BBA183
        hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=3    ctermfg=0   guibg=#BBA183 guifg=#192330
        hi CustomStatuslineFilename   cterm=none gui=none ctermbg=0    ctermfg=251 guibg=#2A3C52 guifg=#BBA183
    endif
    return ''
endfunction
" }}}
function! ModeIcon(mode) " {{{
    " Normal mode
    if a:mode == 'n'
        return '煮'
        " Insert mode
    elseif a:mode == 'i'
        return ' '
        " Replace mode
    elseif a:mode == 'R'
        return ' '
        " Visual mode
    elseif a:mode == 'v' 
        return ' '
    elseif a:mode == 'V' 
        return ' '
    elseif a:mode == "\<C-V>"
        return '礪'
        " Command mode
    elseif a:mode == 'c'
        return '⌘ '
        " Terminal mode
    elseif a:mode == 't'
        return 'ﰣ'
    endif
    return ''
endfunction

function! SetModifiedSymbol(modified) " {{{
    if a:modified == 1
        hi CustomStatuslineModifiedBody cterm=none gui=none ctermbg=1 ctermfg=0 guibg=#A65169 guifg=#192330
        hi CustomStatuslineModified cterm=none gui=none ctermbg=none ctermfg=1 guibg=none guifg=#A65169
    else
        hi CustomStatuslineModifiedBody cterm=none gui=none ctermbg=0 ctermfg=0 guibg=#192330 guifg=#192330
        hi CustomStatuslineModified cterm=none gui=none ctermbg=0 ctermfg=0 guibg=#192330 guifg=#192330
    endif
    return ''
endfunction

function! FiletypeIcon()
    return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : ' ') : ''
endfunction
function! SetFiletype(filetype) " {{{
    if winwidth(0) > 70
        hi CustomStatuslineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#6552AB
        hi CustomStatuslineFiletypeIcon      cterm=none   gui=none   ctermbg=none ctermfg=0 guibg=#6552AB guifg=#192330
        hi CustomStatuslineFiletypeBody      cterm=italic gui=italic ctermbg=0    ctermfg=5 guibg=#2A3C52 guifg=#6552AB
        hi CustomStatuslineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=6 guibg=none    guifg=#2A3C52
        if a:filetype == ''
            return '-'
        else
            return a:filetype
        endif
    else 
        hi CustomStatuslineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#192330
        hi CustomStatuslineFiletypeIcon      cterm=none   gui=none   ctermbg=none ctermfg=0 guibg=#192330 guifg=#192330
        hi CustomStatuslineFiletypeBody      cterm=italic gui=italic ctermbg=0    ctermfg=5 guibg=#192330 guifg=#192330
        hi CustomStatuslineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=6 guibg=none    guifg=#192330
        return ''
    endif
endfunction

function GitBranchIcon()
    if strlen(FugitiveHead())>0 && winwidth(0) > 70
        hi CustomStatuslineGitbranch          cterm=none gui=none ctermbg=none ctermfg=5 guibg=none    guifg=#447CA7
        hi CustomStatuslineGitbranchIcon      cterm=none gui=none ctermbg=none ctermfg=0 guibg=#447CA7 guifg=#192330
        hi CustomStatuslineGitbranchBody      cterm=none gui=none ctermbg=0    ctermfg=5 guibg=#2A3C52 guifg=#447CA7
        hi CustomStatuslineGitbranchSeparator cterm=none gui=none ctermbg=none ctermfg=6 guibg=none    guifg=#2A3C52
        return ' '
    else
        hi CustomStatuslineGitbranch          cterm=none gui=none ctermbg=none ctermfg=5 guibg=none    guifg=#192330
        hi CustomStatuslineGitbranchIcon      cterm=none gui=none ctermbg=0    ctermfg=0 guibg=#192330 guifg=#192330
        hi CustomStatuslineGitbranchBody      cterm=none gui=none ctermbg=0    ctermfg=0 guibg=#192330 guifg=#192330
        hi CustomStatuslineGitbranchSeparator cterm=none gui=none ctermbg=none ctermfg=6 guibg=none    guifg=#192330
        return ''
    endif
endfunction


function! Shiftwidth()
    let fname = expand('%:t')
    if ! &expandtab || fname == 'ControlP'
        return '-'
    endif
    if &shiftwidth == 0
        return &tabstop
    else
        return &shiftwidth
    endif
endfunction

" Setup the colors
hi StatusLine                cterm=none gui=none ctermbg=none ctermfg=3 guibg=#151D28 guifg=none
hi CustomStatuslineSeparator cterm=none gui=none ctermbg=none ctermfg=6 guibg=none    guifg=#2A3C52

hi CustomStatuslinePercentage     ctermfg=0 cterm=NONE ctermbg=NONE
hi CustomStatuslinePercentageBody ctermbg=0 cterm=none ctermfg=6

hi CustomStatuslineTotalLines     cterm=none gui=none ctermbg=none ctermfg=3 guibg=none    guifg=#BBA183
hi CustomStatuslineTotalLinesIcon cterm=none gui=none ctermbg=none ctermfg=0 guibg=#BBA183 guifg=#192330
hi CustomStatuslineTotalLinesBody cterm=none gui=none ctermbg=0    ctermfg=3 guibg=#2A3C52 guifg=#BBA183

hi CustomStatuslineInactiveDark           cterm=none gui=none ctermbg=0 ctermfg=7 guibg=#151D28 guifg=#2A3C52
hi CustomStatuslineInactiveDarkSeparator  cterm=none gui=none ctermbg=0 ctermfg=7 guibg=none    guifg=#151D28
hi CustomStatuslineInactiveLight          cterm=none gui=none ctermbg=0 ctermfg=7 guibg=#223042 guifg=#4D6D93
hi CustomStatuslineInactiveLightSeparator cterm=none gui=none ctermbg=0 ctermfg=7 guibg=none    guifg=#223042

function! SetActiveStatusLine()
    " Statusbar items
    let statusline  = "%{RedrawModeColors(mode())}"
    " Left side items
    " =======================
    let statusline .= "%#CustomStatuslineAccent#"
    let statusline .= "%#CustomStatuslineAccentBody#%{ModeIcon(mode())}"
    let statusline .= "%#CustomStatuslineFilename#\ %t\ "
    let statusline .= "%#CustomStatuslineSeparator#\ "
    " Modified status
    let statusline .= "%#CustomStatuslineModified#"
    let statusline .= "%#CustomStatuslineModifiedBody#%{SetModifiedSymbol(&modified)}"
    let statusline .= "%#CustomStatuslineModified#"
    " Right side items
    " =======================
    let statusline .= "%="
    " Git branch name
    let statusline .= "%#CustomStatuslineGitbranch#"
    let statusline .= "%#CustomStatuslineGitbranchIcon#%{GitBranchIcon()}"
    let statusline .= "%#CustomStatuslineGitbranchBody#\ %{FugitiveHead()}"
    let statusline .= "%#CustomStatuslineGitbranchSeparator#\ "
    " Tab length
    let statusline .= "%#CustomStatuslineTotalLines#"
    let statusline .= "%#CustomStatuslineTotalLinesIcon# "
    let statusline .= "%#CUSTomStatuslineTotalLinesBody#\ %{Shiftwidth()}"
    let statusline .= "%#CustomStatuslineSeparator#"
    " Padding
    let statusline .= "\ "
    " Current line / total number of lines
    let statusline .= "%#CustomStatuslineTotalLines#"
    let statusline .= "%#CustomStatuslineTotalLinesIcon# "
    let statusline .= "%#CustomStatuslineTotalLinesBody#\ %l"
    let statusline .= "\/\%#CustomStatuslineTotalLinesBody#%L"
    let statusline .= "%#CustomStatuslineSeparator#"
    " Padding
    let statusline .= "\ "
    " Filetype
    let statusline .= "%#CustomStatuslineFiletype#"
    let statusline .= "%#CustomStatuslineFiletypeIcon#%{FiletypeIcon()}"
    let statusline .= "%#CustomStatuslineFiletypeBody#\ %{SetFiletype(&filetype)}"
    let statusline .= "%#CustomStatuslineFiletypeSeparator#\ "
    return statusline
endfunction

function! SetInactiveStatusLine()
    let statusline  = ""
    let statusline .= "%#CustomStatuslineInactiveDarkSeparator#"
    let statusline .= "%#CustomStatuslineInactiveDark#%{FiletypeIcon()}"
    let statusline .= "%#CustomStatuslineInactiveLight#\ %t\ "
    let statusline .= "%#CustomStatuslineInactiveLightSeparator#\ "
    " Modified status
    let statusline .= "%#CustomStatuslineModified#"
    let statusline .= "%#CustomStatuslineModifiedBody#%{SetModifiedSymbol(&modified)}"
    let statusline .= "%#CustomStatuslineModified#"
    " Right side items
    " =======================
    let statusline .= "%="
    " Tab length
    let statusline .= "%#CustomStatuslineInactiveDarkSeparator#"
    let statusline .= "%#CustomStatuslineInactiveDark#"
    let statusline .= "%#CustomStatuslineInactiveDark#\ %{Shiftwidth()}"
    let statusline .= "%#CustomStatuslineInactiveDarkSeparator#"
    " Padding
    let statusline .= "\ "
    " Current line / total number of lines
    let statusline .= "%#CustomStatuslineInactiveDarkSeparator#"
    let statusline .= "%#CustomStatuslineInactiveDark#"
    let statusline .= "%#CustomStatuslineInactiveDark#\ %l"
    let statusline .= "\/\%#CustomStatuslineInactiveDark#%L"
    let statusline .= "%#CustomStatuslineInactiveDarkSeparator#\ "
    return statusline
endfunction

augroup vimrc-statusline
    autocmd!
    autocmd WinEnter * setlocal statusline=%!SetActiveStatusLine()
    autocmd BufEnter * setlocal statusline=%!SetActiveStatusLine()
    autocmd WinNew   * setlocal statusline=%!SetActiveStatusLine()
    autocmd WinLeave * setlocal statusline=%!SetInactiveStatusLine()
augroup END
setlocal statusline=%!SetActiveStatusLine()
