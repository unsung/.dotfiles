HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v

zstyle :compinstall filename '/home/unsung/.zshrc'

autoload -Uz compinit
compinit

export EDITOR="/usr/bin/vim"
export PATH="$HOME/.cabal/bin:$HOME/bin:$PATH"
[[ $TERM == xterm ]] && TERM=xterm-256color


autoload -U promptinit
promptinit

autoload colors && colors

KEYTIMEOUT=1

function zle-line-init zle-keymap-select {
	case $KEYMAP in
		vicmd)
			#PROMPT="%{$fg_bold[red]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$reset_color%}%# "
			PROMPT="%{$fg_bold[red]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		;;
		*)
			#PROMPT="%{$fg_bold[blue]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$reset_color%}%# "
			PROMPT="%{$fg_bold[green]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		;;
	esac
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

setopt extendedglob
setopt appendhistory

alias nb="ipython notebook"

alias pacsort="sudo reflector --country 'United States' -l 30 -n 20 -p http --sort rate --save /etc/pacman.d/mirrorlist"

alias l="ls -A --color"
alias ll="ls -lA --color"

