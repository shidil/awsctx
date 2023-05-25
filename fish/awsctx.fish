# ~/.config/fish/functions/awsctx.fish
# Switch aws profiles with fzf, login with sso if unauthenticated
function awsctx
  set profile $argv 
  if test -z "$argv"
    set profile $(aws configure list-profiles | fzf)
  end
  echo "Switching to AWS profile $profile"
  # TODO: support awsctx -   for switching back and forth
  # set -x PREV_AWS_PROFILE $AWS_PROFILE
  set -gx AWS_PROFILE $profile
  aws sts get-caller-identity || aws sso login
end
