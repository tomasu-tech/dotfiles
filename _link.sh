#!/bin/sh

# simple dotfiles
DOT_FILES=".gitconfig .asdfrc .zshrc .zprofile"
for file in $DOT_FILES
do
    ln -sf `pwd`/$file ~
done
