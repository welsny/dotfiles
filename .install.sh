#!/bin/bash

set -e

[ -z "$(which brew)" ] &&
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap \
    caskroom/cask \
    homebrew/science \
    crisidev/homebrew-chunkwm \

# Cask:
brew cask install \
    google-chrome \
    iterm2 \
    flux \
    vlc \
    slack\
    Caskroom/cask/libreoffice \

# Dev:
brew install \
    tmux \
    reattach-to-user-namespace \
    fish \
    neovim/neovim/neovim \
    git \
    hub \
    diff-so-fancy \
    python3 \
    m-cli \

pip3 install \
    jupyter \
    jupyterthemes \
    ipython \
    neovim \
    pandas \ 
    numpy \
    matplotlib \
    seaborn \

# Music:
mkdir -p ~/.mpd/playlists
touch ~/.mpd/mpd{.conf,.db,.log,.pid,state}

brew install \
    mpd \
    ncurses \
    ncmpcpp \
    youtube-dl \
    sox \

# Misc:

brew install \
    chunkwm \
    koekeishiya/formulae/skhd \

brew start \
    chunkwm \
    skhd \

# npm install -g \
#     fanyi

# Dev Config: 

chsh -s `which fish`

hub clone lambdalisue/jupyter-vim-binding $(jupyter --data-dir)/nbextensions/vim_binding
jupyter nbextension enable vim_binding/vim_binding

jt -t oceans16
jt -t onedork -vim

mkdir -p ~/.config/nvim/autoload
curl --insecure -fLo ~/.config/nvim/autoload/plug.vim \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

python ~/.config/nvim/plugged/YouCompleteMe/install.py

