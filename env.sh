#!/bin/bash
if [ -e ~/.bashrc_profile ]
then 
    echo ~/.bashrc_profile exist!
else
  ln -s ~/.bashrc ~/.bash_profile
fi


pwd=`pwd`
cmd='alias dev="cd '${pwd}\"
echo $cmd

dev=`grep "alias dev" ~/.bashrc`
if [ "${dev}s" != "s" ]
then
    echo alias dev has been used!
else
    echo $cmd >> ~/.bashrc
fi

echo 'alias ll="ls -l"' >> ~/.bashrc
echo 'alias vi="vim"' >> ~/.bashrc
echo 'export PAGER=less' >> ~/.bashrc
echo 'alias p="ps -ef|grep "' >> ~/.bashrc
echo 'alias k="sudo pkill "' >> ~/.bashrc

source ~/.bashrc
