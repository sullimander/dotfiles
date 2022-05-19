set fish_greeting ""

# Path Settings
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path $HOME/.rbenv/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $GOPATH/bin

# Golang Settings
set -gx GOPATH $HOME/src/go

# GPG Settings
set -gx GPG_TTY (tty)
gpgconf --launch gpg-agent

# Use 1password for ssh key management
set -gx SSH_AUTH_SOCK $HOME/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Load addtional apps
test -e $HOME/.iterm2_shell_integration.fish ; and source $HOME/.iterm2_shell_integration.fish
test -e /usr/local/share/autojump/autojump.fish ; and source /usr/local/share/autojump/autojump.fish

set -gx EDITOR nvim
set -gx GIT_EDITOR nvim
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --no-ignore-vcs'

# Use vim key bindings and clear the mode prompt since it's included in the right prompt
fish_vi_key_bindings
function fish_mode_prompt; end

# Load additional settings
test -e $HOME/.config/fish/aliases.fish ; and source $HOME/.config/fish/aliases.fish

# Load local overides
test -e $HOME/.config.local.fish ; and source $HOME/.config.local.fish
