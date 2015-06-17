#!/bin/sh

echo 'Installing oh-my-zsh ...'
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo 'Installing powerline fonts ...'
cd ~/git
git clone https://github.com/powerline/fonts powerline/fonts
cd powerline/fonts
./install.sh

echo 'Installing powerlevel9k zsh theme ...'
cd ~/.oh-my-zsh/custom
git clone https://github.com/bhilburn/powerlevel9k.git themes/powerlevel9k

echo 'Copying some configs / aliases to home dir ...'
cp -v .zshrc env-java6 env-java7 env-java8 .aliases ~

echo 'Done. Do not forget to change the terminal font.'
