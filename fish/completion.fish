# ~/.config/fish/completions/awsctx.fish
set -l profiles $(aws configure list-profiles)
complete -c awsctx -f -a "$profiles"