#!/bin/bash


# Vim path checking

if [ -d "${HOME}/.vim/autoload" ]
then
    echo "Directory /path/to/dir exists.";
else
    mkdir -p "${HOME}/.vim/autoload";
fi