execute pathogen#infect()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Make tabs insert 2 spaces instead of tab char
set tabstop=2 shiftwidth=2 expandtab

" Syntax and filetypes
syntax on

color dracula

set relativenumber

" vim lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme':'dracula',
	\ }

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
