" Redo
nnoremap U <C-R>

" Visual block tabbing
vnoremap < <gv
vnoremap > >gv

" Quit
nnoremap q :q<CR>

" Simulate show documentation
nmap K :call VSCodeNotify('editor.action.showHover')<CR>

" VSCode comments acts like vim-commentary
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" Toggle side bar
nmap <space>e :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

" Make calva act like fireplace
nmap cqp :call VSCodeNotify('calva.jackIn')<CR>
nmap cqq :call VSCodeNotify('calva.disconnect')<CR>
nmap cpr :call VSCodeNotify('calva.loadFile')<CR>
nmap cpR :call VSCodeNotify('calva.loadNamespace')<CR>
nmap cpp :call VSCodeNotify('calva.evaluateSelection')<CR>
nmap cqc :call VSCodeNotify('calva.evalCurrentFormInREPLWindow')<CR>

