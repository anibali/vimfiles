#!/bin/bash

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo -e "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Try to run ./uninstall.sh"
else
  echo === Checking out vundle
  git submodule update --init

  echo === Linking vim directories
  ln -s $PWD/vimrc $HOME/.vimrc
  ln -s $PWD $HOME/.vim

  echo === Vundling
  vim +BundleInstall +qall

  echo === Done
fi
