#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -la'
alias py='python3'
alias ping='ping -c4'

alias nnn='nnn -de'

alias SteamPath='cd ~/.steam/steam/steamapps/compatdata/374320/pfx/drive_c/users/steamuser/Application\ Data/'

PS1='[\u@\h \W]\$ '

#export TERMINAL='bin/xterm'
export NNN_OPTS="H"
export EDITOR=nvim

export PATH="~/.local/bin:$PATH"
#export DISTCC_HOSTS="localhost/4 ldb-001.lan/16" 

if [[ -z $DISPLAY ]] && [[ ! -n "${SSH_TTY}" ]]; then exec startx; fi

neofetch
alias clear='clear && neofetch'
