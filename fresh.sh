#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if [ ! -d ~/.oh-my-zsh ]; then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Remove .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
/opt/homebrew/bin/brew update

# Install all our dependencies with bundle (See Brewfile)
/opt/homebrew/bin/brew bundle --file $HOME/.dotfiles/Brewfile

# Set macOS preferences - we will run this last because this will reload the shell
source $HOME/.dotfiles/.macos

# Load a launchpad app layout from a YAML config file named `.launchpad.yaml`
/opt/homebrew/bin/lporg load --config $HOME/.dotfiles/launchpad.yaml --no-backup --yes

echo "\nDone. Note that some of these changes require a logout/restart to take effect."
