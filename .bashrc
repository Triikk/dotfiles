#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --all'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
PS1='[\u@\h \w]\$ '
HISTSIZE=10000

# fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# powerline statusline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
