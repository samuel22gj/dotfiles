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
if [ ! -f ~/.vim/autoload/plug.vim ]
then
  info "Installing vim-plug"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  vim +PlugInstall +qall
fi
