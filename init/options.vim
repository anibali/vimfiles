" General Options
  set backspace=indent,eol,start " Let backspace work over anything.
  set clipboard=                 " use system clipboard
  set ffs=unix,mac               " support these in this order
  filetype on                    " detect the type of file
  filetype plugin on             " load filetype plugins
  set viminfo+=!                 " make sure it can save viminfo

" Visual Cues
  set showmatch     " show matching brackets
  set hlsearch      " highlight searched for phrases
  set incsearch     " highlight as you type you search phrase
  set history=1024  " History size
  set novisualbell  " don't blink
  set noerrorbells  " no noises

  set hidden        " Allow hidden, unsaved buffers

" Text Formatting/Layout
  set ai            " autoindent
  set smartindent   " smartindent
  set smarttab      " Use shiftwidth to tab at line beginning
  set cindent       " do c-style indenting
  set tabstop=2     " tab spacing (settings below are just to unify it)
  set softtabstop=2 " unify
  set shiftwidth=2  " unify
  set expandtab     " Give me spaces or give me death
  set nowrap        " do not wrap lines
  set nrformats=    " treat all numerals as decimal

" Vim UI
  set number                           " turn on line numbers
  set cpoptions+=n                     " show wrapped lines in the line number gutter
  set lz                               " do not redraw while running macros (much faster) (LazyRedraw)
  set mouse=a                          " use mouse everywhere
                                       " make the splitters between windows be blank
  set fillchars=vert:\ ,stl:\ ,stlnc:\
  set scrolloff=2                      " Scroll when the cursor is 2 lines from edge
  set cursorline                       " Highlight current line

" Case insensitive search by default
  set smartcase

" Set filetypes for unusual files
  au BufNewFile,BufRead {Capfile,Gemfile,Rakefile,config.ru,.irbrc} set ft=ruby

" Show trailing whitespace as errors
  match ErrorMsg '\s\+$'
