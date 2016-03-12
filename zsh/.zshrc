HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v

zstyle :compinstall filename '/home/unsung/.zshrc'

autoload -Uz compinit
compinit

export EDITOR="/usr/bin/vim"
export PATH="$HOME/.cabal/bin:$HOME/bin:$PATH"
export STEAM_FRAME_FORCE_CLOSE=1

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

source /usr/share/git/completion/git-prompt.sh

export TERM=xterm
#[[ $TERM == xterm ]] && TERM=xterm-256color


autoload -U promptinit
promptinit

autoload colors && colors

KEYTIMEOUT=1

local _RPROMPT='$(__git_ps1 " (%s)")'

RPROMPT="${_RPROMPT}"

function zle-line-init zle-keymap-select {
	case $KEYMAP in
		vicmd)
			PROMPT="%{$fg_bold[red]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		;;
		*)
			PROMPT="%{$fg_bold[green]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		;;
	esac
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

setopt extendedglob
setopt appendhistory
setopt promptsubst

alias nb="jupyter notebook"

alias l="ls -A --color"
alias ll="ls -lA --color"

