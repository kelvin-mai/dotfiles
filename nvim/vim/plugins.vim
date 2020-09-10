call plug#begin('~/.config/nvim/autoload/plugged')
	
" Syntax highlighting
Plug 'haishanh/night-owl.vim'             " night owl theme
Plug 'sheerun/vim-polyglot'               " default syntax
Plug 'pangloss/vim-javascript'            " javascript
Plug 'leafgarland/typescript-vim'         " typescript 
Plug 'maxmellon/vim-jsx-pretty'           " js / jsx 
Plug 'ianks/vim-tsx'                      " tsx
Plug 'jparise/vim-graphql'                " graphql
Plug 'Olical/conjure', {'tag': 'v3.3.0'}  " clojure
Plug 'venantius/vim-cljfmt'             
Plug 'reasonml-editor/vim-reason-plus'    " reasonml
" Bracket and parens
Plug 'chun-yang/auto-pairs'               " automatic paren completion
Plug 'luochen1990/rainbow'                " rainbow parens
Plug 'tpope/vim-surround'                 " add command to create surrounding parens
" Comments
Plug 'tpope/vim-commentary'
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

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
