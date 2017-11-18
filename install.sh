#!/bin/bash
# Disabling this script -- needs more work
exit 1

# Check for things we depend on
if command -v brew >/dev/null; then
  echo "Checking for brew.. OK"
else
  echo "Run this after you install brew "; exit 1
fi

if command -v mvim >/dev/null; then
  echo "Checking for macvim.. OK"
else
  echo "Installing mvim via brew..."
  brew install macvim
fi

# Link stuff
ln -s ./home/.gitconfig ~/.gitconfig
ln -s ./home/.git_template ~/.git_template
ln -s ./home/.vim ~/.vim
ln -s ./home/.vimrc ~/.vimrc
ln -s /usr/local/bin/mvim /usr/local/bin/vim
ln -s ./scripts ~/.scripts

# Make scripts executable
chmod +x ~/.scripts/*

# Make sure we have plugins
vim +PluginInstall +qall

