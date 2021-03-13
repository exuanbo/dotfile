export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="exuanbo"

plugins=(
  git
  brew
  extract
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

alias git-init="rm -rf .git && git init"

alias ip="curl -sH 'Accept: application/json' ifconfig.co | node <<< \"var o = \$(cat); console.log(JSON.stringify(o, null, 2));\""

alias ni="npm i --save-exact"
alias nid="npm i -D --save-exact"
alias nus="npm uninstall --save"
alias nt="npm test"

alias ya="yarn add -E"
alias yad="yarn add -D -E"
alias yr="yarn remove"
alias yf="rm -rf node_modules yarn.lock && yarn"
alias yt="yarn test"

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
    git-init
}

# === env ===

source $HOME/.env.sh

conda activate myenv

