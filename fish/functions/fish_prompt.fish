if test $TERM_PROGRAM = "WarpTerminal"
  function fish_prompt
    set last_status $status

    set_color cyan
    echo -n (prompt_pwd)" "

    # Git prompt
    set_color yellow
    echo -n "["(git config user.email)":"
    __fish_git_prompt "%s]"

    # rbenv version
    set_color red
    echo -n "["(rbenv version-name)"]"

    # Print command duration
    if test $CMD_DURATION; and test $CMD_DURATION != 0
      set duration $CMD_DURATION

      set_color green

      # Show duration of the last command in seconds
      if test $CMD_DURATION -gt 1000
        set_color yellow
        set duration (echo "$duration 1000" | awk '{printf "%.3fs", $1 / $2}')
      end

      if test $CMD_DURATION -gt 10000
        set_color red
      end

      echo -n "[$duration]"
    end

    set_color red
    switch $last_status
    case 0
      set_color green
    end
    echo -n "\$ "
    set_color normal
  end
end
