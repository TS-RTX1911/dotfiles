#! /bin/bash

cp ./.screenrc ~/
cp ./.vimrc ~/
#cp -r ./.vim ~/

cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo
echo "Install completed."
echo
