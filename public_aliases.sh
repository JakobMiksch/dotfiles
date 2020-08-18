alias c="codium ."

alias upd="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

alias pip=pip3
alias ipython=ipython3
alias python=python3

alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"
alias tree4="tree -L 4"
alias tree5="tree -L 5"
alias tree6="tree -L 6"

alias figlet="figlet -f big"

alias pipe_xclip="xclip -selection c"

# create folder and move into
mkcdir (){
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

# creates a directory with the current date as name
# accepts one argument that appends a custom suffix
mkdir_date (){
  today=$(date +"%Y-%m-%d")

  # check positional argument
  if [ -z "$1" ]; then
    filename="$today"
  else
    filename="$today"_"$1"
  fi
  mkdir -p -- "$filename" &&
  cd -P -- "$filename"
}

# copy pwd to clipboard
copy-pwd (){
    echo $(pwd) | xclip -selection clipboard
}


# copy location by argument to clipboard
copy-loc (){
    readlink -f $1 | xclip -selection clipboard
}

alias webcam_overlay="mpv --no-border --on-all-workspaces --ontop --geometry=450 -osc=no --panscan=1 --untimed /dev/video0"

# git
alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
# git log fancy
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --abbrev-commit"
alias git-remember="git config credential.helper store"
# taken from https://askubuntu.com/a/423705
alias watch-git-status="watch --color git -c color.status=always status -sb"

alias matrix="cmatrix -a"

# do not show line numbers
alias bat="bat --plain"
