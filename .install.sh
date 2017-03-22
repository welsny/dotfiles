#!/bin/bash

set -e

[ -z "$(which brew)" ] &&
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap \
    caskroom/cask \
    homebrew/science \

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
    tmux
    R

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

brew install \
    ncurses
    mpd
    ncmpcpp

# cd ~ ; mkdir .mpd ; cd .mpd ; mkdir playlists ; touch mpd.conf mpd.db mpd.log mpd.pid mpdstate

