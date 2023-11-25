#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

source ~/.config/aliasrc
shopt -s autocd direxpand dotglob nocaseglob

# PS1
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01m\][ \[\033[01;31m\]\u@\h \[\033[00m\]\[\033[01m\]] \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;31m\]$\[\033[00m\]> '
else
    PS1='\[\033[01m\][ \[\033[01;34m\]\u@\h \[\033[00m\]\[\033[01m\]] \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;34m\]$\[\033[00m\]> '
fi

# Substring scrolling history

if [[ $- == *i* ]]
then
	bind '"\e[A": history-search-backward'
	bind '"\e[B": history-search-forward'
fi
