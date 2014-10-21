#!/bin/bash

if [[ -e ~/.tmux.conf ]]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
    cp -rf .tmux* ~/
else
    cp -rf .tmux* ~/
fi
