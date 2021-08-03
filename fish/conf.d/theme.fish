# Loosley based on @rkbk60's onedark-fish
# https://github.com/rkbk60/onedark-fish

if not set -q theme_initialized
  set -U theme_initialized
  echo Setting theme...

  set -U fish_color_autosuggestion white
  set -U fish_color_cancel brblack
  set -U fish_color_command brgreen
  set -U fish_color_comment brblack
  set -U fish_color_cwd brred
  set -U fish_color_end white
  set -U fish_color_error brred
  set -U fish_color_escape brcyan
  set -U fish_color_history_current brcyan
  set -U fish_color_host brgreen
  set -U fish_color_host_remote yellow
  set -U fish_color_match brcyan --underline
  set -U fish_color_normal white
  set -U fish_color_operator brmagenta
  set -U fish_color_param brred
  set -U fish_color_quote brgreen
  set -U fish_color_redirection brcyan
  set -U fish_color_search_match bryellow --background=brblack
  set -U fish_color_selection white --bold --background=brblack
  set -U fish_color_status red
  set -U fish_color_user brblue
  set -U fish_color_valid_path brred --underline
  set -U fish_pager_color_completion white
  set -U fish_pager_color_description white
  set -U fish_pager_color_prefix brgreen --bold --underline
  set -U fish_pager_color_progress brwhite --background=cyan
end
