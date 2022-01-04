#!/bin/sh

# prezto files
ln -sf `pwd`/.prezto/runcoms/zlogin ~/.zlogin
ln -sf `pwd`/.prezto/runcoms/zlogout ~/.zlogout
ln -sf `pwd`/.prezto/runcoms/zpreztorc ~/.zpreztorc
ln -sf `pwd`/.prezto/runcoms/zprofile ~/.zprofile
ln -sf `pwd`/.prezto/runcoms/zshenv ~/.zshenv
ln -sf `pwd`/.prezto/runcoms/zshrc ~/.zshrc


# simple dotfiles
DOT_FILES=".gitconfig .tmux.conf .emacs.d .asdfrc"
for file in $DOT_FILES
do
    ln -sf `pwd`/$file ~
done
