call plug#begin('~/.config/nvim/autoload/plugged')
	
" Syntax highlighting
Plug 'sheerun/vim-polyglot'             " default syntax
Plug 'pangloss/vim-javascript'          " javascript
Plug 'leafgarland/typescript-vim'       " typescript 
Plug 'maxmellon/vim-jsx-pretty'         " js / jsx 
Plug 'ianks/vim-tsx'                    " tsx
Plug 'jparise/vim-graphql'              " graphql
Plug 'reasonml-editor/vim-reason-plus'  " reasonml
" File tree explorer
Plug 'scrooloose/NERDTree'
" Bracket and parens
Plug 'chun-yang/auto-pairs'
Plug 'luochen1990/rainbow'
" Adds command to surround selection with stuff
Plug 'tpope/vim-surround'
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
