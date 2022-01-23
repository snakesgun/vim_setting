#!/bin/bash


# Checking for autoload directory
AD=$HOME/.vim/autoload;

if [ -d "${AD}" ]
then
    echo "Directory vim autoload exists.";
else
    echo "Autoload directory does not exists.";
    echo "Making autoload directory......";
    mkdir -p $AD;
    echo "Done!"
fi

# Downloading Plug.vim

wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P $AD
cp ./previmrc.vim $HOME/.vimrc


echo "Plugin Installing......"
# Install Plugin
vim -c 'PlugInstall' \
    -c 'PlugUpdate' \
    -c 'qa!' # Quit vim

cp ./vimrc.vim $HOME/.vimrc