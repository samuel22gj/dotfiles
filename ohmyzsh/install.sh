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
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  info "Installing zsh plugins"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  command -v zsh | sudo tee -a /etc/shells
  chsh -s $(which zsh) $USER
  info "Caution! Re-run bootstrap to override .zshrc"
fi
