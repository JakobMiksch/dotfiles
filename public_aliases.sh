alias c="code ."

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
mk (){
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
    echo -n $(pwd) | xclip -selection clipboard
}


# copy location by argument to clipboard
copy-loc (){
    readlink -f $1 | xargs echo -n | xclip -selection clipboard
}

alias webcam_overlay="mpv --no-border --on-all-workspaces --ontop --geometry=450 -osc=no --panscan=1 --untimed /dev/video0"

# git
alias ga="git add"
alias gc="git commit"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gcm="git commit --message"
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias grv="git remote --verbose"
# git log fancy
alias gl="git log --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr)%Creset%C(yellow)%d%Creset' --abbrev-commit"
alias git-remember="git config credential.helper store"
# taken from https://askubuntu.com/a/423705
alias git-watch-status="watch --color git -c color.status=always status -sb"

# clone a repository and move into
glone() {
    git clone "$1" && cd "$(basename "$1" .git)"
}

# create a backup of the current branch
# useful before rebasing
git-backup-branch (){
    TIMESTAMP=$(date +"%Y-%m-%dT%H%M")
    CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    BACKUP_BRANCH="$CURRENT_BRANCH"_"$TIMESTAMP"
    git branch "$CURRENT_BRANCH"_"$TIMESTAMP"
    echo "backed up '$CURRENT_BRANCH'"
    echo "to '$BACKUP_BRANCH'"
}

alias matrix="cmatrix -a"

# do not show line numbers
alias batcat="bat --plain"

# docker
alias d="docker"
alias dc="docker-compose"
alias dps="docker ps"
alias dexec="docker exec -i -t "

# httpie
alias http="noglob http"
