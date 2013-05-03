#!/bin/bash
if [ -e ~/.bashrc ]
then 
    echo ~/.bashrc exist!
else
  ln -s ~/.bashrc ~/.bash_profile
fi
pwd=`pwd`
echo $pwd

#cmd=`echo "\$"a alias dev=\"cd ${pwd}\"`
cmd='alias dev="cd '${pwd}\"
echo $cmd

dev=`grep "alias dev" ~/.bashrc`
echo $dev

if [ "${dev}s" != "s" ]
then
    echo alias dev has been used!
else
    echo $cmd >> ~/.bashrc
fi

echo 'alias ll="ls -l"' >> ~/.bashrc
