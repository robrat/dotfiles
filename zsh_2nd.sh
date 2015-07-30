#!/bin/bash

CURR_DIR=$(pwd)

mkdir -p ~/git/github

echo 'Installing powerline fonts ...'
cd ~/git/github
if [[ -d powerline/fonts ]]; then
    echo "Directory ~/git/github/powerline/fonts already existing. Nothing to do."
else
    git clone https://github.com/powerline/fonts powerline/fonts
    powerline/fonts/install.sh
fi

echo 'Installing powerlevel9k zsh theme ...'
cd ~/.oh-my-zsh/custom
if [[ -d themes/powerlevel9k ]]; then
    echo "~/.oh-my-zsh/custom/themes/powerlevel9k already existing. Nothing to do."
else
    git clone https://github.com/bhilburn/powerlevel9k.git themes/powerlevel9k
fi

echo 'Copying some configs / aliases to home dir ...'
cd $CURR_DIR
cp -v .zshrc env-java6 env-java7 env-java8 .aliases ~


dircolors -b >> ~/.zshrc

echo 'Cloning and installing dircolors-solarized ...'
cd ~/git/github
if [[ -d seebi/dircolors-solarized ]]; then
    echo "~/git/github/seebi/dircolors-solarized already existing. Nothing to do."
else
    git clone https://github.com/seebi/dircolors-solarized seebi/dircolors-solarized
fi
# dircolors -b seebi/dircolors-solarized/dircolors.ansi-dark >> ~/.zshrc
# eval $(dircolors -b seebi/dircolors-solarized/dircolors.ansi-dark)

echo 'Done. Do not forget to change the terminal font.'
