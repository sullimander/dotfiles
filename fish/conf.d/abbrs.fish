if not set -q abbrs_initialized
  set -U abbrs_initialized
  echo Setting abbreviations...

  # Organizes abbreviations into files by type
  for file in $HOME/.config/fish/abbrs/*.fish
    source $file
  end

  abbr -a ...... cd ../../../../..
  abbr -a ..... cd ../../../..
  abbr -a .... cd ../../..
  abbr -a ... cd ../..
  abbr -a -- - cd -

  abbr -a abl abbr -l
  abbr -a abr set -e abbrs_initialized

  abbr -a themer set -e theme_initialized

  abbr -a hist history
  abbr -a hist:clear history clear

  abbr -a a. a .
  abbr -a c. c .
  abbr -a e. e .
  abbr -a o. o .

  abbr -a yt youtube-dl

  abbr -a pgit git config user.email ryan@sul.li

  test -e $HOME/.abbrs.local.fish; and source $HOME/.abbrs.local.fish
end
