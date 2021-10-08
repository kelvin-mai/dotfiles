" Language specific config

" ClojureScript
autocmd FileType clojure nnoremap <localleader>cj :ConjureShadowSelect<Space>
autocmd FileType clojure nnoremap <localleader>cp :ConjureConnect<Space>
" vertically align maps and vectors
autocmd FileType clojure nnoremap <buffer> <localleader>a[ vi[<c-v>$:EasyAlign\ g/^\S/<cr>gv=
autocmd FileType clojure nnoremap <buffer> <localleader>a{ vi{<c-v>$:EasyAlign\ g/^\S/<cr>gv=
" disable auto pairs on ' and `
autocmd Filetype clojure let b:AutoPairs={'(':')', '[':']', '{':'}','"':'"'}
" conjure enable AnsiEsc (interpret ANSI escape codes) for the Conjure log buffer.
" autocmd BufEnter conjure-log-* AnsiEsc
" conjure configs
let g:conjure#log#botright = 1
let g:conjure#log#hud#height = 1.0
let g:conjure#eval#comment_prefix = ";; "
let g:conjure#eval#def_word = v:false
let g:conjure#eval#doc_word = v:false
let g:conjure#eval#gsubs = {'do-comment': ['^%(comment[%s%c]', '(do ']}
let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defexpect']
let g:conjure#client#clojure#nrepl#connection#auto_repl#hidden = v:true
let g:conjure#client#clojure#nrepl#eval#raw_out = v:true
let g:conjure#highlight#enabled = 1
let g:conjure#highlight#timeout = 250

" Golang
autocmd FileType go nmap <localleader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <localleader>r  <Plug>(go-run)
autocmd FileType go nmap <localleader>t  <Plug>(go-test)
" auto imports on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" Markdown
autocmd FileType markdown nnoremap <localleader>p :MarkdownPreviewToggle<CR>

" JSX
" vim-jsx-pretty uses these filetypes for jsx files
autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
