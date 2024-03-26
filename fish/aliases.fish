# Loaded by config.fish contains simple functions and aliases.

function df; command df -h $argv; end
function grep; command grep --color=auto $argv; end
function md; command mkdir -p $argv; end
function rm; command rm -iv $argv; end

function db:conflicts
  find ~/Dropbox\ \(*\) -path "*(*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -print
  find ~/Dropbox\ \(*\)  -path "*DropboxConflicted*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -print
end

function db:conflicts:rm
  find ~/Dropbox\ \(*\) -path "*(*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -i "{}" \;
  find ~/Dropbox\ \(*\) -path "*DropboxConflicted*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -i "{}" \;
end

function db:conflicts:rmf
  find ~/Dropbox\ \(*\) -path "*(*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -f "{}" \;
  find ~/Dropbox\ \(*\) -path "*DropboxConflicted*'s conflicted copy [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -exec rm -f "{}" \;
end

function rd:start
  brew services restart postgresql@15
  brew services restart redis
  brew services restart mongodb-community
end

function rd:stop
  brew services stop postgresql@15
  brew services stop redis
  brew services stop mongodb-community
end

test -e $HOME/aliases.local.fish ; and source $HOME/aliases.local.fish
