call plug#begin('~/.config/nvim/autoload/plugged')

" Syntax highlighting
Plug 'kjssad/quantum.vim'                 " firefox theme
Plug 'sheerun/vim-polyglot'               " better default syntax
Plug 'pangloss/vim-javascript'            " javascript
Plug 'leafgarland/typescript-vim'         " typescript 
Plug 'maxmellon/vim-jsx-pretty'           " js / jsx 
Plug 'peitalin/vim-jsx-typescript'        " tsx
Plug 'jparise/vim-graphql'                " graphql
Plug 'Olical/conjure', {'tag': 'v3.3.0'}  " clojure
Plug 'kelvin-mai/vim-cljfmt'              " clojure formatter
Plug 'reasonml-editor/vim-reason-plus'    " reasonml
" Editor features
Plug 'chun-yang/auto-pairs'               " automatic paren completion
Plug 'luochen1990/rainbow'                " rainbow parens
Plug 'tpope/vim-surround'                 " add command to create surrounding parens
Plug 'tpope/vim-commentary'               " comments
Plug 'airblade/vim-gitgutter'             " git gutter
Plug 'rhysd/conflict-marker.vim'          " git conflict marker
" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release' } 
" Emacs which keys
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Status Line
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

