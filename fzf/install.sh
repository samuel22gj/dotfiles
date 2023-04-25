#!/usr/bin/env bash
#
# fzf
#
# A command-line fuzzy finder
# https://github.com/junegunn/fzf

set -e

export DOTFILES=$HOME/dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

if ! command -v fzf &> /dev/null; then
  info "Installing fzf"

  if [[ `uname` == 'Darwin' ]]; then
    # MacOS
    brew install fzf
    # To install useful key bindings and fuzzy completion:
    $(brew --prefix)/opt/fzf/install
  else
    # Linux
    sudo apt install fzf
  fi
fi
