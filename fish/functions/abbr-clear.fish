function abbr-clear
  for ab in (abbr -l)
    set -e abbrs_initialized
    abbr -e -- $ab
  end
end
