execute pathogen#infect()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Syntax and filetypes
syntax on

color dracula

set number

" vim lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme':'dracula',
	\ }

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
