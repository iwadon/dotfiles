# env
PATH=/usr/bin:/usr/sbin:/bin:/sbin
test -x /usr/libexec/path_helper && eval `/usr/libexec/path_helper -s`
test -d /usr/games  && PATH=/usr/games:$PATH
test -d /usr/X11R6  && PATH=/usr/X11R6/bin:$PATH
test -d /opt/local  && PATH=/opt/local/bin:/opt/local/sbin:$PATH
test -d /usr/local  && PATH=/usr/local/bin:/usr/local/sbin:$PATH
test -d $HOME/local && PATH=$HOME/local/bin:$HOME/local/sbin:$PATH
PROMPT='%m:%~%# '
HISTFILE=$HOME/.zsh-history
SAVEHIST=1000
HISTSIZE=100
EDITOR=vi
BLOCKSIZE=K
BROWSER=w3m

# TERM, LANG    
case `uname -s` in
    CYGWIN*)
	TERM=cygwin
	LANG=ja_JP.SJIS
	;;
    *)
	LANG=ja_JP.UTF-8
	;;
esac

# PAGER
if [[ -x `whence -p lv` ]]; then
    PAGER=lv
    case `uname -s` in
	CYGWIN*)
	    LV="-c -Os"
	    ;;
	*)
	    LV="-c -Ou8"
	    ;;
    esac
elif [[ -x `whence -p jless` ]]; then
    PAGER=jless
else
    PAGER=less
fi

# bzr
#if [ `uname -s` = "Darwin" ]; then
#    PYTHONPATH=/Users/don/local/lib/python2.6/site-packages
#fi

# alias
case `uname -s` in
    CYGWIN*)
	alias ls='ls -F --color=auto'
	;;
    *)
	alias ls='ls -FG'
	;;
esac
if [ `uname -s` = "FreeBSD" ]; then
    alias jman='env LC_ALL=ja_JP.eucJP jman'
fi
alias screen='screen -U'

# node
export NODE_PATH=$HOME/local/lib/node_modules
PATH=/Users/don/local/share/npm/bin:$PATH

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
setopt correct_all
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

precmd() {
    case $TERM in
    *xterm*|rxvt|(dt|k|E)term)
        #print -Pn "\e]2;%n@%m:%~\a"
	;;
    esac
}

# backward-delete-word like tcsh
tcsh-backward-delete-word () {
    local WORDCHARS="${WORDCHARS:s#/#}"
    zle backward-delete-word
}
zle -N tcsh-backward-delete-word
bindkey '^[^?' tcsh-backward-delete-word

# Ruby
export PATH=$HOME/.rbenv/bin:$PATH
[[ -x `whence -p rbenv` ]] && eval "$(rbenv init -)"
[[ -x `whence -p hub` ]] && eval "$(hub alias -s)"
test -f $HOME/.bundler-exec.sh && source $HOME/.bundler-exec.sh

# Homebrew
if [[ -x `whence -p brew` ]]; then
    export XML_CATALOG_FILES="`brew --prefix`/etc/xml/catalog"
fi

# Go Programming Language
if test -x $HOME/src/go/src/all.bash; then
    export PATH=$PATH:$HOME/src/go/bin
fi
if test -d $HOME/go; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi
if [[ -x `whence -p brew` ]]; then
    export PATH=$PATH:`brew --prefix go`/libexec/bin
fi

# zsh complete
zstyle :compinstall filename '$HOME/.zshrc'
if test -d $HOME/local/share/zsh/site-functions; then
    fpath=($HOME/local/share/zsh/site-functions ${fpath})
fi
autoload -U compinit
compinit -u

# zsh online help
unalias run-help
autoload run-help
HELPDIR=$HOME/local/share/zsh/help
