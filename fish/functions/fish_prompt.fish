function fish_prompt
  set last_status $status

  if test $TERM_PROGRAM != "WarpTerminal"
    echo ""
  end

  set_color cyan
  echo -n (prompt_pwd)" "


  __git_prompt
  __ruby_prompt

  if test $TERM_PROGRAM != "WarpTerminal"
    echo ""
  end

  __duration_prompt

  set_color red
  if test $TERM_PROGRAM = "WarpTerminal"; and test $last_status != 0
    echo -n "!"
  else
    switch $last_status
    case 0
      set_color green
    end
    echo -n "❯ "
  end

  set_color normal
end

function __ruby_prompt
  # rbenv version
  set_color red
  set global_ruby (rbenv global)
  set local_ruby (rbenv version-name)
  if test "$global_ruby" != "$local_ruby"
    echo -n "[ "(rbenv version-name)"]"
  end
end

function __git_prompt
  # Git prompt
  set_color yellow
  set -g __fish_git_prompt_show_informative_status true
  set -g __fish_git_prompt_showcolorhints true
  set -g __fish_git_prompt_color yellow
  set -g __fish_git_prompt_color_branch yellow
  set -g __fish_git_prompt_color_upstream green

  echo -n "[ "(git config user.email)"|"
  fish_git_prompt "%s]"
end

function __duration_prompt
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
end
