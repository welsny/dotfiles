#!/bin/bash

set -e

[ -z "$(which brew)" ] &&
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew tap \
    koekeishiya/formulae \

# Cask:
brew cask install \
    google-chrome \
    iterm2 \
    flux \
    vlc \
    slack\
    Caskroom/cask/libreoffice \
    alfred \
    bartender \
    istat-menus \

# Dev:
brew install \
    tmux \
    reattach-to-user-namespace \
    fish \
    neovim \
    git \
    hub \
    diff-so-fancy \
    python3 \
    m-cli \
    cmake \
    the_silver_searcher \

pip3 install \
    jupyter \
    jupyterthemes \
    ipython \
    neovim \
    pandas \ 
    numpy \
    matplotlib \
    seaborn \
    pynvim \

curl -L https://get.oh-my.fish | fish

omf install \
    aws \

# Music:
mkdir -p ~/.mpd/playlists
touch ~/.mpd/mpd{.conf,.db,.log,.pid,state}

brew install \
    mpd \
    ncurses \
    ncmpcpp \
    youtube-dl \
    sox \

pip3 install scdl\
    osxmpdkeys \
    nbdime \

# Jupyter

hub clone lambdalisue/jupyter-vim-binding $(jupyter --data-dir)/nbextensions/vim_binding
jupyter nbextension enable vim_binding/vim_binding

jt -t oceans16
jt -t onedork -vim

# Misc:

brew install \
    yabai \
    koekeishiya/formulae/skhd \

brew start \
    chunkwm \
    skhd \

# Dev Config: 

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s `which fish`

mkdir -p ~/.config/nvim/autoload
curl --insecure -fLo ~/.config/nvim/autoload/plug.vim \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

python ~/.config/nvim/plugged/YouCompleteMe/install.py

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

