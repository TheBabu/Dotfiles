let g:airline#themes#neodark#palette = {}

function! airline#themes#neodark#refresh()
    let g:airline#themes#neodark#palette.accents = {
                \ 'red': airline#themes#get_highlight('Error'),
                \ }

    "let s:N1 = airline#themes#get_highlight2(['Cursor', 'fg'], ['Statement', 'fg'], 'none')
    let s:N1 = [ '' , '#84B97C' , 254 , 108]
    let s:N2 = airline#themes#get_highlight('Pmenu')
    let s:N3 = airline#themes#get_highlight('FoldColumn')
    let g:airline#themes#neodark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

    let group = airline#themes#get_highlight('Type')
    let g:airline#themes#neodark#palette.normal_modified = {
                \ 'airline_c': [ group[0], '', group[2], '', '' ]
                \ }

    "let s:I1 = airline#themes#get_highlight2(['Cursor', 'fg'], ['Function', 'fg'], 'none')
    let s:I1 = [ '' , '#639EE4' , 254 , 74]
    let g:airline#themes#neodark#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
    let g:airline#themes#neodark#palette.insert_modified = g:airline#themes#neodark#palette.normal_modified

    "let s:R1 = airline#themes#get_highlight2(['Cursor', 'fg'], ['Error', 'fg'], 'none')
    let s:R1 = [ '' , '#DC657D' , 254 , 168]
    let g:airline#themes#neodark#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
    let g:airline#themes#neodark#palette.replace_modified = g:airline#themes#neodark#palette.normal_modified

    "let s:V1 = airline#themes#get_highlight2(['Cursor', 'fg'], ['String', 'fg'], 'none')
    let s:V1 = [ '' , '#E18254' , 254 , 173]
    let g:airline#themes#neodark#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
    let g:airline#themes#neodark#palette.visual_modified = g:airline#themes#neodark#palette.normal_modified

    let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['CursorLine', 'bg'])
    let g:airline#themes#neodark#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#neodark#palette.inactive_modified = g:airline#themes#neodark#palette.normal_modified

    if get(g:, 'loaded_ctrlp', 0)
        let g:airline#themes#neodark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ airline#themes#get_highlight('CursorLine'),
                    \ airline#themes#get_highlight2(['Operator', 'fg'], ['Normal', 'bg']),
                    \ airline#themes#get_highlight2(['Normal', 'bg'], ['Operator', 'fg']))
    endif
endfun

call airline#themes#neodark#refresh()
