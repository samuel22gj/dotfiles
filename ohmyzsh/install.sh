#!/usr/bin/env bash
set -e

# Check for oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]
then
  info '  Installing oh-my-zsh'
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi
