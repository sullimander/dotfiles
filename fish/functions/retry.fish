function retry
  set -l options (fish_opt -s m -l max-retries --long-only -o)
  argparse $options -- $argv

  set -l runs 1
  while $argv
    if ! set -q _flag_max_retries
      continue
    end

    if test $runs -eq $_flag_max_retries
      break
    end

    set runs (math $runs + 1)
  end
end
