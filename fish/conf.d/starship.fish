if test $TERM_PROGRAM != "WarpTerminal"
  status --is-interactive; and starship init fish | source
end
