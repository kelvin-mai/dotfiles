" Language specific config

" ClojureScript
autocmd FileType clojure nnoremap <localleader>cj :ConjureShadowSelect<Space>
autocmd FileType clojure nnoremap <localleader>cp :ConjureConnect<Space>
" vertically align maps and vectors
autocmd FileType clojure nnoremap <buffer> <localleader>a[ vi[<c-v>$:EasyAlign\ g/^\S/<cr>gv=
autocmd FileType clojure nnoremap <buffer> <localleader>a{ vi{<c-v>$:EasyAlign\ g/^\S/<cr>gv=
" disable auto pairs on ' and `
autocmd Filetype clojure let b:AutoPairs={'(':')', '[':']', '{':'}','"':'"'}
" conjure configs
let g:conjure_config = {
      \'mappings.doc-word': '',
      \'mappings.def-word': ''
      \}

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
