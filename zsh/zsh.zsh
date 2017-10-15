fpath=($DOTFILES/functions $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U $DOTFILES/functions/*(:t)
