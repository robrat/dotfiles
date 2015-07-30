#!/bin/bash

ZSH=$(which zsh)
if [[ -z "$ZSH" ]]; then
    echo "Zsh is not installed."
    exit 1
fi
CURL=$(which curl)
if [[ -z "$CURL" ]]; then
    echo "Curl is not installed."
    exit 1
fi


echo 'Installing oh-my-zsh ...'
curl -sfL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh > /tmp/oh-my-zsh-install.sh
if [[ $? -ne 0 ]]; then
    echo "Failed to get oh-my-zsh installer"
    exit 1
fi
bash /tmp/oh-my-zsh-install.sh

