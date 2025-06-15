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

# starship を使うべき端末条件（iTerm2, tmux, 将来の truecolor Terminal.app）
function should_enable_starship() {
    # VSCode では無効
    if [[ "$TERM_PROGRAM" = "vscode" ]]; then
        return 1
    fi

    # truecolor or 256色対応の TERM かどうか
    case "$TERM" in
        *-256color|*-direct)
            ;;
        *)
            return 1
            ;;
    esac

    # iTerm2 または tmux、または今後 truecolor 対応される Apple Terminal
    if [[ "$TERM_PROGRAM" = "iTerm.app" || -n "$TMUX" ]]; then
        return 0
    fi
    if [[ "$TERM_PROGRAM" = "Apple_Terminal" && "$TERM" = *-direct ]]; then
        return 0
    fi

    return 1
}

# starship 有効化
if should_enable_starship && command -v starship >/dev/null; then
    eval "$(starship init zsh)"
fi

# dotnet
if test -d "$HOME/.dotnet"; then
    PATH="$HOME/.dotnet:$PATH"
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


# The location for the automatically added settings:

