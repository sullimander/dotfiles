# Loaded by config.fish contains simple functions and aliases.

function df; command df -h $argv; end

function grep; command grep --color=auto $argv; end

function grepn; grep -n $argv; end
function grepr; grep -rnH $argv; end

function l; ls -lah $argv; end
function la; ls -lAh $argv; end
function ll; ls -lh $argv; end
function lsa; ls -lah $argv; end

function md; command mkdir -p $argv; end
function rm; command rm -iv $argv; end

function c; code $argv; end
function e; v $argv; end
function o; open $argv; end
function v; nvim $argv; end

function aliases; e $HOME/.config/fish/; end
function aliases:local; e $HOME/.aliases.local.fish; end

function db:conflicts
  find ~ -path "*(*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -print
  find ~ -path "*DropboxConflicted*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -print
end

function db:conflicts:rm
  find ~ -path "*(*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -i "{}" \;
  find ~ -path "*DropboxConflicted*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -i "{}" \;
end

function db:conflicts:rmf
  find ~ -path "*(*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -f "{}" \;
  find ~ -path "*DropboxConflicted*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -f "{}" \;
end

function rd:start
  brew services run postgresql
  brew services run redis
end

function rd:stop
  brew services stop postgresql
  brew services stop redis
end

test -e $HOME/aliases.local.fish ; and source $HOME/aliases.local.fish
