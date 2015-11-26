# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle :compinstall filename '/home/unsung/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

export EDITOR="/usr/bin/vim"
export PATH="~/.cabal/bin:$HOME/bin:$PATH"
#[[ $COLORTERM = gnome-terminal && ! $TERM = screen-256color ]] && TERM=xterm-256color
#export TERM=xterm-256color
[[ $TERM == xterm ]] && TERM=xterm-256color
#export GTK_IM_MODULE=ibus
#export XMODIFIERS="@im=ibus"
#export QT4_IM_MODULE=ibus
#export QT_IM_MODULE=ibus


autoload -U promptinit
promptinit

autoload colors && colors

#unset SSH_ASKPASS

# start ssh-agent and check stuff
#SSH_ENV="$HOME/.ssh/environment"

#function start_agent {
    #echo "Initialising new SSH agent..."
    #/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    #echo succeeded
    #chmod 600 "${SSH_ENV}"
    #. "${SSH_ENV}" > /dev/null
	#/usr/bin/ssh-add $HOME/.ssh/id_rsa;
#}

# Source SSH settings, if applicable

#if [ -f "${SSH_ENV}" ]; then
    #. "${SSH_ENV}" > /dev/null
    ##ps ${SSH_AGENT_PID} doesn't work under cywgin
    #ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        #start_agent;
    #}
#else
    #start_agent;
#fi

#unset SSH_ASKPASS

KEYTIMEOUT=1

function zle-line-init zle-keymap-select {
	case $KEYMAP in
		vicmd)
			#PROMPT="%{$fg_bold[red]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$reset_color%}%# "
			PROMPT="%{$fg_bold[red]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		;;
		*)
			#PROMPT="%{$fg_bold[blue]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$reset_color%}%# "
			PROMPT="%{$fg_bold[blue]%}%n%{$reset_color%} %{$fg_no_bold[cyan]%}%~ %{$fg_no_bold[magenta]%}%#%{$reset_color%} "
		;;
	esac
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

setopt extendedglob
setopt appendhistory

# some convenient aliases
alias sshlectura="ssh jcmanning@lectura.cs.arizona.edu"
alias sshfaraday="ssh jcmanning@faraday.physics.arizona.edu"

alias nb="ipython notebook"

alias pacsort="sudo reflector --country 'United States' -l 30 -n 20 -p http --sort rate --save /etc/pacman.d/mirrorlist"

alias L="less"
alias H="head"
alias T="tail"
alias G='grep -Ii --color'
alias C="wc -l"
alias N="/dev/null"
alias S="sort"
alias _="sudo"
alias X="exit"
alias V="vim"

#alias cat="lolcat"

# eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
# eval "$(thefuck --alias FUCK)"
