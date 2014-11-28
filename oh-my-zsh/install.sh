sudo apt-get install zsh
git clone https://github.com/joelthelion/autojump.git
cp -rf ../oh-my-zsh ~/.oh-my-zsh
cp -rf templates/zshrc.zsh-template ~/.zshrc 
cd autojump
./install.py
