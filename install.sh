#!/bin/sh

echo 'Installing oh-my-zsh...'

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Ensure we have the proper env variables
if [[ -z "$ZSH" ]]; then
  ZSH="$HOME/.oh-my-zsh"
fi
if [[ -z "$ZSH_CUSTOM" ]]; then
  ZSH_CUSTOM="$ZSH/custom"
fi

# Make the theme directory
mkdir -p $ZSH_CUSTOM/themes

echo 'Downloading dependencies...'

# These are all of the dependencies we will need
declare -a deps=(
  "themes/blake.zsh-theme"
  "aliases.zsh"
  "externals.zsh"
)

# Download them
for i in "${deps[@]}"
do
  curl -o $ZSH_CUSTOM/$i -sSL https://raw.githubusercontent.com/bharley/oh-my-zsh/master/$i
done

echo 'Set your ZSH_THEME="blake"!'
echo 'Done.'

