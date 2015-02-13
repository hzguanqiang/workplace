#!/bin/bash

#sudo apt-get update
#sudo apt-get install exuberant-ctags -y

if [[ -e ~/.vimrc ]]; then
    echo 'Backup vimrc to ~/.vimrc.bak'
    mv ~/.vimrc ~/.vimrc.bak
fi

if [[ -d ~/.vim ]]; then
    echo 'Backup vim to ~/.vim.bak'
    mv ~/.vim ~/.vim.bak
fi

sudo rm -rf ~/.vim
sudo rm -rf ~/.vimrc

ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
echo 'install finished.' 

