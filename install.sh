#!/bin/bash

if [ -z "$(which pip)" ]; then
    pip install \
        ipython \
        neovim \
        virtualfish
fi

chsh -s `which fish`

mkdir -p ~/.config/nvim/autoload
curl --insecure -fLo ~/.config/nvim/autoload/plug.vim \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

python ~/.config/nvim/plugged/YouCompleteMe/install.py

