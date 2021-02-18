fpath=($DOTFILES/functions $fpath)

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U $DOTFILES/functions/*(:t)