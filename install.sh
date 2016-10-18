#!/bin/bash

set -e

[ -z "$(which brew)" ] &&
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask

brew cask install \
    google-chrome \
    iterm2 \
    flux \
    vlc

brew install \
    fish \
    neovim/neovim/neovim \
    git \
    hub \
    diff-so-fancy \
    python \
    golang

pip install \
    ipython \
    neovim \
    virtualfish

chsh -s `which fish`

mkdir -p ~/.config/nvim/autoload
curl --insecure -fLo ~/.config/nvim/autoload/plug.vim \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

python ~/.config/nvim/plugged/YouCompleteMe/install.py
