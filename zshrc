ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jan"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

plugins=(jan bundler brew gem git tmux zsh-syntax-highlighting)

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# for Homebrew installed nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source $(brew --prefix nvm)/nvm.sh
