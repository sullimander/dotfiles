if test -z $GODIR
  set -x GODIR src/personal/go
end

# Path Settings
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path $HOME/.rbenv/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $GOPATH/bin

# Golang Settings
set -gx GOPATH $HOME/$GODIR
set fish_greeting "GOPATH: $GOPATH"

# GPG Settings
set -gx GPG_TTY (tty)
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Load addtional apps
test -e $HOME/.iterm2_shell_integration.fish ; and source $HOME/.iterm2_shell_integration.fish
test -e /usr/local/share/autojump/autojump.fish ; and source /usr/local/share/autojump/autojump.fish

set -x EDITOR vim
fish_vi_key_bindings

# Load additional settings
test -e $HOME/.config/fish/aliases.fish ; and source $HOME/.config/fish/aliases.fish

# Load local overides
test -e $HOME/.config.local.fish ; and source $HOME/.config.local.fish
