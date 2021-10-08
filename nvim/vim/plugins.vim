call plug#begin('~/.config/nvim/autoload/plugged')

" Syntax colorschemes
Plug 'romgrk/doom-one.vim'                                               " emacs doom theme
Plug 'joshdick/onedark.vim'                                              " atom one dark theme
Plug 'haishanh/night-owl.vim'                                            " night-owl theme
Plug 'bluz71/vim-nightfly-guicolors'                                     " nightfly theme
Plug 'embark-theme/vim', { 'as': 'embark' }
" Syntax highlighting
Plug 'sheerun/vim-polyglot'                                              " better default syntax
Plug 'pangloss/vim-javascript'                                           " javascript
Plug 'leafgarland/typescript-vim'                                        " typescript
Plug 'maxmellon/vim-jsx-pretty'                                          " jsx / tsx
Plug 'jparise/vim-graphql'                                               " graphql
Plug 'Olical/conjure', {'tag': 'v3.3.0'}                                 " clojure REPL integration
Plug 'reasonml-editor/vim-reason-plus'                                   " reasonml
" Editor features
Plug 'jiangmiao/auto-pairs'                                              " automatic paren/quote completion
Plug 'luochen1990/rainbow'                                               " rainbow parens
Plug 'tpope/vim-surround'                                                " add command to create surrounding parens
Plug 'tpope/vim-commentary'                                              " comments
Plug 'mhinz/vim-signify'                                                 " git gutter
Plug 'tpope/vim-fugitive'                                                " git integration
Plug 'junegunn/vim-easy-align'                                           " easy align
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown previewer
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
