set nocompatible

set history=100
set nobackup
set autoread
set encoding=utf8
set ffs=unix,dos,mac
set sessionoptions-=options
set sessionoptions-=folds

" Interface
set number
set ruler
set laststatus=2
set mouse=a
set nomodeline
set wildmenu
set wrap

if ! has("gui_running") 
  set t_Co=256 
endif 

set background=dark 
colors peaksea

set statusline=
set statusline+=%#Normal#
set statusline+=\ ⬓
set statusline+=%#PreProc#\ [%n]\ %f\ %m
set statusline+=\ %=
set statusline+=%#Number#
set statusline+=\ %l:%c
set statusline+=\ %<
set statusline+=\ %P
set statusline+=\ %#DiffDelete#\|\ %{&term}\ \|%#Normal#
set statusline+=\ %#DiffDelete#\|\ %{&fileformat}\ \|%#Normal#
set statusline+=\ %#DiffDelete#\|\ %{&encoding}\ \|%#Normal#
set statusline+=\ %#DiffDelete#\|\ %{TabStyle()}:\ %{&shiftwidth}\ \|%#Normal#
set statusline+=\ %#DiffDelete#\|\ %Y\ \|%#Normal#

function! TabStyle()
  return &expandtab == 1 ? "Spaces" : "Tabs"
endfunction

" File formatting and editing
syntax on

set autoindent
set smarttab
set expandtab tabstop=2 shiftwidth=2
autocmd Filetype go setlocal noexpandtab
autocmd Filetype make setlocal noexpandtab
autocmd Filetype markdown setlocal tabstop=4 shiftwidth=4
autocmd Filetype rst setlocal tabstop=4 shiftwidth=4

" Searching
set incsearch
set hlsearch
set magic

" Keys
set backspace=indent,eol,start

" Commands

