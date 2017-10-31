#!/bin/bash

set -e

[ -z "$(which brew)" ] &&
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap \
    caskroom/cask \
    homebrew/science \

# Cask:
brew cask install \
    google-chrome \
    iterm2 \
    flux \
    vlc \
    slack\
    Caskroom/cask/libreoffice

# Dev:
brew install \
    tmux \
    reattach-to-user-namespace \
    fish \
    neovim/neovim/neovim \
    git \
    hub \
    diff-so-fancy \
    python \
    R

pip install \
    ipython \
    neovim \
    numpy \
    matplotlib


# Music:
mkdir -p ~/.mpd/playlists
touch ~/.mpd/mpd{.conf,.db,.log,.pid,state}

brew install \
    mpd \
    ncurses \
    ncmpcpp \
    youtube-dl \
    sox

# Other:
npm install -g \
    fanyi

chsh -s `which fish`

mkdir -p ~/.config/nvim/autoload
curl --insecure -fLo ~/.config/nvim/autoload/plug.vim \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

python ~/.config/nvim/plugged/YouCompleteMe/install.py


