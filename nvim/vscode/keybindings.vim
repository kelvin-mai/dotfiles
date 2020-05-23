" Redo
nnoremap U <C-R>

" Visual block tabbing
vnoremap < <gv
vnoremap > >gv

" Quit
nnoremap q :q<CR>

" Simulate same TAB behavior in VSCode
nmap <Tab> :Tabnext<CR>
nmap <S-Tab> :Tabprev<CR>

" Make calva act like fireplace
nmap cpr :call VSCodeNotify('calva.jackIn')<CR>
nmap cpR :call VSCodeNotify('calva.disconnect')<CR>
nmap cpp :call VSCodeNotify('calva.evaluateSelection')<CR>
nmap cqc :call VSCodeNotify('calva.evalCurrentFormInREPLWindow')<CR>

