fpath=($DOTFILES/functions $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U $DOTFILES/functions/*(:t)
