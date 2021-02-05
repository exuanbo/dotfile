export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export ZSH="/Users/xuanbo/.oh-my-zsh"

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

alias git-init="rm -rf .git && git init"

# https://www.atlassian.com/git/tutorials/dotfiles
alias dot="/usr/bin/git --git-dir=/Users/xuanbo/.cfg/ --work-tree=/Users/xuanbo"

alias rebak="/Users/xuanbo/.repo_bak.sh"

alias ip="curl -sH 'Accept: application/json' ifconfig.co | node <<< \"var o = \$(cat); console.log(JSON.stringify(o, null, 2));\""

alias doom="/Users/xuanbo/.emacs.d/bin/doom"

alias ni="npm i --save-exact"
alias nid="npm i -D --save-exact"
alias nus="npm uninstall --save"

alias ya="yarn add -E"
alias yad="yarn add -D -E"
alias yr="yarn remove"
alias yf="rm -rf node_modules yarn.lock && yarn"
alias yt="yarn test"

alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891"

# === functions ===

function mkcd() {
    mkdir -p $1
    cd $1
}

function gccd() {
    git clone $1
    cd $(basename $1 .git)
}

function ts_starter() {
    git clone https://github.com/exuanbo/ts-starter.git $1
    cd $1
    rm -rf .git
    git init
}

# https://github.com/xcv58/zsh-lazy-load
function lazy_load() {
    local load_func=${1}
    local lazy_func="lazy_${load_func}"

    shift
    for i in ${@}; do
        alias ${i}="${lazy_func} ${i}"
    done

    eval "
    function ${lazy_func}() {
        unset -f ${lazy_func}
        lazy_load_clean $@
        eval ${load_func}
        unset -f ${load_func}
        eval \$@
    }
    "
}

function lazy_load_clean() {
    for i in ${@}; do
        unalias ${i}
    done
}

# === env ===

source /Users/xuanbo/.env.zsh

