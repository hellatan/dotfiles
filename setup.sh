#!/usr/bin/env bash

if [ ! -d ~/.aws ]; then
    echo "~/.aws directory does not exist"
else
    echo "~/.aws already exists"
fi

if [ ! -f ~/.cutman.json ]; then
    echo "~/.cutman.json does not exist"
else
    echo "~/.cutman.json already exists"
fi

if [ ! -f ~/.fastly.json ]; then
    echo "~/.fastly.json does not exist"
else
    echo "~/.fastly.json already exists"
fi

if [ ! -d ~/.oh-my-zsh ]; then
    cd ~/
    git clone git@github.com:hellatan/oh-my-zsh.git ~/.oh-my-zsh
    cd ~/.oh-my-zsh
    git fetch --all
else
    if [ -f ~/.zprofile ]; then
        echo "~/.zprofile exists. not symlinking"
    else
        ln -s ~/.dotfiles/.zprofile ~/.zprofile
    fi

    if [ -f ~/.zshrc ]; then
        echo "~/.zshrc exists. not symlinking"
    else
        ln -s ~/.dotfiles/.zshrc ~/.zshrc
    fi
    source ~/.zshrc
fi

if [ -f ~/.vimrc ];then
    echo "~/.vimrc file already exist. not symlinking"
else 
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
fi
