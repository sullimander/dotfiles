#!/bin/sh

if test $(which brew); then
  export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
fi

export CLICOLOR=1
export GIT_EDITOR='vim'
export EDITOR='vim'
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs'

[[ -s $HOME/.cargo/env ]] && source $HOME/.cargo/env
[[ -s /usr/local/etc/profile.d/autojump.sh ]] && source /usr/local/etc/profile.d/autojump.sh

[[ -s $HOME/.bashrc.local ]] && source $HOME/.bashrc.local

[[ -s $HOME/.aliases ]] && source $HOME/.aliases

if test $(which op); then
  source <(op completion bash)
fi

eval "$(starship init bash)"
