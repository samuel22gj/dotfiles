#!/usr/bin/env bash
#
# oh-my-zsh
#
# A delightful community-driven framework for managing your zsh configuration.

set -e

export DOTFILES=$HOME/dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

# Check for oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]
then
  info "Installing oh-my-zsh"
  sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  command -v zsh | sudo tee -a /etc/shells
  sudo chsh -s $(which zsh) $USER
fi
