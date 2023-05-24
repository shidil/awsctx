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

