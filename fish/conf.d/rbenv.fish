set -gx RUBY_CONFIGURE_OPTS --with-readline-dir=/usr/local/opt/readline
set -gx RBENV_ROOT $HOME/.rbenv
status --is-interactive; and rbenv init - fish | source
