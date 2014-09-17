#! /bin/bash

cp ./.screenrc ~/
cp ./.vimrc ~/
cp -r ./.vim ~/

cd ~
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

echo
echo "Install completed."
echo
