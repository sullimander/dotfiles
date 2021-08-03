function aws-creds
  for v in (aws-okta exec $argv[1] -- env | grep AWS_)
    echo $v | sed -E 's/^([^=]*)=(.*)$/set -gx \1 \2/g' | source -
  end
end
