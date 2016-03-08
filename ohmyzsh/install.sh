#!/usr/bin/env bash
#
# oh-my-zsh
#
# A delightful community-driven framework for managing your zsh configuration.

set -e

export DOTFILES=$HOME/.dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

# Check for oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]
then
  info "Installing oh-my-zsh"
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi
