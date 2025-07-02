# Organizes abbreviations into files by type
for file in $HOME/.config/fish/abbrs/*.fish
  source $file
end

abbr -a ...... cd ../../../../..
abbr -a ..... cd ../../../..
abbr -a .... cd ../../..
abbr -a ... cd ../..
abbr -a -- - cd -

abbr -a l ls -lah
abbr -a la ls -lAh
abbr -a ll ls -lh
abbr -a lsa ls -lah

abbr -a grepn grep -n
abbr -a grepr grep -rnH

abbr -a abl abbr -l
abbr -a abr set -e abbrs_initialized

abbr -a themer set -e theme_initialized

abbr -a hist history
abbr -a hist:clear history clear

abbr -a c code-insiders
abbr -a e zed
abbr -a o open
abbr -a v nvim
abbr -a z zed
abbr -a zp zed-preview

abbr -a c. c .
abbr -a e. e .
abbr -a o. o .
abbr -a ef 'e (fzf)'

abbr -a yt youtube-dl

abbr -a pgit git config user.email ryan@sul.li

test -e $HOME/.abbrs.local.fish; and source $HOME/.abbrs.local.fish
