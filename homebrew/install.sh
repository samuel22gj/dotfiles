#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

export DOTFILES=$HOME/.dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

# Check OS
if test "$(uname -s)" = "Darwin"
then

  # Check for Homebrew
  if test ! $(which brew)
  then
    info "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

exit 0
