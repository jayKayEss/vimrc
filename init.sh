#!/bin/bash

cd ~
mv vimrc .vim
mkdir -p .vim/swp
mkdir -p .vim/undo
ln -s .vim/.vimrc .vimrc

