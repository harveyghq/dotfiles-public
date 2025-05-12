#!/usr/bin/env bash
set -e

if [ ! -e phase1.tmp ]; then
    sudo apt update -y
    sudo apt install zsh tmux xsel git vim-gtk3 curl wget unzip -y
    sudo apt install build-essential python3 python3-pip -y
    touch phase1.tmp
fi

# make symbolic link
if [ ! -e phase2.tmp ]; then
    ln -sf $(pwd)/.gitconfig ~/.gitconfig
    ln -sf $(pwd)/.profile ~/.profile
    ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
    ln -sf $(pwd)/.vimrc ~/.vimrc
    ln -sf $(pwd)/.zshenv ~/.zshenv
    ln -sf $(pwd)/.zshrc ~/.zshrc

    rm -rf ~/.shell ~/.vim ~/.zsh
    ln -sf $(pwd)/.shell ~/.shell
    ln -sf $(pwd)/.vim ~/.vim
    ln -sf $(pwd)/.zsh ~/.zsh
    touch phase2.tmp
fi

