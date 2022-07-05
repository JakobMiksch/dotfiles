#!/bin/sh

# creates the symlinks interactively
make_link(){
    TARGET_DOTFILE_PATH=${HOME}/${2}
    ln -s -i -v "$(readlink -f ${1})" ${TARGET_DOTFILE_PATH}
}

# Tmux
make_link tmux.conf     .tmux.conf

# Vim
make_link vimrc         .vimrc

# Zsh
make_link zsh/zshrc     .zshrc
make_link zsh/zlogin    .zlogin
make_link zsh/zlogout   .zlogout
make_link zsh/zpreztorc .zpreztorc
make_link zsh/zprofile  .zprofile
make_link zsh/zshenv    .zshenv

# Aliases
make_link public_aliases.sh .public_aliases.sh

# Input options for terminal
make_link inputrc       .inputrc

# git
make_link gitconfig       .gitconfig

# VSCode
make_link \
  vscode/snippets/javascript.json \
  .config/Code/User/snippets/javascript.json

make_link \
  vscode/snippets/markdown.json \
  .config/Code/User/snippets/markdown.json

make_link \
  vscode/keybindings.json \
  .config/Code/User/keybindings.json
