# env
if test "$TERM_PROGRAM" = "vscode"; then
    PROMPT='%~$ '
else
    PROMPT='%m:%~%# '
fi
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000
SAVEHIST=100000
EDITOR=vi
BLOCKSIZE=K
BROWSER=w3m
LANG=ja_JP.UTF-8
PAGER=lv
LV="-c -Ou8"

# alias
alias ls="ls -FG"
alias screen="screen -U"

# bindkey
bindkey -e

# setopt
setopt append_history
setopt auto_cd
#setopt auto_list
setopt auto_menu
#setopt auto_param_keys
#setopt auto_param_slash
setopt auto_pushd
#setopt auto_remove_slash
#setopt auto_resume
setopt no_clobber
#setopt chase_links
setopt correct
#setopt correct_all
setopt equals
setopt extended_history
setopt no_flow_control
setopt ignore_eof
setopt inc_append_history
setopt list_packed
setopt list_types
setopt long_list_jobs
setopt magic_equal_subst
setopt mark_dirs
setopt notify
setopt print_eightbit
setopt print_exit_value
setopt prompt_subst
setopt share_history
unsetopt prompt_cr

# autoload
autoload -Uz add-zsh-hook
autoload -Uz colors
colors

# backward-delete-word like tcsh
tcsh-backward-delete-word () {
    local WORDCHARS="${WORDCHARS:s#/#}"
    zle backward-delete-word
}
zle -N tcsh-backward-delete-word
bindkey '^[^?' tcsh-backward-delete-word

# homebrew
if test -x $HOME/local/bin/brew; then
    eval $($HOME/local/bin/brew shellenv)
elif test -x /opt/homebrew/bin/brew; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

# anyenv
if test `whence -p anyenv`; then
    eval "$(anyenv init -)"
elif test -d $HOME/.anyenv; then
    PATH=$HOME/.anyenv/bin:$PATH
    eval "$(anyenv init -)"
fi

# rbenv
if test -n "$RBENV_ROOT"; then
    fpath=($RBENV_ROOT/completions $fpath)
fi

# rust
if test -f "$HOME/.cargo/env"; then
    . "$HOME/.cargo/env"
fi

# XDG?
if test -d "$HOME/.local/bin"; then
    PATH="$PATH:$HOME/.local/bin"
fi

# starship
if test `whence -p starship`; then
    eval "$(starship init zsh)"
fi

# user local
PATH=$HOME/local/bin:$HOME/local/sbin:$PATH

# zsh complete
zstyle :compinstall filename '$HOME/.zshrc'
if test -d $HOME/local/share/zsh/site-functions; then
    fpath=($HOME/local/share/zsh/site-functions ${fpath})
fi
autoload -Uz compinit bashcompinit
compinit
bashcompinit
