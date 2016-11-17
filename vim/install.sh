#!/usr/bin/env bash
#
# Vim
#
# Install Vundle, Vim plugin manager.

set -e

export DOTFILES=$HOME/dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

# Check for Vundle
if [ ! -d ~/.vim/bundle ]
then
  info "Installing Vundle"
  mkdir -p ~/.vim/bundle
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
fi
