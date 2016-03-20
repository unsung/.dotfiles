HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
KEYTIMEOUT=1


#zstyle :compinstall filename '/home/unsung/.zshrc'

#autoload -Uz compinit
#compinit

export EDITOR="/usr/bin/vim"
export PATH="$HOME/.cabal/bin:$HOME/bin:$PATH"
export STEAM_FRAME_FORCE_CLOSE=1

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

#export TERM=xterm
#[[ $TERM == xterm ]] && TERM=xterm-256color


#autoload colors && colors

. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh 2> /dev/null || \
. /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh 2> /dev/null

#autoload -U promptinit
#promptinit

#source /usr/share/git/completion/git-prompt.sh
#local _RPROMPT='$(__git_ps1 " (%s)")'

#RPROMPT="${_RPROMPT}"

#function zle-line-init zle-keymap-select {
	#case $KEYMAP in
		#vicmd)
			#PROMPT="%{$fg_bold[red]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		#;;
		#*)
			#PROMPT="%{$fg_bold[green]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		#;;
	#esac
	#zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select

setopt extendedglob
setopt appendhistory
setopt promptsubst

alias nb="jupyter notebook"

