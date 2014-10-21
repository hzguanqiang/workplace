#!/bin/bash

if [[ -e ~/.bashrc ]]; then
    mv ~/.bashrc ~/.bashrc.bak
    cp -rf .bashrc ~/
else
    cp -rf .bashrc ~/
fi

cp -rf .inputrc ~/
