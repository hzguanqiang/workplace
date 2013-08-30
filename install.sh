#!/bin/bash


#config ssh key
echo begin to configure ssh....
cp ./ssh_key/ssh_config ~/.ssh/config                                                      
cp -rf ./ssh_key/new_id_rsa ~/.ssh/id_rsa                                                  
cp -rf ./ssh_key/new_id_rsa.pub ~/.ssh/id_rsa.pub                                          
chmod 600 ~/.ssh/id_rsa*                                                           
echo ssh configure finished!


echo begin to configure vim....
dir=~/vimrc
if [ -e $dir -a -d $dir ]
then
    echo $dir exist!
else
    echo $dir not exist!
    cp -rf vimrc ~/
    ln -s ~/vimrc/vim ~/.vim
    ln -s ~/vimrc/vimrc ~/.vimrc
fi

cp tmux/.tmux.conf ~/

echo configure vim and tmux finished!
