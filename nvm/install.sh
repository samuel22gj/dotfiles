#!/usr/bin/env bash
#
# Node Version Manager
# 
# A tool used to manage multiple active Node. js versions.
# https://github.com/nvm-sh/nvm

set -e

export DOTFILES=$HOME/dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

if [ ! -x "$(command -v nvm)" ]; then
  info "Installing NVM"

  if [[ `uname` == 'Darwin' ]]; then
    # MacOS
    brew install nvm
  else
    # Linux?
    sudo apt-get install nvm
  fi

  # Create NVM's working directory.
  mkdir ~/.nvm
fi
