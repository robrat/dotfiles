#!/bin/sh

echo 'Installing oh-my-zsh ...'
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

mkdir -p ~/git/github

echo 'Installing powerline fonts ...'
cd ~/git/github
git clone https://github.com/powerline/fonts powerline/fonts
powerline/fonts/install.sh

echo 'Installing powerlevel9k zsh theme ...'
cd ~/.oh-my-zsh/custom
git clone https://github.com/bhilburn/powerlevel9k.git themes/powerlevel9k

echo 'Copying some configs / aliases to home dir ...'
cp -v .zshrc env-java6 env-java7 env-java8 .aliases ~


dircolors -b >> ~/.zshrc

# echo 'Cloning and installing dircolors-solarized ...'
# cd ~/git/github
# git clone https://github.com/seebi/dircolors-solarized seebi/dircolors-solarized
# dircolors -b seebi/dircolors-solarized/dircolors.ansi-dark >> ~/.zshrc

echo 'Done. Do not forget to change the terminal font.'
