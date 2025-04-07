#!/bin/bash

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh is already installed."
fi

# Symlink vimrc
if [ ! -L ~/.vimrc ]; then
  echo "Symlinking vimrc..."
  ln -sf "$PWD/.vimrc" ~/.vimrc
else
  echo "~/.vimrc symlink already exists."
fi

# Correct vimrc permissions
echo "Setting vimrc permissions..."
chmod u+rw "$PWD/.vimrc"

# Correct ~/.vim permissions
echo "Setting ~/.vim permissions..."
chmod -R 755 ~/.vim

# Install vim-plug
echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins
echo "Installing Vim plugins..."
vim -c "PlugInstall"

echo "Linking .zshrc"
# rm -rf ~/.zshrc
# ln -sf "$PWD/.zshrc" ~/.zshrc
#chmod u+rw "$PWD/.vimrc"


# Install kube-ps1 (macOS only)
  echo "Updating Homebrew..."
  brew update
  echo "Installing kube-ps1..."
  brew install kube-ps1



echo "Installation complete."

