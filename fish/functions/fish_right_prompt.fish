function fish_right_prompt
  # Git prompt
  set_color green
  fish_git_prompt

  # rbenv version
  set_color cyan
  echo -n "("(rbenv version-name)")"

  # vim mode indicator
  switch $fish_bind_mode
    case default
      set_color red
      echo -n '(N)'
    case insert
      set_color yellow
      echo -n '(I)'
    case replace_one
      set_color yellow
      echo -n '(R)'
    case visual
      set_color brmagenta
      echo -n '(V)'
    case '*'
      set_color red
      echo -n '(?)'
  end
end
