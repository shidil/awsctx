# awsctx

Simple shell script to switch between different AWS_PROFILE variables from your aws-cli config. It uses the amazing [fzf](https://github.com/junegunn/fzf) to provide fuzzy search UI for quick and interactive selection.

## Installation

```sh
git clone https://github.dev/shidil/awsctx.git
cd awsctx
```

### Fish

```sh
cp ./fish/awsctx.fish ~/.config/fish/functions/awsctx.fish
# for completion support
cp ./fish/completion.fish ~/.config/fish/completions/awsctx.fish
```

### Bash

```sh
cat ./awsctx.sh >> ~/.bashrc
```

### Zsh

```sh
cat ./awsctx.sh >> ~/.zshrc
```

## Usage

```sh
# This will show list of profiles and selection UI with fzf
awsctx

# To select profile directly
awsctx prod-env
```

## Preview

https://github.com/shidil/awsctx/assets/4880359/46dc18de-386b-4910-ac4e-911785cecaf7

Given `~/.aws/config` file like the example below

```
[profile prod-admin]
sso_session = orgname
sso_account_id = 1111111111
sso_role_name = AdministratorAccess
region = ap-southeast-2
output = json

[profile prod]
sso_session = orgname
sso_account_id = 1111111112
sso_role_name = ViewOnlyAccess
region = ap-southeast-2
output = json

[profile dev-admin]
sso_session = orgname
sso_account_id = 1111111113
sso_role_name = AdministratorAccess
region = ap-southeast-2
output = json

[profile another]
sso_session = orgname
sso_account_id = 22222222222
sso_role_name = ViewOnlyAccess
region = ap-south-1
output = json

[sso-session orgname]
sso_start_url = https://orgname.awsapps.com/start#
sso_region = ap-south-1
sso_registration_scopes = sso:account:access
```
