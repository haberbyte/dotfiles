ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jan"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

plugins=(git bundler brew gem jan zsh-syntax-highlighting)

export PATH="/usr/local/bin:$PATH"
export EDITOR='mate -w'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
