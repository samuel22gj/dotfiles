#!/usr/bin/env bash
set -e

# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check OS
if test "$(uname -s)" = "Darwin"
then

  # Check for Homebrew
  if test ! $(which brew)
  then
    echo "  Installing Homebrew for you."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

exit 0
