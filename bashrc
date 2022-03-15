#!/bin/sh

if test $(which brew); then
  export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
fi

function prompt {
  local GREEN="\[\e[0;32m\]"
  local CYAN="\[\e[0;36m\]"
  local YELLOW="\[\e[0;33m\]"
  local BLUE="\[\e[0;34m\]"
  local GRAY="\[\e[1;30m\]"
  local WHITE="\[\e[0;37m\]"
  local GIT='$(__git_ps1 "%s:")'
  export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;}PS1='${CYAN}${GIT}${GREEN}\u@\h:${BLUE}\w$ ${WHITE}'"
}

prompt

export CLICOLOR=1
export GIT_EDITOR='vim'
export EDITOR='vim'
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs'

[[ -s $HOME/.git-prompt.sh ]] && source $HOME/.git-prompt.sh
[[ -s $HOME/.cargo/env ]] && source $HOME/.cargo/env
[[ -s /usr/local/etc/profile.d/autojump.sh ]] && source /usr/local/etc/profile.d/autojump.sh

[[ -s $HOME/.bashrc.local ]] && source $HOME/.bashrc.local

[[ -s $HOME/.aliases ]] && source $HOME/.aliases

if test $(which op); then
  source <(op completion bash)
fi
