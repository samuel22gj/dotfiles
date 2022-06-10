#!/usr/bin/env bash
#
# Ruby Programming Language
# 
# https://www.ruby-lang.org/en/

set -e

export DOTFILES=$HOME/dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

if [ ! -d ~/.nvm ]; then
  info "Installing NVM"

  if [[ `uname` == 'Darwin' ]]; then
    # MacOS
    brew install ruby
  else
    # Linux?
    sudo apt install ruby-full
  fi
fi
