#!/bin/bash

# Installing Plug for VIM...
# install vim-plug
if [ ! -d "$HOME/.config/my-vim/autoload" ]; then
	echo "download... vim-plug."
	curl -fLo ~/.config/my-vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# install Ag silver searcher
echo "Installing AG Silver Searcher..."
brew install the_silver_searcher

