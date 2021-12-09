function abbr-clear
  set -e abbrs_initialized

  for ab in (abbr -l)
    abbr -e -- $ab
  end
end
