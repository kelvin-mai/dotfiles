call plug#begin('~/.config/nvim/autoload/plugged')
	
" Syntax highlighting
Plug 'sheerun/vim-polyglot'             " default syntax
Plug 'pangloss/vim-javascript'          " javascript
Plug 'leafgarland/typescript-vim'       " typescript 
Plug 'maxmellon/vim-jsx-pretty'         " js / jsx 
Plug 'ianks/vim-tsx'                    " tsx
Plug 'jparise/vim-graphql'              " graphql
Plug 'reasonml-editor/vim-reason-plus'  " reasonml
" Bracket and parens
Plug 'chun-yang/auto-pairs'             " automatic paren completion
Plug 'luochen1990/rainbow'              " rainbow parens
Plug 'tpope/vim-surround'               " add command to create surrounding parens
" File tree explorer
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() } } 
" Code formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Status Line
Plug 'itchyny/lightline.vim'
" Dracula theme
Plug 'dracula/vim', {'as': 'dracula'}

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
