if [ $(uname -s) = 'Darwin' ]; then
    [ -z "$(which brew)" ] &&
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew cask install \
        google-chrome \
        iterm2

    brew install \
        fish \
        neovim \
        git \
        python

    pip install \
        ipython \
        neovim \
        virtualfish
fi

mkdir -p ~/.config/nvim/autoload
curl --insecure -fLo ~/.config/nvim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
