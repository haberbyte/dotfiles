c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;30:sg=46;30:tw=42;30:ow=43;30:'

# Zsh to use the same colors as ls
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' insert-tab false

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

alias ri='noglob ri'
alias rake='noglob rake'

# autocorrect is more annoying than helpful
unsetopt correct_all

autoload edit-command-line
autoload -U compinit
autoload -U zmv

setopt                          \
        auto_cd                 \
        auto_pushd              \
        chase_links             \
        noclobber               \
        complete_aliases        \
        extended_glob           \
        hist_ignore_all_dups    \
        hist_ignore_space       \
        ignore_eof              \
        share_history           \
        noflowcontrol           \
        list_types              \
        mark_dirs               \
        path_dirs               \
        prompt_percent          \
        prompt_subst            \
        rm_star_wait

cdpath=($HOME $HOME/Documents $HOME/Documents/code $HOME/Documents/projects)

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
