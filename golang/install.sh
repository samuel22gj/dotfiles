#!/usr/bin/env bash
#
# Go Programming Language
#
# An open source programming language maintained by Google.

set -e

export DOTFILES=$HOME/dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

if [ ! -x "$(command -v go)" ]; then
  info "Installing Go programming language"

  if [[ `uname` == 'Darwin' ]]; then
    # MacOS
    brew install go --cross-compile-common
  else
    # Linux
    sudo apt-get install golang-go
  fi

  # Create the workspace directories tree.
  mkdir -p $GOPATH $GOPATH/src $GOPATH/pkg $GOPATH/bin
  mkdir -p $GOPATH/src/github.com/samuel22gj
fi
