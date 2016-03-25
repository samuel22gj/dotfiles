#!/usr/bin/env bash
#
# Powerline fonts
#
# Patched fonts for Powerline users.

set -e

export DOTFILES=$HOME/.dotfiles

# Include customize printf functions
source $DOTFILES/script/printf

install_fonts () {
  info "Installing Powerline fonts"
  git clone https://github.com/powerline/fonts powerline-fonts-repository
  ./powerline-fonts-repository/install.sh
  rm -rf powerline-fonts-repository
}

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  font_dir="$HOME/Library/Fonts"

  if [ ! -f "$font_dir/Ubuntu Mono derivative Powerline.ttf" ]
  then
    install_fonts
  fi
else
  # Linux
  font_dir="$HOME/.local/share/fonts"

  if [ ! -f "$font_dir/Ubuntu Mono derivative Powerline.ttf" ]
  then
    install_fonts
  fi
fi
