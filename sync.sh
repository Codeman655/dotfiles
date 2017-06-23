#!/bin/bash

function print_usage() {
    echo "Usage ./sync.sh [-pull|-push]"
    echo "-pull: pull local changes to the git repository"
    echo "-push: push repo dotfiles to HOME"
}

if [[ ! -n $1  || ! $# -eq  1 ]] ; then
    print_usage
    exit
fi

if [[ $1 = "-pull" ]] ; then 
    #oh-my-zsh
    cp -r $HOME/.git .

    cp $HOME/.zshrc .
    cp $HOME/.bashrc .

    #tmux
    cp $HOME/.tmux.conf  .

    #vim
    cp $HOME/.vimrc .
    cp -r $HOME/.vim .

    #git
    cp -r $HOME/.git .
    cp -r $HOME/.gitconfig

elif  [[ $1 = "-push" ]] ; then 
    #oh-my-zsh
    cp .zshrc $HOME
    cp .bashrc $HOME

    #tmux
    cp .tmux.conf  $HOME

    #vim
    cp .vimrc $HOME
    cp -r .vim $HOME

    #git
    cp -r .git $HOME
    cp -r .gitconfig
else 
    echo "Invalid command"
    print_usage
fi

