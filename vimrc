set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" User plugins
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'gabrielelana/vim-markdown'
Plugin 'digitaltoad/vim-jade'
Plugin 'othree/yajs.vim'

call vundle#end()

filetype plugin indent on

runtime! init/**.vim
