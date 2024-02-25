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

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
