export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="exuanbo"

plugins=(
  brew
  extract
  git
  osx
  vscode
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# === lang ===

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# === alias ===

alias dot="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

alias gpgpt="git push && git push --tags"

alias ni="npm i --save-exact"
alias nid="npm i -D --save-exact"
alias nus="npm uninstall --save"
alias nt="npm test"

alias doom="$HOME/.emacs.d/bin/doom"

# === function ===

function mkcd() {
    mkdir -p $1
    cd $1
}

function gccd() {
    git clone $1
    cd $(basename $1 .git)
}

function ts-starter() {
    git clone https://github.com/exuanbo/ts-starter.git $1
    cd $1
    rm -rf .git
    git init
    npm install
}

# === env ===

source $HOME/.env.sh

conda activate myenv
