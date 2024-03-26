set -gx RUBY_CONFIGURE_OPTS --with-readline-dir=/opt/homebrew/opt/readline
set -gx RBENV_ROOT $HOME/.rbenv
status --is-interactive; and rbenv init - fish | source
