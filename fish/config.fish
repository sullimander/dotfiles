set fish_greeting ""

# Path Settings
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path $HOME/.rbenv/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $GOPATH/bin

# Golang Settings
set -gx GOPATH $HOME/src/go

# Use 1password for ssh key management
set -gx SSH_AUTH_SOCK $HOME/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Load addtional apps
test -e /opt/homebrew/share/autojump/autojump.fish ; and source /opt/homebrew/share/autojump/autojump.fish

set -gx GIT_EDITOR zed --wait
set -gx EDITOR zed --wait
set -gx VISUAL zed
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --no-ignore-vcs'

# Use vim key bindings and clear the mode prompt since the cursor should indicate the mode
fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block
function fish_mode_prompt; end

# Load additional settings
test -e $HOME/.config/fish/aliases.fish ; and source $HOME/.config/fish/aliases.fish

# Load local overides
test -e $HOME/.config.local.fish ; and source $HOME/.config.local.fish
