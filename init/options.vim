" General Options
set backspace=indent,eol,start " Let backspace work over anything.
set clipboard=                 " use system clipboard
set ffs=unix,mac               " support these in this order
filetype on                    " detect the type of file
filetype plugin on             " load filetype plugins
set viminfo+=!                 " make sure it can save viminfo
set hidden                     " Allow hidden, unsaved buffers
syntax on                      " Enable syntax highlighting

" Visual Cues
set showmatch     " show matching brackets
set hlsearch      " highlight searched for phrases
set incsearch     " highlight as you type you search phrase
set history=1024  " History size
set novisualbell  " don't blink
set noerrorbells  " no noises

" Text Formatting/Layout
set ai            " autoindent
set smartindent   " smartindent
set smarttab      " Use shiftwidth to tab at line beginning
set cindent       " do c-style indenting
set tabstop=2     " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2  " unify
set expandtab     " Give me spaces or give me death
set nrformats=    " treat all numerals as decimal

" Vim UI
set number        " turn on line numbers
set cpoptions+=n  " show wrapped lines in the line number gutter
set lz            " do not redraw while running macros (much faster)
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\
set scrolloff=2   " Scroll when the cursor is 2 lines from edge
set cursorline    " Highlight current line

" Case insensitive search by default
set smartcase

" Set filetypes for unusual files
au BufNewFile,BufRead {Capfile,Gemfile,Rakefile,config.ru,.irbrc} set ft=ruby

" Show trailing whitespace as errors
match ErrorMsg '\s\+$'

" Use column colour as vertical rule
set colorcolumn=81

" Set textwidth to 80 for use with `gq`
set textwidth=80
set wrap
set linebreak
" set nolist " Disables automatic hard line breaks

set pastetoggle=<F2>

" Change default netrw explorer mode
let g:netrw_liststyle=0
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_preview=1
let g:netrw_winsize=30

" Workaround for LogiPat bug (see http://stackoverflow.com/a/31695784)
let g:loaded_logipat = 1

au BufNewFile,BufReadPost *.jade set filetype=jade
