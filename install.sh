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

# Link stuff - these need to be fixed to translate into a full path
ln -s ./home/.gitconfig ~/.gitconfig
ln -s ./home/.git_template ~/.git_template
ln -s ./home/.vim ~/.vim
ln -s ./home/.vimrc ~/.vimrc
ln -s ./home/.pystartup ~/.pystartup
ln -s /usr/local/bin/mvim /usr/local/bin/vim
ln -s ./scripts ~/.scripts

# Make scripts executable
chmod +x ~/.scripts/*

# Make sure we have plugins
vim +PluginInstall +qall

# TODO need an install step for pip
# pip install readline
# Below might not be needed in the future.
# ln -s /usr/local/opt/readline/lib/libreadline.8.0.dylib /usr/local/opt/readline/lib/libreadline.7.dylib
