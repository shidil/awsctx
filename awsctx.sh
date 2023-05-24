# Add this to your `~/.bashrc` or `~/.zshrc`
function awsctx {
    profile=$1
    if [[ -z "$profile" ]]; then
        profile=$(aws configure list-profiles | fzf)
    fi
    # TODO: support `awsctx` - for switching back on forth between prev and current profiles
    # prev_profile=$profile
    echo "Switching to AWS profile $profile"
    export AWS_PROFILE=$profile
    # verify auth status and trigger sso step if not logged in
    aws sts get-caller-identity || aws sso login
}