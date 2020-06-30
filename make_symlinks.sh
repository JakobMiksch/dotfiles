#!/bin/sh

# creates the symlinks interactively
make_link(){
    TARGET_DOTFILE_PATH=${HOME}/${2}
	ln -s -i -v "$(readlink -f ${1})" ${TARGET_DOTFILE_PATH}
}

make_link tmux.conf     .tmux.conf
make_link vimrc         .vimrc
make_link zsh/zshrc     .zshrc
make_link zsh/zlogin    .zlogin
make_link zsh/zlogout   .zlogout
make_link zsh/zpreztorc .zpreztorc
make_link zsh/zprofile  .zprofile
make_link zsh/zshenv    .zshenv
make_link public_aliases.sh .public_aliases.sh
