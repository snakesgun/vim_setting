#!/bin/bash


# Vim path checking

AUTOLOAD_DIR = "${HOME}/.vim/autoload"

if [ -d $AUTOLOAD_DIR ]
then
    echo "Directory /path/to/dir exists.";
else
    mkdir -p $AUTOLOAD_DIR;
fi

# Downloading Plug.vim

wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim $AUTOLOAD_DIR