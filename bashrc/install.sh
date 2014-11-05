#!/bin/bash

if [[ -e ~/.bashrc ]]; then
    cp ~/.bashrc ~/.bashrc.bak
    #cp -rf .bashrc ~/
    echo "export EDITOR=vim" >> ~/.bashrc
else
    cp -rf .bashrc ~/
fi

cp -rf .inputrc ~/
