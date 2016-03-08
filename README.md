# samuel22gj does dotfiles

Your dotfiles are how you personalize your system. These are mine.

## Install

```sh
$ git clone https://github.com/samuel22gj/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./script/bootstrap
```

## What's Happen?

1. Link dotfiles
2. Setup Mac OS X default settings
3. Install homebrew
4. Install packages via homebrew
5. Run all `install.sh`

## zshrc

1. load all `path.zsh`
2. load all `*zsh` exclude `path.zsh` and `completion.zsh`
3. load all `completion.zsh`

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Thanks

Inspired by [Zach Holman](http://github.com/holman)'s excellent [dotfiles](http://github.com/holman/dotfiles).
Inspired by [ZAmo Wu](http://github.com/holman)'s excellent [dotfiles](https://github.com/amowu/dotfiles).
Inspired by [Mathias Bynens](http://github.com/holman)'s excellent [dotfiles](https://github.com/mathiasbynens/dotfiles).
