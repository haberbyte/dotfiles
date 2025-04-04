export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;30:sg=46;30:tw=42;30:ow=43;30:'

# Add completions directory
FPATH="$(dirname $0)/completions:$FPATH"

# Zsh to use the same colors as ls
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' insert-tab false
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# autocorrect is more annoying than helpful
unsetopt correct_all

autoload edit-command-line
autoload -U compinit
autoload -U zmv

setopt                      \
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
    prompt_subst

cdpath=($HOME $HOME/Documents $HOME/Code)
